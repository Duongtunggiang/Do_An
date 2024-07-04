<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
    <script src="asset/bot-jquery/jquery_new.js"></script>
    <!-- <script src="asset/js/user.js"></script> -->
    <script src="asset/js/modal.js"></script>
    <script src="asset/bot-jquery/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="asset/css/index.css">
    <title>Mobie Smart</title>
    <link rel="shortcut icon" href="asset/img/LogoNew_IT.ico">
    <link rel="stylesheet" href="asset/css/myacc.css">
    <link rel="stylesheet" href="asset/css/detail.css">
	<!-- <link rel="stylesheet" href="asset/css/tuyendung.css">  -->
</head>
<body>
<!-- Trong header.jsp -->

    <!-- Modal for Sign In / Sign Up -->
    <div class="modal fade" id="signin-signup-modal" tabindex="-1" aria-labelledby="signin-signup-modal-label" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="signin-signup-modal-label">Đăng nhập / Đăng ký</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <ul class="nav nav-tabs" id="signin-signup-tab" role="tablist">
                        <li class="nav-item" role="presentation">
                            <a class="nav-link active" id="signin-tab" data-bs-toggle="tab" href="#signin" role="tab" aria-controls="signin" aria-selected="true">Đăng nhập</a>
                        </li>
                        <li class="nav-item" role="presentation">
                            <a class="nav-link" id="signup-tab" data-bs-toggle="tab" href="#signup" role="tab" aria-controls="signup" aria-selected="false">Đăng ký</a>
                        </li>
                    </ul>
                    <div class="tab-content" id="signin-signup-tabContent">
                        <div class="tab-pane fade show active" id="signin" role="tabpanel" aria-labelledby="signin-tab">
                            <!-- Sign In form -->
                            <form action="login" method="post">
                                <div class="mb-3">
                                    <label for="username" class="form-label">Tên đăng nhập</label>
                                    <input type="text" class="form-control" id="username" name="username">
                                </div>
                                <div class="mb-3">
                                    <label for="password" class="form-label">Mật khẩu</label>
                                    <input type="password" class="form-control" id="password" name="password">
                                </div>
                                <p class="text-danger errorMessage"></p>
                                <%
									    String errorMessage = (String) request.getAttribute("errorMessage");
									    if (errorMessage != null) {
									%>
									    <div class="alert alert-danger">
									        <%= errorMessage %>
									    </div>
									<%
									    }
									%>
                                <button type="submit" class="btn btn-primary mt-2">Đăng nhập</button>
                            </form>
                        </div>
                        <div class="tab-pane fade" id="signup" role="tabpanel" aria-labelledby="signup-tab">
                            <!-- Sign Up form -->
                            <form action="RegisterServlet" method="post">
                                <div class="mb-3">
                                    <label for="username" class="form-label">Tên đăng nhập</label>
                                    <input type="text" class="form-control" id="username" name="username">
                                </div>
                                <div class="mb-3">
								    <label for="password" class="form-label">Mật khẩu</label>
								    <input type="password" class="form-control" id="password" name="password" >
								</div>
								<div class="mb-3">
								    <label for="confirm-password" class="form-label">Nhập lại mật khẩu</label>
								    <input type="password" class="form-control" id="confirm-password" name="confirm-password" >
								</div>
								<div class="mb-3">
									<div class="alert alert-danger error-message" style="display: none;"></div>
								</div>
								<!-- <script type="text/javascript">
									// Giả sử bạn đã nhận được thông báo lỗi từ server
									var errorMessage = "Đăng ký không thành công. Vui lòng thử lại sau.";
	
									// Cập nhật nội dung của thẻ div chứa thông báo lỗi
									var errorMessageDiv = document.querySelector("#signin-signup-modal .error-message");
									errorMessageDiv.textContent = errorMessage;
									errorMessageDiv.style.display = "block";
									
								</script> -->
                                <button type="submit" class="btn btn-primary">Đăng ký</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <header class="header-main header-fluid bg-mode-re header-option-6">
        <div class="navbar navbar-expand-lg navbar-light bg-li">
            <div class="container-fluid">
                <div class="col-lg-3 text-center text-sm-start">
                    <!-- Logo --><a class="navbar-brand" href="${pageContext.request.contextPath}/Home">
                        <img src="asset/img/LogoNew_ITP_removebg.png" title="" alt="" height="50"> 
                    </a>
                    
                </div>
                
                <div class="col-lg-5  d-lg-block collapse h-search" id="navbarSupportedContent" style="z-index: 999;">
                    <form class="d-flex mt-2 mb-2">
                        <input class="form-control w-100" type="text" name="search" placeholder="What are you looking for?">
                        <button type="button" class="btn shadow-none"><i class="fi-search"></i></button>
                    </form>
                </div>
                
                <button class="navbar-toggler d-lg-block ipsearch" type="button" data-bs-toggle="collapse" 
                        data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="fi-search d-lg-none"></span>
                </button>
                <div class="nav flex-nowrap align-items-center " >
                    <div class="nav-item dropdown">
                        <div class="nav-link d-flex align-items-center" href="#" role="button" id="dropdown_myaccount" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fi-user" style="font-size: 22px; "></i> 
                            <p class="d-lg-none mb-0 ">
					            <c:choose>
							        <c:when test="${empty sessionScope.username}">
							            Account
							        </c:when>
							        <c:otherwise>
							            <a  href="#"> <!-- Cập nhật đường dẫn -->
							                <p id="username">${sessionScope.username}</p> 
							            </a>
							        </c:otherwise>
							    </c:choose>
					        </p>
					        
                        </div>
                        <div class="dropdown-menu dropdown-menu-end mt-2 shadow menu-user" 
                            aria-labelledby="dropdown_myaccount" style="z-index: 999;">
                            <c:choose>
						        <c:when test="${empty sessionScope.username}">
						            <a class="dropdown-item" id="signin-signup" href="#">Đăng nhập / Đăng ký</a> 
						        </c:when>
						        <c:otherwise>
						           	<a class="dropdown-item" id="myaccount" href="myacc?user=${sessionScope.username}">Tài khoản của tôi</a> 
                            		<a class="dropdown-item" id="logout" href="#" onclick="confirmLogout()">Đăng xuất</a> 
						        </c:otherwise>
						    </c:choose>
                        </div>
                    </div>
                    <div class="nav-item mt-2">
                        <a class="nav-link" href="${pageContext.request.contextPath}/cart" role="button" data-cart-items="8">
                            <i class="fi-shopping-cart" style="font-size: 20px;" ></i> 
                            <!-- <span class="d-none d-lg-block">Giỏ hàng</span> -->
                        </a>
                    </div>
                </div>
                
            </div>
            
            
        </div>
        <script type="text/javascript">
        function confirmLogout() {
        	  if (confirm("Bạn có muốn đăng xuất không?")) {
        	    // Perform logout
        	    window.location.href = "logout"; // Redirect to the logout servlet
        	  }
        	}
        </script>
        <nav class="navbar navbar-expand-lg navbar-light bg-la ">
            <div class="container-fluid justify-content-end">
                <button class="navbar-toggler togg" type="button" data-bs-toggle="collapse" data-bs-target="#menu-nav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="menu-nav">
                    <ul class="navbar-nav me-auto menu-chinh">
                        <li class="nav-item dropdown  vertical-dropdown ">
                            <label class="nav-link dropdown-toggle text-dark " href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                Loại sản phẩm
                            </label>
                            <!-- <label class="px-dropdown-toggle nav-link dropdown-toggle text-dark " href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                Loại sản phẩm
                            </label> -->
                            <ul class="dropdown-menu vertical-dropdown-menu left shadow-none menu-chinh" aria-labelledby="navbarDropdown">
                            <c:forEach items="${ListC}" var="cate">
                                <li><a class="dropdown-item" href="#">${cate.categoryName}</a></li>
                            </c:forEach>    
                            </ul>
                        </li>
                        <!-- End Cat Menu -->
                        <li class="dropdown dropdown-full nav-item ">
                            <!-- <a href="#" class="nav-link text-dark dropdown-toggle" id="navbarDropdown2" role="button" 
                            data-bs-toggle="dropdown" aria-expanded="false">Sản phẩm</a>  -->
                            <label class="nav-link dropdown-toggle text-dark " href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                Sản phẩm
                            </label>
                            <div class="dropdown-menu dropdown-mega-menu py-0 "aria-labelledby="navbarDropdown">
                                <div class="container p-3 p-lg-4">
                                    <div class="row gy-4">
                                        <div class="col-6 col-md-3 col-xl-2">
                                            <h6 class="sm-title-02 mb-3 fw-500">SẢN PHẨM MỚI</h6>
                                            <ul class="list-unstyled link-list-style-02 m-0 ">
                                                <li><a href="#">iPhone 15 Promax</a> <span class="menu-label">New</span></li>
                                                <li><a href="#">iPhone 15 Pro</a> <span class="menu-label">New</span></li>
                                                <li><a href="#">iPhone 15Plus</a> <span class="menu-label">New</span></li>
                                            </ul>
                                        </div>
                                        <div class="col-6 col-md-3 col-xl-2">
                                            <h6 class="sm-title-02 mb-3 fw-500">IPHONE 15</h6>
                                            <ul class="list-unstyled link-list-style-02 mb-4">
                                                <li><a href="#">iPhone 15 Promax</a></li>
                                                <li><a href="#">iPhone 15 Pro</a></li>
                                                <li><a href="#">iPhone 15 Plus</a></li>
                                                <li><a href="#">iPhone 15</a></li>
                                            </ul>
                                        </div>
                                        <div class="col-6 col-md-3 col-xl-2">
                                            <h6 class="sm-title-02 mb-3 fw-500">IPHONE 14</h6>
                                            <ul class="list-unstyled link-list-style-02 mb-4">
                                                <li><a href="#">iPhone 14 Promax</a></li>
                                                <li><a href="#">iPhone 14 Pro</a></li>
                                                <li><a href="#">iPhone 14 Plus</a></li>
                                                <li><a href="#">iPhone 14</a></li>
                                            </ul>
                                        </div>
                                        <div class="col-6 col-md-3 col-xl-2">
                                            <h6 class="sm-title-02 mb-3 fw-500">IPHONE 13</h6>
                                            <ul class="list-unstyled link-list-style-02 mb-4">
                                                <li><a href="#">iPhone 13 Promax</a></li>
                                                <li><a href="#">iPhone 13 Pro</a></li>
                                                <li><a href="#">iPhone 13</a></li>
                                                <li><a href="#">iPhone 13 Mini</a></li>
                                            </ul>
                                        </div>
                                        <div class="col-6 col-md-3 col-xl-2">
                                            <h6 class="sm-title-02 mb-3 fw-500">IPHONE 12</h6>
                                            <ul class="list-unstyled link-list-style-02 mb-4">
                                                <li><a href="#">iPhone 12 Promax</a></li>
                                                <li><a href="#">iPhone 12 Pro</a></li>
                                                <li><a href="#">iPhone 12</a></li>
                                                <li><a href="#">iPhone 12 Mini</a></li>
                                            </ul>
                                        </div>
                                        <div class="col-6 col-md-3 col-xl-2">
                                            <h6 class="sm-title-02 mb-3 fw-500">IPHONE 11</h6>
                                            <ul class="list-unstyled link-list-style-02 mb-4">
                                                <li><a href="#">iPhone 11 Promax</a></li>
                                                <li><a href="#">iPhone 11 Pro</a></li>
                                                <li><a href="#">iPhone 11</a></li>
                                            </ul>
                                        </div>
                                        <div class="col-6 col-md-3 col-xl-2">
                                            <h6 class="sm-title-02 mb-3 fw-500">IPHONE X</h6>
                                            <ul class="list-unstyled link-list-style-02 mb-4">
                                                <li><a href="#">iPhone XSMAX</a></li>
                                                <li><a href="#">iPhone XS</a></li>
                                                <li><a href="#">iPhone X</a></li>
                                                <li><a href="#">iPhone XR</a></li>
                                            </ul>
                                        </div>
                                        
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="nav-item dropdown">
                            <label class="nav-link dropdown-toggle text-dark " href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                Giới thiệu
                            </label>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="#">Tin tức</a></li>
                                <li><a class="dropdown-item" href="#">Giới thiệu</a></li>
                            </ul>
                        </li>
                        <li class="nav-item dropdown">
                            <label class="nav-link dropdown-toggle text-dark " href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                Tuyển dụng
                            </label>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="${pageContext.request.contextPath}/tuyendung">Tuyển nhân viên sale</a></li>
                                <li><a class="dropdown-item" href="#">Tuyển kế toán</a></li>
                                <li><a class="dropdown-item" href="#">Tuyển quản lý</a></li>
                                <li><a class="dropdown-item" href="#">Tuyển bảo vệ</a></li>
                            </ul>
                        </li>
                        <li class="nav-item dropdown">
                            <label class="nav-link dropdown-toggle text-dark " href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                Bảo hành
                            </label>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="#">Bảo hành</a></li>
                                <li><a class="dropdown-item" href="#">Sửa chữa</a></li>
                                <li><a class="dropdown-item" href="#">Mua thêm bảo hành</a></li>
                            </ul>
                        </li>
                        <!-- <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle text-dark" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                Tài Khoản
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="#">Thông tin người dùng</a></li>
                                <li><a class="dropdown-item" href="#">Đăng xuất</a></li>
                            </ul>
                        </li> -->
                    </ul>
                </div>
            </div>
        </nav>
    </header>