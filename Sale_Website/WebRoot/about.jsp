<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>关于我们</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
        
	<!--Link CSS Start-->		
	<jsp:include page="quote_css.jsp" flush="false"></jsp:include>
    <!--End of Link CSS -->	

  </head>
  
  <body>
       <!--Header Start Area-->
	   <jsp:include page="header.jsp" flush="true"></jsp:include>
       <!--End of Header Area-->
       <!--About Area Start-->
        <div class="home-hello-info">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="f-title text-center">
							<h3 class="title text-uppercase">关于我们</h3>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-7 col-sm-12 col-xs-12">
						<div class="about-page-cntent">
							<h3>了解Mobile Sale</h3>
							<p> Mobile Sale主要从事手机销售、手机产业资讯、手机售后服务。公司于2004年11月创建第一间专卖店，秉着诚信经营，以客为本的宗旨，在短短时间里获得了广大消费者的认可，并得以迅猛发展。到目前为止幻想曲通讯已经拥有50多间手机专卖店，分别分布在大连万达，大连国际机场等繁华地段。Mobile Sale为顾客提供了专业的主流手机销售平台，为顾客提供了优质完善的售前售后服务，成为了辽宁最大最专业的手机连锁店。</p>
							<blockquote>
								<p> Mobile Sale谨守“诚信经营，以客为本”的原则。无论顾客是在实体店购机，还是网上邮购，我们均提供专业的售前咨询，解答每位顾客购机过程中的一切疑问。同时，为了更好地“守”着我们的声誉，“守”着我们的顾客，在原有的售后服务基础上，增设售后回访，聆听每位顾客心声。</p>
							</blockquote>
							<p> Mobile Sale还非常注重与顾客之间的交流，通过各种别具匠心的活动策划，拉近与顾客的距离，更直接更深入了解顾客的需求。同时，幻想曲通讯创新的企业文化，大大的提高了员工之间的凝聚力。  </p>
						</div>
					</div>
					<div class="col-md-5 col-sm-12 col-xs-12">
						<div class="img-element">
							<img alt="banner1" src="resource/img/about/ab.jpg">
						</div>
					</div>
				</div>
			</div>
		</div>
        <!--End of ABout ARea-->
       
               
        
        <!--Footer Start-->
        <jsp:include page="footer.jsp" flush="true"></jsp:include>
        <!--End of Footer-->
        
   		<!-- JS Start -->
   		<jsp:include page="quote_js.jsp" flush="true"></jsp:include>
   		<!-- End of JS -->
  </body>
</html>
