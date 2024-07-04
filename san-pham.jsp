<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="header.jsp" %>

    <main>
        <div class="mb-3 mt-2">
            <nav aria-label="breadcrumb" style="margin-left: 10px;">
                <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/Home">Trang chủ</a></li>
                  <li class="breadcrumb-item">Sản phẩm</li>
                  <li class="breadcrumb-item active" aria-current="page">${detail.productName}</li>
                </ol>
              </nav>
        </div>
        <div class="container">
            <!-- <section class="section pt-0"></section> -->
            <section class="section pt-0 z-index-1 position-relative">
                <div class="container my-5">
                    <div class="row chitiet ">
                        <div class="col-md-6 mt-3">
                          <div id="mainImage" class="mb-3">
                            <img src="${detail.img}" alt="Product Image" class="img-fluid">
                          </div>
                          <div class="d-flex justify-content-center" id="thumbnailList">
                            <div class="mx-2 thumbnail-image">
                              <img src="https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcS_AXvQa2IaBGLRfPQGbz6l0vldbRzMIBtxtCcgmvFefaSF5OyUBMed47Up4kX3FZEQ8iQE43AuEpAS_beAwKr2Clh4RH_UjOBJetoOmIWFqtpRQVfmksUY1lWUgZvu0A&usqp=CAc" alt="Thumbnail 1" class="img-fluid">
                            </div>
                            <div class="mx-2 thumbnail-image">
                              <img src="https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcR7EOFoq2yuF8-5-Opw-qipjyLoRHFh91KY8iYqPqAZpAE2Cie-4NDq1oJ-sYnUWbJ3FusV_e5kSvk8zH9u-1tOEdyeKKhFeuC7K93-bxEjO6v80haO9OPiJ_kk7tTWIfkPXeAA5TKtkrM&usqp=CAc" alt="Thumbnail 2" class="img-fluid">
                            </div>
                            <div class="mx-2 thumbnail-image">
                              <img src="https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcRep1G12hXRnveSugsdqfmEAbwYaStBigCtjQGGOsJvqZyeU55lZNPTtsXrtPHV_arcehNeNfdBojonIp6eZNbGa7SAoAHNXzL1woLDqxGoUcdb2XoROsAmI31-Mc72&usqp=CAc" alt="Thumbnail 3" class="img-fluid">
                            </div>
                            <div class="mx-2 thumbnail-image">
                              <img src="https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcT-3aDWuiSWp9rSrj5tDd7c1KpRgt1dkcov2R79KZYsXXCbkT6BeZLJwi_9UYAJj3IfcfgIuaQKm0G_C4QMLFw8Vo991OsHibZeWwkvfpE-2YKRZRFZjrA0YYbS46Zbc9RabHWQGbM&usqp=CAc" alt="Thumbnail 4" class="img-fluid">
                            </div>
                          </div>
                        </div>
                        <script type="text/javascript">
                        $(document).ready(function() {
                        	  var carouselImages = $('.carousel-image');
                        	  var mainImageDisplay = $('#mainImageDisplay');
                        	  var currentIndex = 0;

                        	  function updateCarousel() {
                        	    carouselImages.removeClass('active');
                        	    carouselImages.eq(currentIndex).addClass('active');
                        	    mainImageDisplay.attr('src', carouselImages.eq(currentIndex).attr('src'));
                        	  }
 
                        	  function moveCarousel() {
                        	    currentIndex = (currentIndex + 1) % carouselImages.length;
                        	    updateCarousel();
                        	  }

                        	  setInterval(moveCarousel, 300);
                        	});
                        </script>
                        <div class="col-md-6 mt-3 d-flex flex-column justify-content-center">
                          <h1>${detail.productName}</h1>
                          <span>Giá: </span><p class="text-danger fs-2 fw-bold">${detail.unitPrice }</p>
                          <p class="text-muted text-decoration-line-through">${detail.oldPrice }</p>
                          <div class="mb-3">
                            <label for="color" class="form-label">Màu:</label>
                            <select class="form-select" id="color">
                              <option selected>Chọn màu</option>
                              <option value="1">Black</option>
                              <option value="2">White</option>
                              <option value="3">Red</option>
                              <option value="4">Blue</option>
                            </select>
                          </div>
                          <div class="mb-3">
                            <label for="storage" class="form-label">Bộ nhớ:</label>
                            <select class="form-select" id="storage">
                              <option selected>Chọn bộ nhớ</option>
                              <option value="1">64GB</option>
                              <option value="2">128GB</option>
                              <option value="3">256GB</option>
                              <option value="4">512GB</option>
                            </select>
                          </div>
                          <div class="d-grid gap-2 d-md-block mb-3">
						    <form action="payment" method="post"> <!-- Điều hướng đến servlet xử lý thanh toán -->
						        <input type="hidden" name="pid" value="${detail.id}"> <!-- Truyền id sản phẩm -->
						        <button class="btn btn-primary" type="submit" name="paymentMethod" value="buyNow">Buy Now</button>
						    </form>
						    <button class="btn btn-secondary">Pay in Installments</button>
						    <button class="btn btn-success">Cash on Delivery</button>
						</div>

                        </div>
                      </div>
                      <script>
						    $(document).ready(function() {
						        $('.chitiet').css({
						            'box-shadow': '0 0 20px rgba(0, 0, 0, 0.1)',
						            'border-radius': '8px',
						            'background-color': 'rgb(255, 255, 255)'
						        });
						
						        
						    });
					    </script>
                    <div class="row mt-5">
                      <div class="col-md-5 ">
                        <h2>Product Description</h2>
                        <c:forEach items="${newss}" var="n">
			        		<p class="gioithieu-p">${n.pnews}</p>
			        	</c:forEach>
			        	<a href="#" class="xem-them">Xem thêm</a>
                      </div>
                      
                      <div class="col-md-3 ">
                        <h2>Warranty</h2>
                        <p>1 year manufacturer's warranty</p>
                        <c:forEach items="${gift}" var="g">
                    		<p class="gom"><i class="fa fa-check-circle"></i> ${g.giftName}</p>
                    	</c:forEach>
                      </div>
                      <script type="text/javascript">
                      $(document).ready(function() {
                    	  // Điều chỉnh chiều cao của phần "Product Description"
                    	  var newsHeight = $('.gioithieu-p').height();
                    	  var maxHeight = newsHeight * 0.6; // 60% chiều cao của phần "Product Description"
                    	  $('.gioithieu-p').css('max-height', maxHeight + 'px');
                    	  $('.gioithieu-p').css('overflow', 'hidden');

                    	  $('.xem-them').click(function(e) {
                    	    e.preventDefault();
                    	    $('.gioithieu-p').css('max-height', 'none');
                    	    $('.gioithieu-p').css('overflow', 'auto');
                    	    $(this).hide();
                    	  });

                    	  // Điều chỉnh chiều cao của phần "Warranty"
                    	  $('.chitiet').css('height', 'auto');
                    	});
                      </script>
                      <div class="col-md-3 ">
                        <h2>Product Details</h2>
                        <c:forEach items="${de }" var="dem">
		                    <p><b>Công nghệ màn hình:</b> ${dem.screenTechnology}</p>
		                    <%-- <p><b>Tần số quét:</b> ${de.}</p> --%>
		                    <p><b>Kích thước màn hình:</b> ${dem.screenResolution}</p>
		                    <p><b>Hệ điều hành: </b>${dem.operatingSystem}</p>
		                    <p><b>Vi xử lý: </b>${dem.processor }</p>
		                    <!-- <p><b>Sim: </b>1 nano SIM và 1 eSIM</p> -->
		                </c:forEach>
		                <a class="xem-chi-tiet btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">Xem chi tiết</a>
                      </div>
                    </div>
                  </div>
                  <!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script> -->
                  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
                    <script>
                    $(document).ready(function() {
                    var $thumbnailList = $('#thumbnailList');
                    var $thumbnails = $thumbnailList.find('.thumbnail-image img');
                    var $mainImage = $('#mainImage img');

                    // Automatically scroll the thumbnail list
                    var currentIndex = 0;
                    var thumbnailWidth = $thumbnails.first().outerWidth(true);
                    var thumbnailListWidth = $thumbnailList.width();
                    var maxIndex = Math.floor((thumbnailListWidth - 10) / thumbnailWidth) - 1;

                    setInterval(function() {
                        $thumbnailList.animate({
                        scrollLeft: currentIndex * thumbnailWidth
                        }, 500);
                        currentIndex = (currentIndex + 1) % (maxIndex + 1);
                    }, 3000);

                    // Update the main image when a thumbnail is clicked
                    $thumbnails.click(function() {
                        $mainImage.attr('src', $(this).attr('src'));
                    });

                    // Update the main image when the center thumbnail comes into view
                    function updateMainImage() {
                        var scrollLeft = $thumbnailList.scrollLeft();
                        var centerIndex = Math.floor(scrollLeft / thumbnailWidth);
                        $mainImage.attr('src', $thumbnails.eq(centerIndex).attr('src'));
                    }

                    $thumbnailList.scroll(function() {
                        updateMainImage();
                    });
                    });
                    </script>
            </section>
            </div>
        </div>
    </main>
    <!-- Modal -->
		<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog modal-lg">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="exampleModalLabel">Chi tiết sản phẩm</h5>
		        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		      </div>
		      <div class="modal-body">
		        <c:forEach items="${de}" var="dem">
		          <div class="row">
		            <div class="col-md-6">
		              <p><strong>Công nghệ màn hình:</strong> ${dem.screenTechnology}</p>
		              <p><strong>Kích thước màn hình:</strong> ${dem.screenSize}</p>
		              <p><strong>Chất lượng kính màn hình:</strong> ${dem.glassQuality}</p>
		              <p><strong>Độ phân giải màn hình:</strong> ${dem.screenResolution}</p>
		            </div>
		            <div class="col-md-6">
		              <p><strong>Độ phân giải camera sau:</strong> ${dem.rearCameraResolution}</p>
		              <p><strong>Độ phân giải camera trước:</strong> ${dem.frontCameraResolution}</p>
		              <p><strong>Tính năng camera:</strong> ${dem.cameraFeatures}</p>
		              <p><strong>Khả năng quay video:</strong> ${dem.videoRecordingCapability}</p>
		            </div>
		          </div>
		          <div class="row">
		            <div class="col-md-6">
		              <p><strong>Vi xử lý:</strong> ${dem.processor}</p>
		              <p><strong>Chip:</strong> ${dem.chip}</p>
		              <p><strong>Hệ điều hành:</strong> ${dem.operatingSystem}</p>
		              <p><strong>RAM:</strong> ${dem.ram}</p>
		            </div>
		            <div class="col-md-6">
		              <p><strong>Bộ nhớ trong:</strong> ${dem.storage}</p>
		              <p><strong>Hỗ trợ mạng di động:</strong> ${dem.mobileNetworkSupport}</p>
		              <p><strong>Kết nối WiFi:</strong> ${dem.wifiSupport}</p>
		              <p><strong>Kết nối Bluetooth:</strong> ${dem.bluetoothSupport}</p>
		            </div>
		          </div>
		          <div class="row">
		            <div class="col-md-6">
		              <p><strong>Hỗ trợ GPS:</strong> ${dem.gpsSupport}</p>
		              <p><strong>Cổng kết nối:</strong> ${dem.connectivityPorts}</p>
		              <p><strong>Dung lượng pin:</strong> ${dem.batteryCapacity}</p>
		            </div>
		          </div>
		        </c:forEach>
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Đóng</button>
		      </div>
		    </div>
		  </div>
		</div>

<%@ include file="footer.jsp"%>