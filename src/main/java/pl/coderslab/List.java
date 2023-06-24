package pl.coderslab;

import com.mysql.cj.xdevapi.DeleteStatement;
import pl.coderslab.entity.User;
import pl.coderslab.entity.UserDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

@WebServlet("/user/list")
public class List extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setCharacterEncoding(StandardCharsets.UTF_8.name());
        resp.setContentType("text/html;charset=utf8");
        req.setCharacterEncoding(StandardCharsets.UTF_8.name());

        UserDao userDao = new UserDao();
        User[] users = userDao.printAll();
//        for (User user : users) {
            req.setAttribute("users", users);
//            req.setAttribute("userName", user.getUserName());
//            req.setAttribute("userEmail", user.getEmail());
//            req.setAttribute("userPassword", user.getPassword());
//        }

        getServletContext().getRequestDispatcher("/user/list.jsp")
                .forward(req, resp);
    }
}
