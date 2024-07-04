<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="header.jsp" %>
<div class="container mt-3 mb-4">
    <h1 class="mt-5 mb-4">Checkout Page</h1>

    <div class="row">
        <div class="col-md-6">
            <h2>Order Summary</h2>
            <div class="card mb-3">
                <div class="card-body">
                    <h5 class="card-title">Product Name</h5>
                    <p class="card-text">Product Description and details go here.</p>
                    <p class="card-text">Price: $99.99</p>
                </div>
            </div>
            <!-- Add more products dynamically if needed -->
        </div>

        <div class="col-md-6">
            <h2>Billing Information</h2>
            <form action="confirmPayment" method="post">
                <div class="mb-3">
                    <label for="fullName" class="form-label">Full Name</label>
                    <input type="text" class="form-control" id="fullName" name="fullName" required>
                </div>
                <div class="mb-3">
                    <label for="email" class="form-label">Email Address</label>
                    <input type="email" class="form-control" id="email" name="email" required>
                </div>
                <div class="mb-3">
                    <label for="address" class="form-label">Address</label>
                    <textarea class="form-control" id="address" name="address" rows="3" required></textarea>
                </div>
                <div class="mb-3">
                    <label for="paymentMethod" class="form-label">Payment Method</label>
                    <select class="form-select" id="paymentMethod" name="paymentMethod" required>
                        <option value="">Select Payment Method</option>
                        <option value="creditCard">Credit Card</option>
                        <option value="paypal">PayPal</option>
                    </select>
                </div>
                <button type="submit" class="btn btn-primary">Submit Payment</button>
            </form>
        </div>
    </div>
</div>
<%@ include file="footer.jsp"%>