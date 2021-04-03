var connectDB = () : any => {
    var MySql = require('sync-mysql');
    var connection = new MySql({
    host: 'localhost',
    user: 'root',
    password: '12345678',
    database: 'pickbazar'
    });
    return connection;
};
export default connectDB;