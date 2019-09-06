//wanqu_server 服务器
const express = require("express");
const bodyParser=require('body-parser');
const formidable = require("formidable");
const fs= require("fs");  

var app = express();
app.use(express.static("public"));
app.listen(3000,function(){
	console.log('服务器监听3000，脚手架监听8080')
});
const pool = require("./pool");
app.use(bodyParser.json());
//express mysql 参数 request;response
//跨域访问配置
//1:加载模块cors
const cors = require("cors");
//2:配置cors
app.use(cors({
	origin: ["http://127.0.0.1:8080",
		"http://localhost:8080"],//允许列表
	credentials: true   //是否验证
}))
//3:加载第三方模块express-session
const session = require("express-session");
//4:配置模块
app.use(session({
	secret: "128位随机字符串", //安全令牌--计算sessionID
	resave: false,   //请求保存  无需每次重新设置
	saveUninitialized: true, //初始化
	cookie: {
		maxAge: 1000 * 60 * 60 * 24  //session保存时间  1天
	}
}))
//功能零：测试获取图片
app.get('/test',(req,res)=>{
	var id = req.query.id;
	var sql = 'select * from jingdian_pic where id = ?'
	pool.query(sql,[id],(err,result)=>{
		if(err) throw err;
		if(result.length>0){
			res.send(result);
		}else{
			res.send({code:1,msg:'错误'})
		}
	})
})
// 杨见阳
//获取主页内容景点信息
app.get('/home',(req,res)=>{
	//1:获取查找景点的id
	//var id = req.query.id;
  //2:创建sql
  var sql = "SELECT * FROM jingdian";
  pool.query(sql,(err,result)=>{
			if(err)throw err;
      res.send(result);
  });
})

//获取当前登录游客的订单信息
app.get('/order',(req,res)=>{
	// 1:获取当前登录游客的id
	var uid = req.query.uid;
  // 2:创建sql
  var sql = "SELECT * FROM wanqu_order WHERE uid=?";
  pool.query(sql,[uid],(err,result)=>{
      if(err)throw err;
      res.send(result);
  });
})
// 添加评论
app.post('/addMessage/:uid/:aid',(req,res)=>{
  var uid=req.params.uid
  var aid=req.params.aid
  var dir=uid+aid;
  var id,uid,level,content;
  var time=new Date(); 
  fs.mkdirSync('./public/images/pinlun/xtgz/'+dir)

  var form = new formidable.IncomingForm();    //实例对象
	var targetFile = './public/images/pinlun/xtgz/'+dir;         //设置文件上传地址，文件需要自己提前创建好  文件名是uid+景点id  所以就只能评论一次
	form.keepExtensions = true;//保留后缀
	form.uploadDir=targetFile;    //设置文件路由地址
	form.parse(req,(err,fields,files)=>{ //解析req请求主体
    if(err) throw err;       //抛出错误   
     id=fields.id;
     level = fields.level;
     content = fields.content;
           //获取图片路径   并修改为数据库路劲格式
     var  file=fs.readdirSync(`./public/images/pinlun/xtgz/${dir}`)
     for(var key in file){
         file[key]="images/pinlun/xtgz/"+dir+'/'+file[key];
       }
     var sql = 'INSERT INTO message VALUES(null,?,?,?,?,?,?,?,?,?)'
     pool.query(sql,[uid,level,time,content,file[0],file[1],file[2],file[3],id],(err,result)=>{
       if(err) throw err 
       if(result.affectedRows>0){
          res.send({code:1,msg:'评论成功'})
       }
   }) 
     var sql1 = 'UPDATE wanqu_order SET evaluate="已评价" WHERE id=?'
     pool.query(sql1,[id],(err,result)=>{
         if(err) throw err
      }) 
  })
})
app.get('/evaluateChange',(req,res)=>{
  var id=req.query.id;
  var uid=req.query.uid;
  var sql = 'SELECT mid FROM message WHERE id=? AND uid=?';
  pool.query(sql,[id,uid],(err,result)=>{
    if(err) throw err
    if(result.length>0){
      res.send({code:1,msg:'请评价'})
    }else{
      res.send({code:-1,msg:'已点评'})
    }
  })
})
// 史前风
//功能1：用户注册
app.get("/register",(req,res)=>{
  //1:参数 name pwd
  var uname=req.query.name;
  var password=req.query.pwd;
  //1.1:验证
  var reg=/^[a-z0-9_]{5,12}$/;
  if(!reg.test(uname)){
  res.send({
  code:-1,
  msg:"用户名格式不正确"
  });
  return;
  }
  //2：sql INSERT INTO 如果验证正确就把注册信息插入数据库
  var sql="INSERT INTO user(uid,uname,password) VALUES (null,?,md5(?))";
  pool.query(sql,[uname,password],(err,result)=>{
  if(err)throw err;
  if(result.affectedRows>0){
  res.send({code:1,msg:"注册成功"});
  }else{
  res.send({code:-1,msg:"注册失败"});
  }
  })
  //返回值q
  })

