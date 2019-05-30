<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head><title>菜单管理页面</title>
  <style> 
a{ text-decoration:none}  
/*  去掉超链接下划线 */
</style> 

<script type="text/javascript">  
  function ShowElement(element)
{
var oldhtml = element.innerHTML;
var newobj = document.createElement('input');
//创建新的input元素
newobj.type = 'text';
//为新增元素添加类型
newobj.onblur = function(){
element.innerHTML = this.value ? this.value : oldhtml;
//当触发时判断新增元素值是否为空，为空则不修改，并返回原有值 
}
element.innerHTML = '';
element.appendChild(newobj);
newobj.focus();
}
</script>
<!-- 双击文本变成可编辑状态 -->

 <script type="text/javascript">  
 function getFileUrl(sourceId) {  
                var url;    //检查各浏览器是否兼容使用
                if (navigator.userAgent.indexOf("MSIE")>=1) { // IE  
                    url = document.getElementById(sourceId).value;  
                } else if(navigator.userAgent.indexOf("Firefox")>0) { // Firefox  
                    url = window.URL.createObjectURL(document.getElementById(sourceId).files.item(0));  
                } else if(navigator.userAgent.indexOf("Chrome")>0) { // Chrome  
                    url = window.URL.createObjectURL(document.getElementById(sourceId).files.item(0));  
                }  
                return url;  
            }  
  function preImg(sourceId, targetId) {   //更换图片路径
                var url = getFileUrl(sourceId);   
                var imgPre = document.getElementById(targetId);   
                imgPre.src = url;   
            }   
        </script> 

  </head> 
  <body>
  
  <div>
　　 <img alt="汉堡图片" src="1.png" width="100%" > 
<!-- 	最上面汉堡图片 -->

	<div style="position:absolute;left:60px; top:53px">
  	<font
  	 size="6">预点餐系统
  	</font>
  	</div>
<!-- 	 文字 -->
  	 <div>
  	<img alt="横条" src="2.jpg" width="100%">
  	 <img alt="" src="4.jpg" width="200" height="550" >
  	</div>
<!--   	橙色横条 -->
	<div style="position:absolute;left:26px; top:143px">
	 <img alt="菜单" src="3.jpg" width="160" >
	 </div>
<!-- 	 菜单模块图片 -->

	<div style="position:absolute;left:1000px; top:135px">
	当前时间：
	<script language=JavaScript> 
	today=new Date(); 
	document.write(today.getFullYear(),"年", today.getMonth()+1,"月", today.getDate(),"日 " ,today.getHours(),"时",today.getMinutes(),"分"); 
	</script>
	</div>
<!-- 	当前时间模块 -->
	 <div style="position:absolute;left:280px; top:135px">
	  <a href=""><img alt="" src="5.png" width="20" ></a>
	 管理员XX
	 </div>
<!-- 	 管理员图标及文字 -->
	 
	 <div style="position:absolute;left:40px; top:200px">
	  <a href=""><img alt="" src="7.jpg" width="140" height="38" >
	 </a>
	 </div>
<!-- 	 订单模块图片 -->
	 <div style="position:absolute;left:40px; top:250px">
	  <a href=""><img alt="" src="9.jpg" width="140" height="38" >
	 </a>
	 </div>
<!-- 	 菜单模块图片 -->
	 <div style="position:absolute;left:80px; top:300px">
  	<a href="" ><font
  	 size="2" color="#FFF"> 小吃类
  	</font>
  	 </a>
  	</div>
  	
  	<div style="position:absolute;left:80px; top:320px">
  	<a href="" ><font
  	 size="2" color="#000000"> 甜品类
  	</font>
  	 </a>
  	</div>
  	
  	<div style="position:absolute;left:80px; top:340px">
  	<a href="" ><font
  	 size="2" color="#000000" > 饮品类
  	</font>
  	 </a>
  	</div>
  	
  	<div style="position:absolute;left:80px; top:360px">
  	<a href="" ><font
  	 size="2" color="#000000"> 主食类
  	</font>
  	 </a>
  	</div>
<!--   	菜单模块子模块 -->

<div style="position:absolute;left:40px; top:380px">
	 <a href=""> <img alt="" src="8.jpg" width="140" height="38" >
	 </a>
	 </div>
<!-- 	 员工管理模块 -->

 <div style="position:absolute;  width:70%;  height:90px; overflow:auto ; background: #FFED97; left:350px; top:200px; ">
<!-- 	  <img alt="" src="6.png" width="800" height="500 " >    -->
 11111111111<br>
  2222<br>
  333<br>
    4<br>
   5<br>
      6<br>
      7<br>
        8<br>
         9<br>
          10<br>
           11<br>
	         
	 </div>
<!-- 	 橙色背景模板 -->

  	<div style="position:absolute;left:450px; top:200px">
  	<p ondblclick="ShowElement(this)"> 菜名1
  	</p>
  	</div>

	<div style="position:absolute;left:400px; top:260px">
  	 	<label for="file"><img name="add" id="add" alt="" src="add.jpg" width="140" height="140" >
	 </label>
  	<input type="file" onchange="preImg(this.id,'add')" id="file" name="file" style="display: none"/>
  	</div>

  	
 
  </div>
  	
  
  
  </body>
</html>
