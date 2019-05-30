<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

           <div class="header-top">
                <div class="container">
                    <div class="row">
                         <div class="col-lg-7 col-md-7 col-sm-6 col-xs-12">
                            <div class="header-top-info">
                                <div class="header-phone">
                                    <p><i class="fa fa-phone">&nbsp;</i>免费电话： <span>(800)123 456 789</span></p>
                                </div>
                                <div class="header-email">
                                    <p><i class="fa fa-envelope">&nbsp;</i>Email: <span>admin@shoppingmall.com</span></p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-5 col-md-5 col-sm-6 col-xs-12">
                            <div class="header-top-menu">
                            
                            <!-- Account Start -->
                               <jsp:include page="account_status.jsp" flush="true"></jsp:include>
                            <!-- End of Account -->
                            
                                <div class="currency-language-menu">
                                    <!--  <div class="floatleft">
                                        <form action="#" method="post" id="currency">
                                            <div class="btn-group">
                                                <button data-toggle="dropdown" class="btn btn-link dropdown-toggle" aria-expanded="false">

                                                <span>Currency</span> <i class="fa fa-angle-down"></i></button>
                                                <ul class="dropdown-menu">
                                                    <li><button name="EUR" type="button">1</button></li>
                                                    <li><button name="GBP" type="button">2</button></li>
                                                    <li><button name="USD" type="button">3</button></li>
                                                </ul>
                                            </div>
                                        </form>
                                    </div>-->
                                    
                                    <div class="floatleft">
                                        <form action="#" method="post" id="language">
                                            <div class="btn-group">
                                                <button data-toggle="dropdown" class="btn btn-link dropdown-toggle" aria-expanded="false">

                                                <span>语言</span> <i class="fa fa-angle-down"></i></button>
                                                <ul class="dropdown-menu">
                                                     <li><a href="#"><img title="Chinese" class="imgw16h11" alt="Chinese" src="${pageContext.request.contextPath}/resource/img/flags/ch.jpeg"> 中文</a></li>
                                                     <li><a href="#"><img title="English" alt="English" src="${pageContext.request.contextPath}/resource/img/flags/en.png"> English</a></li>
                                                </ul>
                                             </div>
                                         </form>
                                    </div>
                                </div>
                             </div>
                         </div>
                     </div>
                </div>
               </div>

