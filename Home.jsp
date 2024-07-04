<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="header.jsp" %>
    <main>
        <!-- Home Slider -->
        <div class="swiper swiper-container" data-swiper-options='{
                  "slidesPerView": 1,
                  "spaceBetween": 0,
                  "pagination": {
                    "el": ".swiper-pagination",
                    "clickable": true
                  },
                  "navigation": {
                    "nextEl": ".swiper-next-01",
                    "prevEl": ".swiper-prev-01"
                  },
                  "autoplay": {
                    "delay": 5000,
                    "disableOnInteraction": false
                  }
                }'>
            <div class="swiper-wrapper">
                <div class="swiper-slide">
                    <div class="bg-no-repeat bg-cover bg-right-center px-8" style="background-image: url(asset/img/electronic/el-banner-5.jpg);">
                        <div class="container">
                            <div class="row min-vh-85 align-items-center py-12">
                                <div class="col-lg-6 py-8 pe-xl-10">
                                    <h6 class="fw-500 text-white mb-4">You're Looking Good</h6>
                                    <h1 class="display-4 fw-600 text-white">Final Clearance Up to 80% Off</h1>
                                    <div class="pt-4"><a class="btn btn-outline-white" href="#">Discover More</a></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="bg-no-repeat bg-cover bg-right-center px-8" style="background-image: url(asset/img/electronic/el-banner-4.jpg);">
                        <div class="container">
                            <div class="row min-vh-85 align-items-center py-12">
                                <div class="col-lg-6 py-8 pe-xl-10">
                                    <h6 class="fw-500 text-white mb-4">You're Looking Good</h6>
                                    <h1 class="display-4 fw-600 text-white">Final Clearance Up to 80% Off</h1>
                                    <div class="pt-4"><a class="btn btn-outline-white" href="#">Discover More</a></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="swiper-arrow-style-01 swiper-next swiper-next-01"><i class="bi bi-chevron-right"></i></div>
            <div class="swiper-arrow-style-01 swiper-prev swiper-prev-01"><i class="bi bi-chevron-left"></i></div>
            <div class="swiper-pagination swiper-pagination-white"></div>
        </div>
        <!-- End Home Slider -->
        <!-- Section -->
        <section class="section pt-0"></section>
        <section class="section pt-0 z-index-1 position-relative">
            <div class="container">
                <div class="section-heading section-heading-01">
                    <div class="row align-items-center">
                        <div class="col-auto col-md-6">
                            <h3 class="h4 mb-0">Hot Trending Products</h3>
                        </div>
                        <div class="col-auto col-md-6 text-end"><a href="#">View All <i class="bi bi-arrow-right"></i></a></div>
                    </div>
                </div>
                <div class="swiper-hover-arrow position-relative">
                    <div class="swiper swiper-container" data-swiper-options='{
                              "slidesPerView": 2,
                              "spaceBetween": 24,
                              "loop": true,
                              "pagination": {
                                "el": ".swiper-pagination",
                                "clickable": true
                                },
                              "navigation": {
                                "nextEl": ".swiper-next-02",
                                "prevEl": ".swiper-prev-02"
                              },
                              "autoplay": {
                                "delay": 3500,
                                "disableOnInteraction": false
                              },
                              "breakpoints": {
                                "600": {
                                  "slidesPerView": 3
                                },
                                "991": {
                                  "slidesPerView": 4
                                },
                                "1200": {
                                  "slidesPerView": 6
                                }
                              }
                        }'>
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <div class="product-card-8">
                                    <div class="product-card-image">
                                        <div class="badge-ribbon"><span class="badge bg-danger">Sale</span></div>
                                        <div class="product-action"><a href="#" class="btn btn-outline-primary"><i class="fi-heart" title="Thêm vào giỏ hàng"></i> </a><a href="#" class="btn btn-outline-primary"><i class="fi-repeat"></i> </a><a data-bs-toggle="modal" data-bs-target="#px-quick-view" href="javascript:void(0)"
                                                class="btn btn-outline-primary"><i class="fi-eye"></i></a></div>
                                        <div class="product-media"><a href="#"><img class="img-fluid" src="asset/img/electronic/air-pod.jpg" title="" alt=""></a></div>
                                    </div>
                                    <div class="product-card-info">
                                        <div class="rating-star text"><i class="bi bi-star-fill active"></i> <i class="bi bi-star-fill active"></i> <i class="bi bi-star-fill active"></i> <i class="bi bi-star-fill active"></i> <i class="bi bi-star"></i></div>
                                        <h6 class="product-title"><a href="#">Fine-knit sweater</a></h6>
                                        <div class="product-price"><span class="text-primary">$28.<small>50</small></span> <del class="fs-sm text-muted">$38.<small>50</small></del></div>
                                        <div class="product-cart-btn"><a href="product.html" class="btn btn-primary btn-sm w-100"><i class="fi-shopping-cart"></i> Mua ngay</a></div>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="product-card-8">
                                    <div class="product-card-image">
                                        <div class="badge-ribbon"><span class="badge bg-danger">Sale</span></div>
                                        <div class="product-action"><a href="#" class="btn btn-outline-primary"><i class="fi-heart" title="Thêm vào giỏ hàng"></i> </a><a href="#" class="btn btn-outline-primary"><i class="fi-repeat"></i> </a><a data-bs-toggle="modal" data-bs-target="#px-quick-view" href="javascript:void(0)"
                                                class="btn btn-outline-primary"><i class="fi-eye"></i></a></div>
                                        <div class="product-media"><a href="#"><img class="img-fluid" src="asset/img/electronic/canon-camera.jpg" title="" alt=""></a></div>
                                    </div>
                                    <div class="product-card-info">
                                        <div class="rating-star text"><i class="bi bi-star-fill active"></i> <i class="bi bi-star-fill active"></i> <i class="bi bi-star-fill active"></i> <i class="bi bi-star-fill active"></i> <i class="bi bi-star"></i></div>
                                        <h6 class="product-title"><a href="#">Fine-knit sweater</a></h6>
                                        <div class="product-price"><span class="text-primary">$28.<small>50</small></span> <del class="fs-sm text-muted">$38.<small>50</small></del></div>
                                        <div class="product-cart-btn"><a href="product.html" class="btn btn-outline-primary btn-sm w-100"><i class="fi-shopping-cart"></i> Mua ngay</a></div>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="product-card-8">
                                    <div class="product-card-image">
                                        <div class="badge-ribbon"><span class="badge bg-danger">Sale</span></div>
                                        <div class="product-action"><a href="#" class="btn btn-outline-primary"><i class="fi-heart" title="Thêm vào giỏ hàng"></i> </a><a href="#" class="btn btn-outline-primary"><i class="fi-repeat"></i> </a><a data-bs-toggle="modal" data-bs-target="#px-quick-view" href="javascript:void(0)"
                                                class="btn btn-outline-primary"><i class="fi-eye"></i></a></div>
                                        <div class="product-media"><a href="#"><img class="img-fluid" src="asset/img/electronic/charger.jpg" title="" alt=""></a></div>
                                    </div>
                                    <div class="product-card-info">
                                        <div class="rating-star text"><i class="bi bi-star-fill active"></i> <i class="bi bi-star-fill active"></i> <i class="bi bi-star-fill active"></i> <i class="bi bi-star-fill active"></i> <i class="bi bi-star"></i></div>
                                        <h6 class="product-title"><a href="#">Fine-knit sweater</a></h6>
                                        <div class="product-price"><span class="text-primary">$28.<small>50</small></span> <del class="fs-sm text-muted">$38.<small>50</small></del></div>
                                        <div class="product-cart-btn"><a href="product.html" class="btn btn-primary btn-sm w-100"><i class="fi-shopping-cart"></i> Mua ngay</a></div>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="product-card-8">
                                    <div class="product-card-image">
                                        <div class="badge-ribbon"><span class="badge bg-danger">Sale</span></div>
                                        <div class="product-action"><a href="#" class="btn btn-outline-primary"><i class="fi-heart" title="Thêm vào giỏ hàng"></i> </a><a href="#" class="btn btn-outline-primary"><i class="fi-repeat"></i> </a><a data-bs-toggle="modal" data-bs-target="#px-quick-view" href="javascript:void(0)"
                                                class="btn btn-outline-primary"><i class="fi-eye"></i></a></div>
                                        <div class="product-media"><a href="#"><img class="img-fluid" src="asset/img/electronic/ear-phone.jpg" title="" alt=""></a></div>
                                    </div>
                                    <div class="product-card-info">
                                        <div class="rating-star text"><i class="bi bi-star-fill active"></i> <i class="bi bi-star-fill active"></i> <i class="bi bi-star-fill active"></i> <i class="bi bi-star-fill active"></i> <i class="bi bi-star"></i></div>
                                        <h6 class="product-title"><a href="#">Fine-knit sweater</a></h6>
                                        <div class="product-price"><span class="text-primary">$28.<small>50</small></span> <del class="fs-sm text-muted">$38.<small>50</small></del></div>
                                        <div class="product-cart-btn"><a href="product.html" class="btn btn-primary btn-sm w-100"><i class="fi-shopping-cart"></i> Mua ngay</a></div>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="product-card-8">
                                    <div class="product-card-image">
                                        <div class="badge-ribbon"><span class="badge bg-danger">Sale</span></div>
                                        <div class="product-action"><a href="#" class="btn btn-outline-primary"><i class="fi-heart" title="Thêm vào giỏ hàng"></i> </a><a href="#" class="btn btn-outline-primary"><i class="fi-repeat"></i> </a><a data-bs-toggle="modal" data-bs-target="#px-quick-view" href="javascript:void(0)"
                                                class="btn btn-outline-primary"><i class="fi-eye"></i></a></div>
                                        <div class="product-media"><a href="#"><img class="img-fluid" src="asset/img/electronic/fire-stick.jpg" title="" alt=""></a></div>
                                    </div>
                                    <div class="product-card-info">
                                        <div class="rating-star text"><i class="bi bi-star-fill active"></i> <i class="bi bi-star-fill active"></i> <i class="bi bi-star-fill active"></i> <i class="bi bi-star-fill active"></i> <i class="bi bi-star"></i></div>
                                        <h6 class="product-title"><a href="#">Fine-knit sweater</a></h6>
                                        <div class="product-price"><span class="text-primary">$28.<small>50</small></span> <del class="fs-sm text-muted">$38.<small>50</small></del></div>
                                        <div class="product-cart-btn"><a href="product.html" class="btn btn-primary btn-sm w-100"><i class="fi-shopping-cart"></i> Mua ngay</a></div>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="product-card-8">
                                    <div class="product-card-image">
                                        <div class="badge-ribbon"><span class="badge bg-danger">Sale</span></div>
                                        <div class="product-action"><a href="#" class="btn btn-outline-primary"><i class="fi-heart" title="Thêm vào giỏ hàng"></i> </a>
                                            <a href="#" class="btn btn-outline-primary"><i class="fi-repeat"></i> </a>
                                            <a data-bs-toggle="modal" data-bs-target="#px-quick-view" href="javascript:void(0)"class="btn btn-outline-primary"><i class="fi-eye"></i></a></div>
                                        <div class="product-media"><a href="#"><img class="img-fluid" src="asset/img/electronic/fitness-band-1.jpg" title="" alt=""></a></div>
                                    </div>
                                    <div class="product-card-info">
                                        <div class="rating-star text"><i class="bi bi-star-fill active"></i> <i class="bi bi-star-fill active"></i> <i class="bi bi-star-fill active"></i> <i class="bi bi-star-fill active"></i> <i class="bi bi-star"></i></div>
                                        <h6 class="product-title"><a href="#">Fine-knit sweater</a></h6>
                                        <div class="product-price"><span class="text-primary">$28.<small>50</small></span> <del class="fs-sm text-muted">$38.<small>50</small></del></div>
                                        <div class="product-cart-btn"><a href="product.html" class="btn btn-primary btn-sm w-100"><i class="fi-shopping-cart"></i> Mua ngay</a></div>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="product-card-8">
                                    <div class="product-card-image">
                                        <div class="badge-ribbon"><span class="badge bg-danger">Sale</span></div>
                                        <div class="product-action"><a href="#" class="btn btn-outline-primary"><i class="fi-heart" title="Thêm vào giỏ hàng"></i> </a><a href="#" class="btn btn-outline-primary"><i class="fi-repeat"></i> </a><a data-bs-toggle="modal" data-bs-target="#px-quick-view" href="javascript:void(0)"
                                                class="btn btn-outline-primary"><i class="fi-eye"></i></a></div>
                                        <div class="product-media"><a href="#"><img class="img-fluid" src="asset/img/electronic/fitness-band-2.jpg" title="" alt=""></a></div>
                                    </div>
                                    <div class="product-card-info">
                                        <div class="rating-star text"><i class="bi bi-star-fill active"></i> <i class="bi bi-star-fill active"></i> <i class="bi bi-star-fill active"></i> <i class="bi bi-star-fill active"></i> <i class="bi bi-star"></i></div>
                                        <h6 class="product-title"><a href="#">Fine-knit sweater</a></h6>
                                        <div class="product-price"><span class="text-primary">$28.<small>50</small></span> <del class="fs-sm text-muted">$38.<small>50</small></del></div>
                                        <div class="product-cart-btn"><a href="product.html" class="btn btn-primary btn-sm w-100"><i class="fi-shopping-cart"></i> Mua ngay</a></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="swiper-pagination mt-4 d-lg-none position-relative"></div>
                    </div>
                    <div class="swiper-arrow-style-02 swiper-next swiper-next-02"><i class="bi bi-chevron-right"></i></div>
                    <div class="swiper-arrow-style-02 swiper-prev swiper-prev-02"><i class="bi bi-chevron-left"></i></div>
                </div>
            </div>
        </section>
        <!-- End Section -->
        <!-- Product section -->
        <section class="section pt-0">
                <div class="container">
                
                
                    <div class="section-heading section-heading-01">
                        <div class="row align-items-center">
                            <div class="col-auto col-md-6">
                                <h3 class="h4 mb-0">Category</h3>
                            </div>
                            <div class="col-auto col-md-6 text-end"><a href="#">View All <i class="bi bi-arrow-right"></i></a></div>
                        </div>
                    </div>
               	
                    <div class="row gy-4">
	                    <c:forEach items="${ListC}" var="c">
	                        <div class="col-sm-6 col-md-4 col-lg-3">
	                            <div class="p-2 rounded d-flex align-items-center position-relative hover-scale" style="background-color: #eee;">
	                                <div class="col px-4">
	                                    <h5 class="mb-0 text-dark">
	                                    <a href="#" class="stretched-link text-reset">${c.categoryName}</a>
	                                    </h5>
	                                    <span>2 items</span>
                                    </div>
	                                <div class="avatar avatar-xl hover-scale-in">
	                                	<img height="80" src="asset/img/electronic/accessories.png" title="" alt="">
	                                </div>
	                            </div>
	                        </div>
	                     </c:forEach>   
                        <!-- <div class="col-sm-6 col-md-4 col-lg-3">
                            <div class="p-2 rounded d-flex align-items-center position-relative hover-scale" style="background-color: #eee;">
                                <div class="col px-4">
                                    <h5 class="mb-0 text-dark"><a href="#" class="stretched-link text-reset">Air Pods</a></h5><span>2 items</span></div>
                                <div class="avatar avatar-xl hover-scale-in"><img height="80" src="asset/img/electronic/airpods.png" title="" alt=""></div>
                            </div>
                        </div>
                        <div class="col-sm-6 col-md-4 col-lg-3">
                            <div class="p-2 rounded d-flex align-items-center position-relative hover-scale" style="background-color: #eee;">
                                <div class="col px-4">
                                    <h5 class="mb-0 text-dark"><a href="#" class="stretched-link text-reset">Air Tag</a></h5><span>2 items</span></div>
                                <div class="avatar avatar-xl hover-scale-in"><img height="80" src="asset/img/electronic/airtag.png" title="" alt=""></div>
                            </div>
                        </div>
                        <div class="col-sm-6 col-md-4 col-lg-3">
                            <div class="p-2 rounded d-flex align-items-center position-relative hover-scale" style="background-color: #eee;">
                                <div class="col px-4">
                                    <h5 class="mb-0 text-dark"><a href="#" class="stretched-link text-reset">iPhone</a></h5><span>2 items</span></div>
                                <div class="avatar avatar-xl hover-scale-in"><img height="80" src="asset/img/electronic/iphone.png" title="" alt=""></div>
                            </div>
                        </div>
                        <div class="col-sm-6 col-md-4 col-lg-3">
                            <div class="p-2 rounded d-flex align-items-center position-relative hover-scale" style="background-color: #eee;">
                                <div class="col px-4">
                                    <h5 class="mb-0 text-dark"><a href="#" class="stretched-link text-reset">iPhone 12</a></h5><span>2 items</span></div>
                                <div class="avatar avatar-xl hover-scale-in"><img height="80" src="asset/img/electronic/iphone_12.png" title="" alt=""></div>
                            </div>
                        </div>
                        <div class="col-sm-6 col-md-4 col-lg-3">
                            <div class="p-2 rounded d-flex align-items-center position-relative hover-scale" style="background-color: #eee;">
                                <div class="col px-4">
                                    <h5 class="mb-0 text-dark"><a href="#" class="stretched-link text-reset">iPhone 13</a></h5><span>2 items</span></div>
                                <div class="avatar avatar-xl hover-scale-in"><img height="80" src="asset/img/electronic/iphone_13.png" title="" alt=""></div>
                            </div>
                        </div>
                        <div class="col-sm-6 col-md-4 col-lg-3">
                            <div class="p-2 rounded d-flex align-items-center position-relative hover-scale" style="background-color: #eee;">
                                <div class="col px-4">
                                    <h5 class="mb-0 text-dark"><a href="#" class="stretched-link text-reset">iOs 15</a></h5><span>2 items</span></div>
                                <div class="avatar avatar-xl hover-scale-in"><img height="80" src="asset/img/electronic/iphone_ios.png" title="" alt=""></div>
                            </div>
                        </div>
                        <div class="col-sm-6 col-md-4 col-lg-3">
                            <div class="p-2 rounded d-flex align-items-center position-relative hover-scale" style="background-color: #eee;">
                                <div class="col px-4">
                                    <h5 class="mb-0 text-dark"><a href="#" class="stretched-link text-reset">Shop More</a></h5><span>2 items</span></div>
                                <div class="avatar avatar-xl hover-scale-in"><img height="80" src="asset/img/electronic/shop_iphone.png" title="" alt=""></div>
                            </div>
                        </div>
                    </div>
                </div> -->
            </section>
        <section class="section pt-0">
                <div class="container">
                    <div class="section-heading section-heading-01">
                        <div class="row align-items-center">
                            <div class="col-auto col-md-6">
                                <h3 class="h4 mb-0">Sản phẩm</h3>
                            </div>
                            <div class="col-auto col-md-6 text-end"><a href="#">View All <i class="bi bi-arrow-right"></i></a></div>
                        </div>
                    </div>
                    <div class="list-product">
                        <div class="row row-cols-2 row-cols-md-4 row-cols-sm-3 g-4">
	                        <c:forEach items="${listP}" var="o">
	                        
	                            <div class="col">
	                                <a href="detail?pid=${o.id}" title="${o.productName}">
	                                    <div class="card h-100">
	                                        <div class="product-card-8">
	                                        
	                                            <div class="product-card-image">
	                                                <div class="badge-ribbon">
	                                                	<span class="badge bg-danger">Sale</span>
	                                                </div>
	                                                <div class="product-action">
		                                                <a href="#" class="btn btn-outline-primary">
		                                                	<i class="fi-heart" title="Thêm vào giỏ hàng"></i> 
		                                                </a>
		                                                <!-- <a href="#" class="btn btn-outline-primary">
		                                                	<i class="fi-repeat"></i> 
	                                                	</a>
	                                                	<a data-bs-toggle="modal" data-bs-target="#px-quick-view" href="javascript:void(0)"
		                                                        class="btn btn-outline-primary">
		                                                        <i class="fi-eye"></i>
	                                                    </a> -->
                                                    </div>
	                                                <div class="product-media"><a href="detail?pid=${o.id}"><img class="img-fluid" src="asset/img/electronic/air-pod.jpg" title="" alt=""></a></div>
	                                            </div>
	                                            <div class="product-card-info">
	                                                <div class="rating-star text"><i class="bi bi-star-fill active"></i> <i class="bi bi-star-fill active"></i> <i class="bi bi-star-fill active"></i> <i class="bi bi-star-fill active"></i> <i class="bi bi-star"></i></div>
	                                                <h6 class="product-title"><a href="detail?pid=${o.id}">${o.productName}</a></h6>
	                                                <div class="product-price"><span class="text-primary">${o.unitPrice }$</span> 
	                                                <del class="fs-sm text-muted">${o.oldPrice }</del></div>
	                                                <div class="product-cart-btn"><a href="detail?pid=${o.id}" class="btn btn-outline-primary btn-sm w-100"><i class="fi-shopping-cart"></i> Mua ngay</a></div>
	                                            </div>
	                                        </div>
	                                    </div>
	                                </a>
	                            </div>
                            </c:forEach>
                            
                        </div>
                    </div>
                </div>
        </section>
        <!-- End Product section -->
        
        </section> 
        <!-- End Section -->
    </main>
        <%@ include file="footer.jsp"%>
 