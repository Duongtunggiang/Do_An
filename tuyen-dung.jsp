<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="header.jsp" %>

    <main >
        <div class="container-tuyendung my-5 w-75 g-0 mx-auto">
            <h1 class="text-center mb-4 mt-5">Tuyển dụng nhân viên Sale</h1>
            <form>
                <div class="mb-3 w-90 m-5 ">
                    <label for="name" class="form-label">Họ và tên</label>
                    <input type="text" class="form-control tuyen-dung " id="name" required>
                </div>
                <div class="mb-3 w-90 m-5">
                    <label for="phone" class="form-label">Số điện thoại liên hệ</label>
                    <input type="tel" class="form-control tuyen-dung" id="phone" required>
                </div>
                <div class="mb-3 w-90 m-5">
                    <label for="email" class="form-label">Email</label>
                    <input type="email" class="form-control tuyen-dung" id="email" required>
                </div>
                <div class="mb-3 w-90 m-5">
                    <label for="cv-method" class="form-label">Cách nộp CV</label>
                    <select class="form-select" id="cv-method" required>
                    <option value="">Chọn cách nộp CV</option>
                    <option value="file">Kéo thả file CV</option>
                    <option value="link">Nhập link CV</option>
                    </select>
                </div>
                <div class="mb-3 w-90 m-5" id="cv-file-container" style="display: none;">
                    <label for="cv-file" class="form-label">Tải file CV lên</label>
                    <input type="file" class="form-control tuyen-dung" id="cv-file" accept=".pdf,.doc,.docx">
                </div>
                <div class="mb-3 w-90 m-5" id="cv-link-container" style="display: none;">
                    <label for="cv-link" class="form-label">Nhập link CV</label>
                    <input type="text" class="form-control tuyen-dung" id="cv-link">
                </div>
                <div class="d-grid mb-3 w-90 m-5">
                    <button type="submit" class="btn btn-primary mb-3">Gửi CV xin việc</button>
                    <a href="index.html" class="btn btn-danger mb-3">Thoat</a>
                </div>
            </form>
        </div>
        <script>
            const cvMethodSelect = document.getElementById('cv-method');
            const cvFileContainer = document.getElementById('cv-file-container');
            const cvLinkContainer = document.getElementById('cv-link-container');

            cvMethodSelect.addEventListener('change', function() {
            if (this.value === 'file') {
                cvFileContainer.style.display = 'block';
                cvLinkContainer.style.display = 'none';
            } else if (this.value === 'link') {
                cvFileContainer.style.display = 'none';
                cvLinkContainer.style.display = 'block';
            } else {
                cvFileContainer.style.display = 'none';
                cvLinkContainer.style.display = 'none';
            }
            });
            
        </script>
    </main>
    <script>
    $(document).ready(function() {
        $('body').css('background-color', '#f2f2f2');

        $('.container-tuyendung').css({
            'width': '66.67%',
            'box-shadow': '0 0 20px rgba(0, 0, 0, 0.1)',
            'border-radius': '8px',
            'background-color': 'rgb(255, 255, 255)'
        });

        $('.tuyen-dung').css({
            'border': '1px solid #606060'
        });
    });
    </script>

<%@ include file="footer.jsp"%>