//功能2：用户名是否存在
app.get("/existsname",(req,res)=>{
  //1:获取参数
  var uname=req.query.name;
  //2:sql name
  var sql =" SELECT count(uid) as c from user WHERE uname=?";
  pool.query(sql,[uname],(err,result)=>{
    if(err)throw err;
    if(result[0].c>0){
      res.send({code:-1,msg:"用户名已被占用"});
    }else{
      res.send({code:1,msg:"欢迎使用"});
    }
  })
});
//功能3：用户登陆
app.get("/login",(req,res)=>{
  //1:获取请求参数
  var uname=req.query.name;
  var password=req.query.pwd;
  //sql查询
  var sql="SELECT uid from user WHERE uname=? AND password=md5(?)";
  pool.query(sql,[uname,password],(err,result)=>{
    if(err)throw err;
    if(result.length>0){
      // 查找成功，返回结果
      res.send({code:1,msg:"登录成功",result})
    }else{
      res.send({code:-1,msg:"用户名或密码有误！"})
    }
  })
})

//功能4：留言table数据获取
app.get("/tabList",(req,res)=>{
  //查询数据库，并将表相应给浏览器
  var sql="SELECT * FROM message";
  pool.query(sql,(err,result)=>{
    if(err)throw err;
    if(result.length>0){
      res.send(result);
    }
  })
})
//功能5：景点数据获取和分页
app.get("/jdList",(req,res)=>{
  //1:参数 pno 页码;pageSize 页大小
  var pno = req.query.pno;
  var pageSize = req.query.pageSize;
  //1.2:默认值
  if(!pno){
  pno = 1;
  }
  if(!pageSize){
  pageSize = 8;
  }
  //2:验证正则表达式
  var reg = /^[0-9]{1,}$/;
  if(!reg.test(pno)){
  res.send({code:-1,msg:"页码格式不正确"});
  return;
  }
  if(!reg.test(pageSize)){
  res.send({code:-2,msg:"页大小格式不正确"});
  return;
  }
  //3:创建sql
  // 查询总页数
  var sql = "SELECT count(jingdian_id) as c FROM jingdian";
  var progress = 0; //sql执行进度
  obj = {code:1};
  pool.query(sql,(err,result)=>{
  if(err)throw err;
  //console.log(result[0].c);
  var pageCount = Math.ceil(result[0].c/pageSize);
  obj.pageCount = pageCount;
  progress += 50;
  if(progress == 100){
  res.send(obj);
  }
  });
  // 查询当前页内容
  var sql=" SELECT jingdian_id,title,subtitle,price,pic";
  sql +=" FROM jingdian";
  sql +=" LIMIT ?,?"
  var offset = parseInt((pno-1)*pageSize);
  pageSize = parseInt(pageSize);
  pool.query(sql,[offset,pageSize],(err,result)=>{
  if(err)throw err;
  //console.log(result);
  obj.data = result;
  progress+=50;
  if(progress==100){
  res.send(obj);
  }
  }); 
  })

//功能6：留言分页
app.get("/getLiu",(req,res)=>{
  //1:参数       pno 页码;pageSize 页大小
  var pno = req.query.pno;
  var pageSize = req.query.pageSize;
  //1.2:默认值
  if(!pno){
    pno = 1;
  }
  if(!pageSize){
    pageSize = 4;
  }
  //2:验证正则表达式
  var reg = /^[0-9]{1,}$/;
  if(!reg.test(pno)){
     res.send({code:-1,msg:"页码格式不正确"});
     return;
  }
  if(!reg.test(pageSize)){
    res.send({code:-2,msg:"页大小格式不正确"});
    return;
  }
  //3:创建sql
  //  查询总页数
  var sql = "SELECT count(id) as c FROM message";
  var progress = 0; //sql执行进度
  obj = {code:1};
  pool.query(sql,(err,result)=>{
       if(err)throw err;
       var pageCount = Math.ceil(result[0].c/pageSize);
       obj.pageCount = pageCount;
       progress += 50;
       if(progress == 100){
        res.send(obj);
       }
  });
  //  查询当前页内容
var sql=" SELECT mid,uid,time,content,level";
    sql +=" FROM message";
    sql +=" LIMIT ?,?"
var offset = parseInt((pno-1)*pageSize);
pageSize = parseInt(pageSize);
  pool.query(sql,[offset,pageSize],(err,result)=>{
    if(err)throw err;
    obj.data = result;
    progress+=50;
    if(progress==100){
      res.send(obj);
    }
  }); 
})
//功能7：后台登陆验证
app.get("/HTlogin",(req,res)=>{
  //1:获取请求参数
  var uname=req.query.name;
  var password=req.query.pwd;
  //sql查询
  var sql="SELECT level from user WHERE uname=? AND password=md5(?)";
  pool.query(sql,[uname,password],(err,result)=>{
  if(err)throw err;
  if(result[0].level>0){
  //如果匹配成功就将id保存到session 中
  // console.log(result[0].level);
  res.send({code:1,msg:"登陆成功"})
  }else{
  res.send({code:-1,msg:"用户权限不够"})
  }
  })
  })
