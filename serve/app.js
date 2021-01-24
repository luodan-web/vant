// 加载express模块
const express = require('express');
const server = express();
// 编码
// const MD5 = require('md5');
// 加载mysql数据库
const mysql = require("mysql");
// 数据库
const pool = mysql.createPool({
    // 服务器的地址
    host: '127.0.0.1',
    // 服务器的端口
    port: 3306,
    user: 'root',
    password: '',
    database: 'tcl',
    charset: 'utf8',
    // 最大连接数
    connectionLimit: 20
});
//引入bodyParser中间件
const bodyParser = require('body-Parser')
// 使用中间件将post请求解析为对象
server.use(bodyParser.urlencoded({
    extended: false
}));

// 托管静态资源
server.use("/public", express.static("./public"))

// 加载cors模块解决跨域时候导入
const cors = require('cors');
// 将cors作为EXPRESS服务器的中间件
server.use(cors({
    origin: ['http://localhost:8080', 'http://127.0.0.1:8080']
}));
// 轮播图
server.get("/carousel", (req, res) => {
    let sql = "select img from tcl_carousel"
    pool.query(sql, (err, result) => {
        if (err) throw err;

        res.send({ result: result });
        // console.log(result);
    })
})
//登录
server.post('/login',(req,res)=>{
    let password=req.body.password;
    console.log(password);
    let usrname=req.body.uname;
    console.log(usrname)
    let sql="select * from tcl_user where usrname=? and pw=? "
    pool.query(sql,[usrname,password],(err,result)=>{
        if(err) throw err;
        if(result.length==1){
            res.send({result:result,code:200})
        }else{
            res.send({result:result,code:201})
        }
        console.log(result);
    })
})
// 注册
server.post('/register',(req,res)=>{
    let phone=req.body.phone;
    console.log(phone);
    let password=req.body.password;
    let sql="select count(id) as count from tcl_user where usrname=?"
    pool.query(sql,[phone],(err,result)=>{
        if(err)throw err;
        if(result[0].count){
            res.send({code:201,result:result})
        }else{
            sql ='insert into tcl_user(usrname,pw) values(?,?)'
            pool.query(sql, [phone, password], (err, results) => {
                if (err) throw err;
                res.send({ code: 200, results: results })
            })
        }
    })
})
//分类的大图片
server.get("/picture", (req, res) => {
    let sql = "select * from dalei"
    pool.query(sql, (err, result) => {
        if (err) throw err;
        res.send({ result: result })
    })
})
//首页，分页的图片
server.get('/picture1', (req, res) => {
    let sql = 'select * from TCL'
    pool.query(sql, (err, result) => {
        if (err) throw err;
        let xiaodalei = req.query.indexs;
        // console.log(xiaodalei);
        let sqls = "select * from TCL where indexs=?";
        pool.query(sqls, [xiaodalei], (err, results) => {
            if (err) throw err;
            let a = results;
            res.send({ result: result, a: a})
        })
    })
})
//详情页
server.get("/details", (req, res) => {
    let lid = req.query.lid;
    console.log(lid)
    let sqles = "select * from TCL where lid=?";
    pool.query(sqles, [lid], (err, resultes) => {
        // console.log(resultes)
        if (err) throw err;
        res.send({ resultes: resultes})
    })
})
//搜索
server.get('/search',(req,res)=>{
    let value =req.query.value;
    console.log(value);
    let sql=`select * from TCL where dalei like "%${value}%"`;
    // let sql=`select * from TCL where dalei like "%{value}%"`;
    pool.query(sql,[value],(err,result)=>{
        console.log(result)
        if(err) throw err;
        res.send({result:result});
    })
})
// console.log('server....')
server.listen(3003);