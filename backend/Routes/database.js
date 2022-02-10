const mysql= require('mysql')
//require('dotenv').config()
let pool= mysql.createPool({
    connectionLimit: 3,
    host: 'localhost',
    user: 'root',
    password: `Iitjee@2019`,
    database: 'miniproj',
    multipleStatements: true
})

pool.getConnection((err, connection) => {
    if(err) {
        if(err.code === 'PROTOCOL_CONNECTION_LOST')
        {
            console.error('Database connection was closed.');
        }
        if(err.code === 'ER_CON_COUNT_ERROR')
        {
            console.error('Database has too many connections');
        }
        if(err.code === 'ECONNREFUSED')
        {
            console.error('Database connection was refused.');
        }
    }
    if(connection)
      connection.release()
    return
})

module.exports= pool