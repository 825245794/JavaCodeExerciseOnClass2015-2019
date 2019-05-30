<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String username;

try{
username = session.getAttribute("username").toString();
}
catch(Exception e){
username = "admin";
}
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>用户账户</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--Link CSS Start-->		
	<jsp:include page="quote_css.jsp" flush="true"></jsp:include>
    <!--End of Link CSS -->	
  </head>
 <body>
       <!--Header Start Area-->
	   <jsp:include page="header.jsp" flush="true"></jsp:include>
       <!--End of Header Area-->
        <!--Breadcrumb Start-->
        <div class="breadcrumb-area">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <ul class="breadcrumb">
                            <li><a href="user/index.jsp"><i class="fa fa-home"></i></a></li>
                            <li><a href="#">账户</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!--End of Breadcrumb-->
        <!-- Account Area start -->
        <div class="account-area">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="account-link-list">
                            <h1>我的账户</h1>
                            <p class="account-info">欢迎你<%= username %> ,在这里可以管理你的个人信息和订单</p>
                            <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                                <div class="panel panel-default">
                                    <div class="panel-heading" role="tab" id="headingOne">
                                        <h4 class="panel-title">
                                            <a role="button" data-toggle="collapse" data-parent="#accordion" href="#order">                                         
                                                <i class="fa fa-list-ol"></i><span>账单详情</span>
                                            </a>
                                        </h4>
                                    </div>
                                    <div id="order" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                                        <div class="panel-body">
                                            <p class="panel-title">已创建的账单</p>
                                            <div id="order-history">
			                                    <p class="warning">你尚未有任何账单</p>
	                                       </div>                                    
                                        </div>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading" role="tab" id="headingTwo">
                                        <h4 class="panel-title">
                                            <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#credit">
                                                <i class="fa fa-file-o"></i><span>我的信用等级</span>
                                            </a>
                                        </h4>
                                    </div>
                                    <div id="credit" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                                        <div class="panel-body">
                                            <p class="panel-title">信用等级会在你每次完成购物时自动评估 </p>
                                            <div id="order-history">
			                                    <p class="warning">你尚未评估信用等级</p>
	                                       </div>                                    
                                        </div>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading" role="tab" id="headingThree">
                                        <h4 class="panel-title">
                                            <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#address">
                                                <i class="fa fa-building"></i><span>我的地址</span>
                                            </a>
                                        </h4>
                                    </div>
                                    <div id="address" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                                        <div class="panel-body">
                                            <p>设置你的收货地址</p>
                                            <p class="panel-title">你的地址列表 </p>
                                            <p>请按下 "更新" 按钮以完成地址修改</p>
                                            <div class="row">
                                                <div class="col-lg-6 col-md-8 col-sm-10 address">
                                                    <ul class="address-information">
                                                        <li><h3>我的地址</h3></li>
                                                        <li>
                                                            <span class="address-name">沙</span>
                                                            <span class="address-name">新洋</span>
                                                        </li>
                                                        <li>
                                                            <span class="address-company">专家</span>
                                                        </li>
                                                        <li>
                                                            <span class="address-address1">中国</span>
                                                        </li>
                                                    
                                                        <li>
                                                            <span class="address-city">辽宁省</span>
                                                        </li>
                                                     
                                                        <li>
                                                            <span>大连市</span>
                                                        </li>
                                                        <li>
                                                            <span class="phone">2334234</span>
                                                        </li>
                                                        <li>
                                                            <span class="phone-mobile">454565768678</span>
                                                        </li>
                                                        <li class="address-update">
                                                            <a href="#" class="btn btn-default"><span>更新</span></a>
                                                            <a href="#" class="btn btn-default delete"><span>删除</span></a>
                                                        </li>
                                                    </ul>
                                                    <div class="clearfix"></div>
                                                    <p href="#" id="shipping-box" class="btn btn-default"><span>新增地址</span></p>
                                                    <div class="clearfix"></div>
                                                    <div id="shipping-box-info">
                                                        <p class="panel-title">请完成你的地址信息</p>
                                                        <div class="row">
                                                            <div class="form-group required">
                                                                <label class="col-md-3 col-sm-12 control-label">姓氏</label>
                                                                <div class="col-md-9 col-sm-12">
                                                                    <input type="text" class="form-control" id="input-payment-fname" placeholder="姓氏" value="" name="firstname">
                                                                </div>
                                                            </div>
                                                            <div class="form-group required">
                                                                <label class="col-md-3 col-sm-12 control-label">名字</label>
                                                                <div class="col-md-9 col-sm-12">
                                                                    <input type="text" class="form-control" id="input-payment-lastname" placeholder="名字" value="" name="lastname">
                                                                </div>
                                                            </div>
                                                           
                                                           
                                                            <div class="form-group required">
                                                                <label class="col-md-3 col-sm-12 control-label">城市</label>
                                                                <div class="col-md-9 col-sm-12">
                                                                    <input type="text" class="form-control" id="input-city" placeholder="城市" value="" name="city">
                                                                </div>
                                                            </div>
                                                            <div class="form-group required">
                                                                <label class="col-md-3 col-sm-12 control-label">邮政编码</label>
                                                                <div class="col-md-9 col-sm-12">
                                                                    <input type="text" class="form-control" id="input-payment" placeholder="邮政编码" value="" name="postcode">
                                                                </div>
                                                            </div>
                                                            <div class="form-group required">
                                                                <label class="col-md-3 col-sm-12 control-label">手机号码</label>
                                                                <div class="col-md-9 col-sm-12">
                                                                    <input type="text" class="form-control" id="input-payment" placeholder="手机号码" value="" name="phone">
                                                                </div>
                                                            </div>
                                                            <div class="form-group required">
                                                                <label class="col-md-3 col-sm-12 control-label"> 国家 </label>
                                                                <div class="col-md-9 col-sm-12">
                                                                    <select class="form-control" id="billing-country" name="country_id">
                                                                        <option value=""> --- 请选择 --- </option>
                                                                        <option value="1">中国</option>
                                                                    </select> 
                                                                </div>
                                                            </div>
                                                            <div class="form-group required">
                                                                <label class="col-md-3 col-sm-12 control-label"> 地区 </label>
                                                                <div class="col-md-9 col-sm-12">
                                                                    <select class="form-control" id="billing-city" name="country">
                                                                        <option value=""> --- 请选择 --- </option>
                                                                        <option value="1">北京市</option>
                                                                        <option value="2">天津市</option>
                                                                        <option value="3">上海市</option>
                                                                        <option value="4">辽宁省</option>
                                                                        <option value="5">广东省</option>
                                                                        <option value="6">湖南省</option>
                                                                        <option value="7">河南省</option>
                                                                        <option value="8">青海省</option>
                                                                        <option value="9">安徽省</option>
                                                                        <option value="10">甘肃省</option>
                                                                        <option value="11">浙江省</option>
                                                                        <option value="12">四川省</option>
                                                                    </select> 
                                                                </div>
                                                            </div>
                                                            <div class="form-group required">
                                                                <label class="col-md-3 col-sm-12 control-label">详细地址</label>
                                                                <div class="col-md-9 col-sm-12">
                                                                    <textarea rows="10" id="input-enquiry" class="form-control" name="enquiry"></textarea>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-12">
                                                                <div class="buttons">
                                                                    <div class="pull-right"><a class="btn btn-primary" href="#">继续</a></div>
                                                                </div>
                                                            </div>
                                                        </div>       
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading" role="tab" id="headingFour">
                                        <h4 class="panel-title">
                                            <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#information">
                                                <i class="fa fa-user"></i><span>个人信息</span>
                                            </a>
                                        </h4>
                                    </div>
                                    <div id="information" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFour">
                                        <div class="panel-body">
                                            <div class="row">   
                                                <div class="personal-info col-lg-6 col-md-8 col-sm-10">
                                                    <p class="panel-title">请按下 "保存" 以更改你的个人信息 </p>
                                                    <div id="account-info">
                                                        <div class="row">
                                                            <div class="form-group required fix">
                                                                <label class="col-md-3 col-sm-12 control-label">性别</label>
                                                                <div class="col-md-9 col-sm-12">
                                                                    <div class="radio">
                                                                        <label>
                                                                            <span class="social_title">
                                                                                <input type="radio" name="gender" value="male">男性
                                                                            </span>
                                                                            <span class="social_title">
                                                                                <input type="radio" name="gender" value="female">女性
                                                                            </span>
                                                                        </label>
                                                                    </div>

                                                                </div>
                                                            </div>
                                                            <div class="form-group required">
                                                                <label class="col-md-3 col-sm-12 control-label">姓氏</label>
                                                                <div class="col-md-9 col-sm-12">
                                                                    <input type="text" class="form-control" id="input-payment-fname" placeholder="姓氏" value="" name="firstname">
                                                                </div>
                                                            </div>
                                                            <div class="form-group required">
                                                                <label class="col-md-3 col-sm-12 control-label">名字</label>
                                                                <div class="col-md-9 col-sm-12">
                                                                    <input type="text" class="form-control" id="input-payment-lastname" placeholder="名字" value="" name="lastname">
                                                                </div>
                                                            </div>
                                                            <div class="form-group required">
                                                                <label class="col-md-3 col-sm-12 control-label">Email</label>
                                                                <div class="col-md-9 col-sm-12">
                                                                    <input type="text" class="form-control" id="email" placeholder="Email" value="" name="email">
                                                                </div>
                                                            </div>
                                                            <div class="form-group required">
                                                                <label class="col-md-3 col-sm-12 col-xs-12 control-label"> 出生日期 </label>
                                                                <div class="col-md-3 col-sm-3 col-xs-4">
                                                                 
                                                                     <select class="form-control" id="birth-year" name="birth_year">
                                                                        <option value="">-</option>
                                                                        <option selected="selected" value="2016">2016  </option>
                                                                        <option value="2015">2015  </option>
                                                                        <option value="2014">2014  </option>
                                                                        <option value="2013">2013  </option>
                                                                        <option value="2012">2012  </option>
                                                                        <option value="2011">2011  </option>
                                                                        <option value="2010">2010  </option>
                                                                        <option value="2009">2009  </option>
                                                                        <option value="2008">2008  </option>
                                                                        <option value="2007">2007  </option>
                                                                        <option value="2006">2006  </option>
                                                                        <option value="2005">2005  </option>
                                                                        <option value="2004">2004  </option>
                                                                        <option value="2003">2003  </option>
                                                                        <option value="2002">2002  </option>
                                                                        <option value="2001">2001  </option>
                                                                        <option value="2000">2000  </option>
                                                                        <option value="1999">1999  </option>
                                                                        <option value="1998">1998  </option>
                                                                        <option value="1997">1997  </option>
                                                                        <option value="1996">1996  </option>
                                                                        <option value="1995">1995  </option>
                                                                        <option value="1994">1994  </option>
                                                                        <option value="1993">1993  </option>
                                                                        <option value="1992">1992  </option>
                                                                        <option value="1991">1991  </option>
                                                                        <option value="1990">1990  </option>
                                                                        <option value="1989">1989  </option>
                                                                        <option value="1988">1988  </option>
                                                                        <option value="1987">1987  </option>
                                                                        <option value="1986">1986  </option>
                                                                        <option value="1985">1985  </option>
                                                                        <option value="1984">1984  </option>
                                                                        <option value="1983">1983  </option>
                                                                        <option value="1982">1982  </option>
                                                                        <option value="1981">1981  </option>
                                                                        <option value="1980">1980  </option>
                                                                        <option value="1979">1979  </option>
                                                                        <option value="1978">1978  </option>
                                                                        <option value="1977">1977  </option>
                                                                        <option value="1976">1976  </option>
                                                                        <option value="1975">1975  </option>
                                                                        <option value="1974">1974  </option>
                                                                        <option value="1973">1973  </option>
                                                                        <option value="1972">1972  </option>
                                                                        <option value="1971">1971  </option>
                                                                        <option value="1970">1970  </option>
                                                                        <option value="1969">1969  </option>
                                                                        <option value="1968">1968  </option>
                                                                        <option value="1967">1967  </option>
                                                                        <option value="1966">1966  </option>
                                                                        <option value="1965">1965  </option>
                                                                        <option value="1964">1964  </option>
                                                                        <option value="1963">1963  </option>
                                                                        <option value="1962">1962  </option>
                                                                        <option value="1961">1961  </option>
                                                                        <option value="1960">1960  </option>
                                                                        <option value="1959">1959  </option>
                                                                        <option value="1958">1958  </option>
                                                                        <option value="1957">1957  </option>
                                                                        <option value="1956">1956  </option>
                                                                        <option value="1955">1955  </option>
                                                                        <option value="1954">1954  </option>
                                                                        <option value="1953">1953  </option>
                                                                        <option value="1952">1952  </option>
                                                                        <option value="1951">1951  </option>
                                                                        <option value="1950">1950  </option>
                                                                        <option value="1949">1949  </option>
                                                                        <option value="1948">1948  </option>
                                                                        <option value="1947">1947  </option>
                                                                        <option value="1946">1946  </option>
                                                                        <option value="1945">1945  </option>
                                                                        <option value="1944">1944  </option>
                                                                        <option value="1943">1943  </option>
                                                                        <option value="1942">1942  </option>
                                                                        <option value="1941">1941  </option>
                                                                        <option value="1940">1940  </option>
                                                                        <option value="1939">1939  </option>
                                                                        <option value="1938">1938  </option>
                                                                        <option value="1937">1937  </option>
                                                                        <option value="1936">1936  </option>
                                                                        <option value="1935">1935  </option>
                                                                        <option value="1934">1934  </option>
                                                                        <option value="1933">1933  </option>
                                                                        <option value="1932">1932  </option>
                                                                        <option value="1931">1931  </option>
                                                                        <option value="1930">1930  </option>
                                                                        <option value="1929">1929  </option>
                                                                        <option value="1928">1928  </option>
                                                                        <option value="1927">1927  </option>
                                                                        <option value="1926">1926  </option>
                                                                        <option value="1925">1925  </option>
                                                                        <option value="1924">1924  </option>
                                                                        <option value="1923">1923  </option>
                                                                        <option value="1922">1922  </option>
                                                                        <option value="1921">1921  </option>
                                                                        <option value="1920">1920  </option>
                                                                        <option value="1919">1919  </option>
                                                                        <option value="1918">1918  </option>
                                                                        <option value="1917">1917  </option>
                                                                        <option value="1916">1916  </option>
                                                                        <option value="1915">1915  </option>
                                                                        <option value="1914">1914  </option>
                                                                        <option value="1913">1913  </option>
                                                                        <option value="1912">1912  </option>
                                                                        <option value="1911">1911  </option>
                                                                        <option value="1910">1910  </option>
                                                                        <option value="1909">1909  </option>
                                                                        <option value="1908">1908  </option>
                                                                        <option value="1907">1907  </option>
                                                                        <option value="1906">1906  </option>
                                                                        <option value="1905">1905  </option>
                                                                        <option value="1904">1904  </option>
                                                                        <option value="1903">1903  </option>
                                                                        <option value="1902">1902  </option>
                                                                        <option value="1901">1901  </option>
                                                                        <option value="1900">1900  </option>
                                                                    </select> 
                                                                </div>
                                                                <div class="col-md-3 col-sm-3 col-xs-4">
                                                                    <select class="form-control" id="birth-month" name="birth_month">
                                                                       
                                                                        <option value="jan">一月</option>
                                                                        <option value="feb">二月</option>
                                                                        <option value="mar">三月</option>
                                                                        <option value="apr">四月</option>
                                                                        <option value="may">五月</option>
                                                                        <option value="jun">六月</option>
                                                                        <option value="jul">七月</option>
                                                                        <option value="aug">八月</option>
                                                                        <option value="sep">九月</option>
                                                                        <option value="oct">十月</option>
                                                                        <option value="nov">十一月</option>
                                                                        <option value="dec">十二月</option>
                                                                    </select> 
                                                                </div>
                                                                <div class="col-md-3 col-sm-3 col-xs-4">
                                                                      <select class="form-control" id="birth-date" name="birth_date">
                                                                        
                                                                        <option value="1">1</option>
                                                                        <option value="2">2</option>
                                                                        <option value="3">3</option>
                                                                        <option value="4">4</option>
                                                                        <option value="5">5</option>
                                                                        <option value="6">6</option>
                                                                        <option value="7">7</option>
                                                                        <option value="8">8</option>
                                                                        <option value="9">9</option>
                                                                        <option value="10">10</option>
                                                                        <option value="11">11</option>
                                                                        <option value="12">12</option>
                                                                        <option value="13">13</option>
                                                                        <option value="14">14</option>
                                                                        <option value="15">15</option>
                                                                        <option value="16">16</option>
                                                                        <option value="17">17</option>
                                                                        <option value="18">18</option>
                                                                        <option value="19">19</option>
                                                                        <option value="20">20</option>
                                                                        <option value="21">21</option>
                                                                        <option value="22">22</option>
                                                                        <option value="23">23</option>
                                                                        <option value="24">24</option>
                                                                        <option value="25">25</option>
                                                                        <option value="26">26</option>
                                                                        <option value="27">27</option>
                                                                        <option value="28">28</option>
                                                                        <option value="29">29</option>
                                                                        <option value="30">30</option>
                                                                        <option value="31">31</option>
                                                                    </select> 
                                                                </div>
                                                            </div>
                                                            <div class="form-group required">
                                                                <label class="col-md-3 col-sm-12 control-label"> 旧密码</label>
                                                                <div class="col-md-9 col-sm-12">
                                                                    <input type="password" name="current-psw" class="form-control psw"> 
                                                                </div>
                                                            </div>
                                                            <div class="form-group required">
                                                                <label class="col-md-3 col-sm-12 control-label"> 新密码 </label>
                                                                <div class="col-md-9 col-sm-12">
                                                                    <input type="password" name="new-psw" class="form-control psw"> 
                                                                </div>
                                                            </div>
                                                            <div class="form-group required">
                                                                <label class="col-md-3 col-sm-12 control-label"> 新密码确认 </label>
                                                                <div class="col-md-9 col-sm-12">
                                                                    <input type="password" name="confirm-psw" class="form-control psw"> 
                                                                </div>
                                                            </div>
                                                            <div class="col-md-12">
                                                                <div class="check-box">
                                                                    <label>
                                                                        <div id="newsletter">
                                                                            <span><input type="checkbox" value="1" name="newsletter" id="newsletter"></span>
                                                                            <span>订阅我们的资讯!</span>
                                                                        </div>
                                                                    </label>
                                                                </div>
                                                                <div class="check-box">
                                                                    <label>
                                                                        <div id="offers">
                                                                            <span><input type="checkbox" value="1" name="offer" id="offer"></span>
                                                                            <span>从合作商接收热门的推荐信息!  </span>
                                                                        </div>            
                                                                    </label>
                                                                </div>
                                                                <div class="button-save">
                                                                    <a class="btn btn-default" href="#"><span>保存</span></a>
                                                                </div>
                                                            </div>
                                                        </div>       
                                                    </div>
                                                </div>
                                            </div>    
                                        </div>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading" role="tab" id="headingFive">
                                        <h4 class="panel-title">
                                            <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#wishlist">
                                                <i class="fa fa-heart"></i><span>我的愿望清单</span>
                                            </a>
                                        </h4>
                                    </div>
                                    <div id="wishlist" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFive">
                                        <div class="panel-body">
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div class="wishlist-container">
                                                        <h3>新愿望</h3>
                                                        <div class="row">
                                                            <div class="form-group required">
                                                                <label class="col-md-12 col-sm-12 control-label">愿望名称</label>
                                                                <div class="col-md-12 col-sm-12">
                                                                    <input type="text" class="form-control" id="wishlist-name" placeholder="" value="" name="name">
                                                                </div>
                                                            </div>
                                                        </div>    
                                                        <div class="button-save">
                                                            <a class="btn btn-default" href="#"><span>保存</span></a>
                                                        </div>
                                                    </div>
                                                </div>   
                                            </div>    
                                        </div>
                                    </div>
                                </div>
                            </div>   
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="button-back">
                            <a class="btn btn-default" href="#"><span>返回个人账户</span></a>
                        </div>
                        <div class="button-home">
                            <a class="btn btn-default" href="#"><span>首页</span></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--End of Account Area-->	

        <!--Footer Start-->
        <jsp:include page="footer.jsp" flush="true"></jsp:include>
        <!--End of Footer-->
        
   		<!-- JS Start -->
   		<jsp:include page="quote_js.jsp" flush="true"></jsp:include>
   		<!-- End of JS -->
    </body>
</html>



