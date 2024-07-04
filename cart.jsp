<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="header.jsp" %>

    <main>
        <div class="container my-5">
            <h1 class="mb-4">Giỏ hàng</h1>
          
            <div class="row">
              <div class="col-md-8">
                <table class="table">
                  <thead>
                    <tr>
                      <th>Sản phẩm</th>
                      <th>Số lượng</th>
                      <th>Giá</th>
                      <th>Tổng</th>
                      <th></th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td>
                        <div class="d-flex align-items-center">
                          <img src="product-image.jpg" alt="Sản phẩm" class="img-fluid me-3" style="max-width: 80px;">
                          <div>
                            <h5 class="mb-1">Sản phẩm A</h5>
                            <p class="mb-0">Mô tả sản phẩm</p>
                          </div>
                        </div>
                      </td>
                      <td>
                        <div class="input-group">
                          <button class="btn btn-outline-secondary btn-sm" type="button">-</button>
                          <input type="text" class="form-control form-control-sm text-center" value="1">
                          <button class="btn btn-outline-secondary btn-sm" type="button">+</button>
                        </div>
                      </td>
                      <td>$99.99</td>
                      <td>$99.99</td>
                      <td>
                        <button class="btn btn-danger btn-sm">Xóa</button>
                      </td>
                    </tr>
                    <!-- Thêm các sản phẩm khác tại đây -->
                  </tbody>
                </table>
              </div>
          
              <div class="col-md-4">
                <div class="card">
                  <div class="card-body">
                    <h5 class="card-title">Tóm tắt đơn hàng</h5>
                    <ul class="list-unstyled">
                      <li class="d-flex justify-content-between">
                        <span>Tạm tính:</span>
                        <span>$99.99</span>
                      </li>
                      <li class="d-flex justify-content-between">
                        <span>Phí vận chuyển:</span>
                        <span>$5.00</span>
                      </li>
                      <li class="d-flex justify-content-between">
                        <span>Tổng cộng:</span>
                        <span>$104.99</span>
                      </li>
                    </ul>
                    <button class="btn btn-primary w-100">Tiến hành thanh toán</button>
                  </div>
                </div>
              </div>
            </div>
          </div>
    </main>

<%@ include file="footer.jsp"%>