<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.mall.bean.AccountStatus" %>
<%@ taglib uri ="/struts-tags" prefix ="s" %>
<%AccountStatus account=(AccountStatus)session.getAttribute("account"); %>
<%if(account!=null){ %>
     <ul class="header-links">
        <li class="dropdown">
        <a data-toggle="dropdown" class="dropdown-toggle" title="My Account" href="account.html"><span>我的账户</span><i class="fa fa-angle-down"></i></a><i class="whitefont">&nbsp;&nbsp;您好，<%=account.getUsername() %></i>
           <ul class="dropdown-menu dropdown-menu-right">
                <li><a title="Wish List (0)" id="wishlist-total" href="wishlist.html"><span>愿望清单 (0)</span></a></li>
                <li><a title="Shopping Cart" class="item-cart" href="cart.html"><span>购物车</span></a></li>
                <li class="last"><a title="Checkout" href="checkout.html"><span>结账</span></a></li>
                <li><a href="login!loginOut">退出账户</a></li>
            </ul>
        </li> 
    </ul>
<%} else{%>
  <ul class="header-links"> 
        <li class="dropdown">
        <a data-toggle="dropdown" class="cd-signin" title="My Account" href="#0"><span>登录</span></a>
        <a data-toggle="dropdown" class="cd-signup" title="My Account" href="#0"><span>免费注册</span></a>
        </li>
    </ul>
 
    <div class="cd-user-modal"> 
		<div class="cd-user-modal-container"> 
			<ul class="cd-switcher">
				<li><a href="#0">登录</a></li> 
				<li><a href="#0">注册</a></li> 
			</ul>

			<div id="cd-login"> 
				<form class="cd-form" action="login.action" method="post" id="from1">
					<p class="fieldset">
						<label class="image-replace cd-email" for="signin-email">用户名</label>
						<input class="full-width has-padding has-border" id="signin-email" type="text" name="username" placeholder="邮箱">
						<span class="cd-error-message">错误!</span>
					</p>

					<p class="fieldset">
						<label class="image-replace cd-password" for="signin-password">密码</label>
						<input class="full-width has-padding has-border" id="signin-password" type="text"  name="password" placeholder="密码">
						<a href="#0" class="hide-password">隐藏</a>
						<span class="cd-error-message"></span> 
						<label id="errorMessages" class="errorMessage"></label>
					</p> 

					<p class="fieldset"> 
						<input type="checkbox" id="remember-me" checked>
						<label for="remember-me">记住我</label>
					</p>

					<p class="fieldset">
						<input class="full-width" type="button" value="登录" onclick="AjaxLoginConnection('login!postPassword',$('#signin-email').val(),$('#signin-password').val())"> 
					</p>
				</form>
				
				<p class="cd-form-bottom-message"><a href="#0">忘记密码?</a></p>
			</div> 

			<div id="cd-signup"> 
				<form class="cd-form" action="register.action" id="from2">
					<p class="fieldset">
						<label class="image-replace cd-username" for="signup-username">用户名</label>
						<input class="full-width has-padding has-border" id="signup-username" type="text" name="username" placeholder="用户名">
						<span class="cd-error-message">错误!</span>
					</p>

					<p class="fieldset">
						<label class="image-replace cd-email" for="signup-email">邮件地址</label>
						<input class="full-width has-padding has-border" id="signup-email" type="email" name="email" placeholder="邮件地址">
						<span class="cd-error-message">错误!</span>
					</p>

					<p class="fieldset">
						<label class="image-replace cd-password" for="signup-password">密码</label>
						<input class="full-width has-padding has-border" id="signup-password" type="text" name="password"  placeholder="密码">
						<a href="#0" class="hide-password">隐藏</a>
						<span class="cd-error-message">错误!</span>
					</p>

					<p class="fieldset">
						<label class="image-replace cd-password" for="signup-password">确认密码</label>
						<input class="full-width has-padding has-border" id="signup-comfire-password" type="text" name="comfirepassword" placeholder="确认密码">
						<a href="#0" class="hide-comfire-password">隐藏</a>
						<span class="cd-error-message">错误!</span>
					</p>
					<p class="fieldset">
						<input type="checkbox" id="accept-terms">
						<label for="accept-terms">我同意 <a href="#0">隐私政策</a></label>
					</p>

					<p class="fieldset">
						<input class="full-width has-padding" type="button" value="创建账户" onclick="document.getElementById('from2').submit();">
					</p>
				</form>
			</div> 

			<div id="cd-reset-password"> 
				<p class="cd-form-message">忘记密码可以通过输入邮箱找回</p>

				<form class="cd-form" action="login.action">
					<p class="fieldset">
						<label class="image-replace cd-email" for="reset-email">邮件地址</label>
						<input class="full-width has-padding has-border" id="reset-email" type="email" placeholder="邮件地址">
						<span class="cd-error-message">错误!</span>
					</p> 

					<p class="fieldset">
						<input class="full-width has-padding" type="submit" value="重设密码">
					</p>
				</form>

				<p class="cd-form-bottom-message"><a href="#0">回到登陆界面</a></p>
			</div> 
			<a href="#0" class="cd-close-form">关闭</a>
		</div> 
	</div> 

<%}%>