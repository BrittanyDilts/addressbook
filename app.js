var express = require('express');
var mysql = require('mysql');
var bodyParser = require('body-parser');
// var knex = require('knex')({
//     client: 'mysql',
//     connection: {
//         host: '127.0.0.1',
//         user: 'root',
//         password: '',
//         database: 'addressDB'
//     }
// });

var app = express();

var addresses = [];
var connection = mysql.createConnection({
    //properties
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'addressDB'
});
connection.connect(function(error){
    if(!!error){
        console.log('Error connecting to mysql: ' + error);
    } else {
        console.log('Database connection successful');
    }
})

app.use('/', express.static(__dirname + '/public'));
app.use(bodyParser.json())
app.get('/addresses', function(request, response){
    console.log('Getting addresses...');

    connection.query("SELECT * FROM addressTable", function(error, rows, fields){
        if(error){
            console.log("Error in db query: " + error);
        } else {
            console.log("Successful query");
            addresses = JSON.parse(JSON.stringify(rows));
            response.send(addresses);
        }
    });
});

app.post('/addresses', function(request, response){
    console.log("Request body is " + request.body);
    connection.query("insert into addressTable set ?", request.body, function(error, result){
        if(error){ 
            console.log(error);
            return;
        }
        console.log(result);
    })
});

app.put('/addresses/:id', function(request, response){
    var id = request.params.id;
    console.log('Gonna update this guy: ' + request.body.co_name);
    connection.query("update addressTable set ? where addressTable.id = ?", [request.body, id], function(error, result){
        if(error){
            console.log(error);
            return;
        }
        console.log(result);
    });
});

app.listen(1337);
console.log('server running on port 1337');