// 高勇   
//轮播
app.get("/imgs",(req,res)=>{
	var id=req.query.id;
	var sql="SELECT * FROM jingdian_pic WHERE id=?";
	pool.query(sql,[id],(err,result)=>{
		if(err) throw err;
		res.send( result.slice(0,5) );
	})
})
//资料
app.get("/datas",(req,res)=>{
	var sql = "SELECT * FROM jingdian WHERE id=?"
	var id = req.query.id;
	pool.query(sql,[id],(err,result)=>{
		if(err) throw err;
		res.send(result);
	})
})
//详情
app.get("/xiangx",(req,res)=>{
	var sql = "SELECT * FROM jingdian_pic WHERE id=?"
	var id = req.query.id;
	pool.query(sql,[id],(err,result)=>{
		res.send( result.slice(5));
	})
})
// 评论区
app.get("/pinl",(req,res)=>{
    var sql = "SELECT u.uname,m.level,m.time,m.content,m.id,m.img1,m.img2,m.img3,m.img4 FROM user u,message m WHERE u.uid = m.uid AND m.id=?";
    var id = req.query.id;
    pool.query(sql,[id],(err,result)=>{
      if(err) throw err;
      res.send(result);
    })
  })
// 汪睿
app.get("/getBanners",(req,res)=>{
  var sql="SELECT pic FROM jingdian WHERE jingdian_id>27&&jingdian_id<32";
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    res.send(result);
  })
})
app.get("/orderDetails",(req,res)=>{
  var aid = req.query.aid;
  var sql="SELECT * from wanqu_order WHERE aid=?";
  pool.query(sql,[aid],(err,result)=>{
    if (err) throw err;
    res.send(result);
  })
})
// 薛政
//分页查询
//功能二:新闻分页显示
app.get("/jingdianfenye",(req,res)=>{
	//1:参数       pno 页码;pageSize 页大小
	var pno = req.query.pno;
	var pageSize = req.query.pageSize;
	var guanjianzi = req.query.guanjianzi;
	guanjianzi='%'+guanjianzi+'%';
	//1.2:默认值
	if(!pno){
	  pno = 1;
	}
	if(!pageSize){
	  pageSize = 14;
	}
	//2:验证正则表达式
	var reg = /^[0-9]{1,}$/;
	if(!reg.test(pno)){
	   res.send({code:-1,msg:"页码格式不正确"});
	   return;
	}
	if(!reg.test(pageSize)){
	  res.send({code:-2,msg:"页大小格式不正确"});
	  return;
	}

	//3:创建sql
	//  查询总页数
	var sql = "SELECT count(id) as c FROM jingdian WHERE title like ?";
	var progress = 0; //sql执行进度
	obj = {code:1};
	pool.query(sql,[guanjianzi],(err,result)=>{
		 if(err)throw err;
		 var pageCount = Math.ceil(result[0].c/pageSize);
		 obj.pageCount = pageCount;
		 progress += 50;                            //sql执行进度
		 if(progress == 100){
		  res.send(obj);
		 }
	});

	//  查询当前页内容
  var sql="SELECT * FROM jingdian ";
	  sql +=" WHERE title like ? LIMIT ?,? "
  var offset = parseInt((pno-1)*pageSize);
  pageSize = parseInt(pageSize);
	pool.query(sql,[guanjianzi,offset,pageSize],(err,result)=>{
	  if(err)throw err;
	  obj.data = result;
	  progress+=50;
	  if(progress==100){
		res.send(obj);
	  }
	}); 
  })
