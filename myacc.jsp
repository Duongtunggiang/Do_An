<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="header.jsp" %>
    <div class="container-fluid d-flex justify-content-center align-items-center min-vh-100 bg-light">
        <div class="row w-75 g-0">
            <div class="col-md-12 position-relative">
            	<div>
            		<img src="https://ttkglobalventures.com/wp-content/uploads/2024/01/hinh-anh-mau-xam_103624256.jpg" alt="Cover Image" class="img-fluid rounded-top" style="max-height: 200px; width: 100%; object-fit: cover;">
            	</div>
                <div class="profile-picture-wrapper position-absolute bottom-1 start-50 translate-middle">
				    <a href="#" class="profile-picture rounded-circle">
				        <c:choose>
				            <c:when test="${not empty User.img}">
				                <img src="${User.img}" alt="Profile Picture" class="rounded-circle profile-picture">
				            </c:when>
				            <c:otherwise>
				                <div class="bg-light profile-picture rounded-circle">
				                    <img src="https://bom.so/WkROvI" alt="Profile Picture" class="rounded-circle">
				                </div>
				            </c:otherwise>
				        </c:choose>
				    </a>
				    <div class="profile-menu dropdown-menu">
					    <c:choose>
					        <c:when test="${not empty User.img}">
					            <a href="#" class="dropdown-item view-avatar">View Avatar</a>
					            <a href="#" class="dropdown-item update-avatar">Update Avatar</a>
					            <a href="#" class="dropdown-item delete-avatar">Delete Avatar</a>
					        </c:when>
					        <c:otherwise>
					            <a href="#" class="dropdown-item update-avatar">Update Avatar</a>
					        </c:otherwise>
					    </c:choose>
					</div>
				</div>
				<div class="cover-image-menu position-absolute top-0 end-0 m-2">
				    <button class="btn btn-sm btn-light dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
				        <i class="bi bi-three-dots"></i>
				    </button>
				    <div class="dropdown-menu">
				        <c:choose>
				            <c:when test="${not empty User.coverImg}">
				                <a href="#" class="dropdown-item view-cover">View Cover Image</a>
				                <a href="#" class="dropdown-item update-cover">Update Cover Image</a>
				                <a href="#" class="dropdown-item delete-cover">Delete Cover Image</a>
				            </c:when>
				            <c:otherwise>
				                <a href="#" class="dropdown-item update-cover">Update Cover Image</a>
				            </c:otherwise>
				        </c:choose>
				    </div>
				</div>
            </div>
            <div class="col-md-12 bg-white p-5 rounded-bottom shadow">
                <div class="d-flex flex-column align-items-start">
                    <h2>${User.username }</h2>
                    <p class="text-secondary">Customer: ${User.fullName}</p>
                    <p>Email: ${User.email }</p>
                    <p>Phone: 0${User.phoneNumber }</p>
                    <p>Address: ${User.address }</p>
                    <div class="d-flex mt-4">
                        <a href="#" class="btn btn-primary me-3" data-bs-toggle="modal" data-bs-target="#editUserModal">Edit</a>
                        <a href="${pageContext.request.contextPath}/Home" class="btn btn-secondary">Back to Home</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
	<!-- Modal for viewing avatar -->
    <div class="modal fade" id="avatarModal" tabindex="-1" aria-labelledby="avatarModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered modal-lg">
            <div class="modal-content">
                <!-- <div class="modal-body d-flex justify-content-center"> -->
                    <img src="${User.img}" alt="Profile Picture" class="img-fluid">
                <!-- </div> -->
            </div>
        </div>
    </div>
    <!-- Modal for editing user information -->
	<div class="modal fade" id="editUserModal" tabindex="-1" aria-labelledby="editUserModalLabel" aria-hidden="true">
	    <div class="modal-dialog modal-dialog-centered">
	        <div class="modal-content">
	            <div class="modal-header">
	                <h5 class="modal-title" id="editUserModalLabel">Edit User Information</h5>
	                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	            </div>
	            <div class="modal-body">
	                <form action="${pageContext.request.contextPath}/UpdateUserServlet" method="post">
	                    <input type="hidden" name="userId" value="${User.id}">
	                    <div class="mb-3">
	                        <label for="fullName" class="form-label">Full Name</label>
	                        <input type="text" class="form-control" id="fullName" name="fullName" value="${User.fullName}">
	                    </div>
	                    <div class="mb-3">
	                        <label for="address" class="form-label">Address</label>
	                        <input type="text" class="form-control" id="address" name="address" value="${User.address}">
	                    </div>
	                    <div class="mb-3">
	                        <label for="phoneNumber" class="form-label">Phone Number</label>
	                        <input type="tel" class="form-control" id="phoneNumber" name="phoneNumber" value="${User.phoneNumber}">
	                    </div>
	                    <div class="mb-3">
	                        <label for="email" class="form-label">Email</label>
	                        <input type="email" class="form-control" id="email" name="email" value="${User.email}">
	                    </div>
	                    <div class="modal-footer">
	                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
	                        <button type="submit" class="btn btn-primary">Update</button>
	                    </div>
	                </form>
	            </div>
	        </div>
	    </div>
	</div>
<%@ include file="footer.jsp"%>