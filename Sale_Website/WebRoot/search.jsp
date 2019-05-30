<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

      <div class="header">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-3 col-md-3 col-sm-12">
                            <div id="logo">
                                <a href="index"><img class="img-responsive" alt="Rantasy" src="${pageContext.request.contextPath}/resource/img/logo/logo.jpg"></a>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-6">
                            <div id="search-category" class="input-group">
                                <form class="search-box" action="#" method="post">
                                    <div class="search-categories">
                                        <div class="search-cat">
                                            <select class="category-items " name="category">
                                                <option>全部</option>
                                                <option>商品</option>
                                                <option>品牌</option>
                                            </select>
                                        </div>
                                    </div>
                                    <input type="search" class="form-control" placeholder="搜索 商品/品牌..." id="text-search" name="search">
                                    <button id="btn-search-category" type="submit">
                                        <i class="icon-search"></i>
                                    </button>
                                </form>
                            </div>
                        </div>