//   nav导航栏的范围查询 周边游 国内游 国外游 跟团游 
app.get('/nav',(req,res)=>{
	var fanweiStart = req.query.fanweiStart;
	var fanweiStop = req.query.fanweiStop;
	var sql='SELECT * FROM `jingdian` WHERE id between ? and ?';
	pool.query(sql,[fanweiStart,fanweiStop],(err,result)=>{
		if(err) throw err;
		if(result.length>0){
			res.send(result);
		}else{
			res.send({code:-1,msg:'没有匹配的景点'});
		}
	})

})

// 提交订单获取当前景点信息
// 参考高勇写   line246   datas
// 查找当前登录用户的基本信息
app.get('/user',(req,res)=>{
  var uid = req.query.uid;
  var sql = 'SELECT * FROM user WHERE uid = ?'
  pool.query(sql,[uid],(err,result)=>{
    if(err) throw err;
    if(result.length>0){
      res.send(result)
    }else{
      res.send({code:-1})
    }
  })
})
//提交订单接口
app.get('/submit',(req,res)=>{
	var id = req.query.id;
	var price = req.query.price;
	var jingdian_title = req.query.jingdian_title;
	var uid = req.query.uid;
  var jingdian_time = req.query.jingdian_time; 
  console.log(jingdian_time)            //
	// var order_time = req.query.order_time;                   //下单日期不需要
	// var name = req.query.name;                               //联系人姓名
	var phone = req.query.phone;
	var count = req.query.count;
	var client_name = req.query.client_name;
	var IDnumber = req.query.IDnumber;
	var chuxing_phone = req.query.chuxing_phone;

	var sql=`INSERT INTO wanqu_order VALUES(null,"未使用",?,now(),?,?,?,?,?,?,'点评',?,?,?);`;	
	pool.query(sql,[jingdian_time,id,jingdian_title,count,price,client_name,uid,phone,IDnumber,chuxing_phone],(err,result)=>{
		if(err) throw err;
		if(result.affectedRows>0){
			res.send({code:1,msg:'提交成功'});
		}else{
			res.send({code:-1,msg:'提交失败'});
		}
	})
})
//攻略   陈焕武   莫岭红
//功能一  获取头部背景  标题
app.get("/getbg", (req, res) => {
  var cid = req.query.cid * 1
  //默认uid=1
  if (!cid) {
    cid = 1
  }
  var sql = "SELECT * FROM `commenta` WHERE cid=?";
  var sql1="update commenta set point=? where cid=?"
  pool.query(sql, [cid], (err, result) => {
    if (err) throw err;
    //记录浏览次数
    var point=result[0].point*1+1;
    pool.query(sql1,[point,cid],(err,result)=>{
      if(err) throw err;
    })

    if (result.length > 0)
      res.send({ code: 1, data: result })
  })
})
//功能二  获取主体内容
app.get("/getcontent", (req, res) => {
  var cid = req.query.cid * 1;
  if (!cid) {
    cid = 1
  }
  //默认uid=1 cid 是1  后续需要进行修改
  var sql = `SELECT topic_small,img,city,details FROM commentb WHERE cid=?`;
  pool.query(sql, [cid], (err, result) => {
    if (err) throw err;
    if (result.length > 0) {
      res.send({ code: 1, data: result })
    }
  })
})
//攻略详情页左侧
app.get("/gonglue_tuijian_left", (req, res) => {
  //创建sql
  var sql = "SELECT * ";
  sql += "FROM gonglue_tuijian_left";
  pool.query(sql, (err, result) => {
    if (err) throw err;
    var rows = result
    res.send(rows)
  })

})
//攻略-详情
app.get("/gonglue-x", (req, res) => {
  //创建sql查询
  var sql = "SELECT * ";
  sql += "FROM commenta";
  pool.query(sql, (err, result) => {
    if (err) throw err;
    var rows = result
    res.send(rows)
  })
})
//攻略推荐轮播
app.get("/gonglue_tuijian_right", (req, res) => {
  //创建sql
  var sql = "SELECT * ";
  sql += "FROM gonglue_tuijian_right";
  pool.query(sql, (err, result) => {
    if (err) throw err;
    var rows = result
    res.send(rows)
  })
})
//攻略达人
app.get("/gonglue_daren", (req, res) => {
  //创建sql
  var sql = "SELECT * ";
  sql += "FROM gonglue_daren";
  pool.query(sql, (err, result) => {
    if (err) throw err;
    var rows = result
    res.send(rows)
  })
})
//攻略游记
app.get("/gonglue_youji", (req, res) => {
  //创建sql
  var sql = "SELECT * ";
  sql += "FROM gonglue_youji";
  pool.query(sql, (err, result) => {
    if (err) throw err;
    var rows = result;
    res.send(rows);
  });
});
// 莫玲红

