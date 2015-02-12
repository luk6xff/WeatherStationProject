
var async = require('async'),
    bcrypt = require('bcrypt'),
    db = require("./db.js"),
    uuid = require('node-uuid'),
    backhelp = require("./backend_helpers.js");


exports.version = "0.1.0";

exports.user_by_uuid = function (uuid, callback) {
    if (!uuid)
        callback(backhelp.missing_data("uuid"));
    else
        user_by_field("user_uuid", uuid, callback);
};

exports.user_by_display_name = function (dn, callback) {
    if (!dn)
        callback(backhelp.missing_data("display_name"));
    else
        user_by_field("display_name", dn, callback);
}

exports.user_by_email_address = function (email, callback) {
    if (!email)
        callback(backhelp.missing_data("email"));
    else
        user_by_field("email_address", email, callback);
};




exports.register = function (email, display_name, password, callback) {
    var dbc;
    var userid;
    console.log("userREGISTERs_EEEEEEEE!!!");
    async.waterfall([
        // validate ze params
        console.log("9asdsadasdasdasdasdasdEEEEEEEE!!!");
        function (cb) {
            if (!email || email.indexOf("@") == -1)
                cb(backhelp.missing_data("email"));
            else if (!display_name)
                cb(backhelp.missing_data("display_name"));
            else if (!password)
                cb(backhelp.missing_data("password"));
            else
                cb(null);
            console.log("IIIIIIIIEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE!!!");
        },

        // get a connection
        function (cb) {
        	console.log("99999EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE!!!");
            db.db(cb);
            console.log("99999EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE!!!");
        },

        // generate a password hash
        function (dbclient, cb) {
            dbc = dbclient;
            console.log("777777EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE!!!");
            bcrypt.hash(password, 10, cb);
            console.log("88888EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE!!!");
        },

        // register the account.
        function (hash, cb) {
            userid = uuid();
            var now = Math.round((new Date()).getTime() / 1000);
            dbc.query(
                "INSERT INTO Users VALUES (?, ?, ?, ?, ?, NULL, 0)",
                [ userid, email.trim(), display_name.trim(), hash, now ],
                backhelp.mscb(cb));
        },

        // fetch and return the new user.
        function (results, cb) {
            exports.user_by_uuid(userid, cb);
        }
    ],

    function (err, user_data) {
        if (dbc) dbc.end();
        if (err) {
            if (err.code
                && (err.code == 'ER_DUP_KEYNAME'
                    || err.code == 'ER_EXISTS'
                    || err.code == 'ER_DUP_ENTRY'))
                callback(backhelp.user_already_registered());
            else
                callback (err);
        } else {
            callback(null, user_data);
        }
    });
};



function user_by_field (field, value, callback) {
    var dbc;
    async.waterfall([
        // get a connection
        function (cb) {
            db.db(cb);
        },

        // fetch the user.
        function (dbclient, cb) {
            dbc = dbclient;
            dbc.query(
                "SELECT * FROM Users WHERE " + field
                    + " = ? AND deleted = false",
                [ value ],
                backhelp.mscb(cb));
        },

        function (rows, cb) {
            if (!rows || rows.length == 0)
                cb(backhelp.no_such_user());
            else
                cb(null, rows[0]);
        }
    ],
    function (err, user_data) {
        if (dbc) dbc.end();
        if (err) {
            callback (err);
        } else {
            console.log(user_data);
            callback(null, user_data);
        }
    });
}