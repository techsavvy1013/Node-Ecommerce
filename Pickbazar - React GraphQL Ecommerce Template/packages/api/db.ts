var connectDB = () : any => {
    var MySql = require('sync-mysql');
    var connection = new MySql({
    host: 'localhost',
    user: 'admin',
    password: 'Viktor1@',
    database: 'pickbazar'
    });
    return connection;
};
export default connectDB;