//功能7：用户会员数据获取
app.get("/userlist",(req,res)=>{
  //查询数据库，并将表格响应数据发送给浏览器
  var pno = req.query.pno;
  var pageSize = req.query.pageSize;
  //1.2:默认值
  if(!pno){
    pno = 1;
  }
  if(!pageSize){
    pageSize = 8;
  }
  //2:验证正则表达式
  var reg = /^[0-9]{1,}$/;
  if(!reg.test(pno)){
     res.send({code:-1,msg:"页码格式不正确"});
     return;
  }
  if(!reg.test(pageSize)){
    res.send({code:-2,msg:"页大小格式不正确"});
    return;
  }
  //3:创建sql
  //  查询总页数
  var sql = "SELECT count(uid) as c FROM user";
  var progress = 0; //sql执行进度
  obj = {code:1};
  pool.query(sql,(err,result)=>{
       if(err)throw err;
       //console.log(result[0].c);
       var pageCount = Math.ceil(result[0].c/pageSize);
       obj.pageCount = pageCount;
      //  console.log(pageCount)
       progress += 50;
       if(progress == 100){
        res.send(obj);
       }
  });
  //  查询当前页内容
var sql=" SELECT * FROM user LIMIT ?,?";
var offset = parseInt((pno-1)*pageSize);
pageSize = parseInt(pageSize);
  pool.query(sql,[offset,pageSize],(err,result)=>{
    if(err)throw err;
    //console.log(result);
    obj.data = result;
    progress+=50;
    if(progress==100){
      res.send(obj);
    }
  });
})
//功能8：用户会员数据删除
app.get("/deleteuser",(req,res)=>{
  //查询数据库，并将表格响应数据发送给浏览器
  var uid=req.query.uid;
  var sql="delete FROM  user where uid=?";
  pool.query(sql,[uid],(err,result)=>{
    if(err) throw err;
    if(result.affectedRows>0){
      res.send({code:1,msg:"删除成功"});
    }
  })
})
//功能9：用户会员数据更新
app.post("/update",(req,res)=>{
  //修改数据库
  //并将表格响应数据发送给浏览器
  var obj=req.body
  var $uname=obj.uname;
  var $gender=obj.gender;
  var $email=obj.email;
  var $phone=obj.phone;
  var $uid=obj.uid;
  var $level=obj.level;
  var sql="UPDATE user SET uname=? ,email=?,phone=?,level=? ,gender=? where uid=?"
  pool.query(sql,[$uname,$email,$phone,$level,$gender,$uid],(err,result)=>{
    if(err) throw err;
	//判断是否更改成功
	if(result.affectedRows>0){
	  res.send({code:200,msg:'update suc'});
	}else{
	  res.send({code:301,msg:'update err'});
	}
  });


})
//功能10：订单分页
app.get("/getorder",(req,res)=>{
  //1:参数       pno 页码;pageSize 页大小
  var pno = req.query.pno;
  var pageSize = req.query.pageSize;
  //1.2:默认值
  if(!pno){
    pno = 1;
  }
  if(!pageSize){
    pageSize = 8;
  }
  //2:验证正则表达式
  var reg = /^[0-9]{1,}$/;
  if(!reg.test(pno)){
     res.send({code:-1,msg:"页码格式不正确"});
     return;
  }
  if(!reg.test(pageSize)){
    res.send({code:-2,msg:"页大小格式不正确"});
    return;
  }

  //3:创建sql
  //  查询总页数
  var sql = "SELECT count(aid) as c FROM wanqu_order";
  var progress = 0; //sql执行进度
  obj = {code:1};
  pool.query(sql,(err,result)=>{
       if(err)throw err;
       //console.log(result[0].c);
       var pageCount = Math.ceil(result[0].c/pageSize);
       obj.pageCount = pageCount;
      //  console.log(pageCount)
       progress += 50;
       if(progress == 100){
        res.send(obj);
       }
  });
  //  查询当前页内容
var sql=" SELECT aid,status,order_time,jingdian_title,count,price,client_name,uid,jingdian_time";
    sql +=" FROM wanqu_order";
    sql +=" LIMIT ?,?"
var offset = parseInt((pno-1)*pageSize);
pageSize = parseInt(pageSize);
  pool.query(sql,[offset,pageSize],(err,result)=>{
    if(err)throw err;
    //console.log(result);
    obj.data = result;
    progress+=50;
    if(progress==100){
      res.send(obj);
    }
  }); 
})

