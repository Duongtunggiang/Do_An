package controll;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import context.DBContext;
import entity.MySession;
import entity.User;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	response.setContentType("text/html");
    	// Lấy giá trị tên đăng nhập và mật khẩu từ request
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Kiểm tra xem tên đăng nhập và mật khẩu có được nhập vào không
        if (username == null || username.isEmpty() || password == null || password.isEmpty()) {
            // Hiển thị alert với thông báo lỗi
            String errorMessage = "Vui lòng nhập đầy đủ tên đăng nhập và mật khẩu.";
            response.setContentType("text/javascript");
            response.getWriter().write("alert('" + errorMessage + "');");
            response.getWriter().flush();
            return;
        }

        try (Connection connection = DBContext.getConnection();
             PreparedStatement statement = connection.prepareStatement("SELECT * FROM users WHERE username = ? AND password = ?")) {
            statement.setString(1, username);
            statement.setString(2, password);

            try (ResultSet resultSet = statement.executeQuery()) {
            	// Trong doPost()
            	if (resultSet.next()) {
            	    // Lưu thông tin người dùng vào session
            	    HttpSession session = request.getSession();
            	    User user = new User(0, username, password, "", "", 0, "", "", "");
            	    session.setAttribute("username", user);
            	    session.setAttribute("isLoggedIn", true);

            	    // Lưu session vào MySession
            	    MySession.getInstance(session);

            	    // Chuyển hướng người dùng đến trang "Home"
            	    response.sendRedirect("Home");
            	    return;
            	} else {
                    // Hiển thị alert với thông báo lỗi
                    String errorMessage = "Thông tin đăng nhập không chính xác. Vui lòng thử lại.";
                    response.setContentType("text/javascript");
                    response.getWriter().write("alert('" + errorMessage + "');");
                    response.getWriter().flush();
                }
            }
        } catch (SQLException e) {
            // Xử lý ngoại lệ SQLExceptionHandler
            e.printStackTrace();
        }
    }
}