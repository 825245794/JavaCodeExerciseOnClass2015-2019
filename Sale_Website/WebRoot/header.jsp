<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.mall.bean.AccountStatus" %>
<%AccountStatus account=(AccountStatus)session.getAttribute("account"); %>	
        <header>
            <!--Header Top Start-->
            <jsp:include page="header_top.jsp"></jsp:include>
            <!--End of Header Top-->
            <!--Search Start  -->
            <jsp:include page="search.jsp" flush="true"></jsp:include>
            <!--End of Search  -->
            <%if(account!=null){%>
			<!--ShopCart Start-->
			<jsp:include page="/servlet/ShopcartServlet" flush="true"></jsp:include>
			<!-- End of ShopCart -->
			<%} %>
            <!--Menu Start-->
            <jsp:include page="menu.jsp" flush="true"/>  
            <!--End of Menu-->
        </header> 

