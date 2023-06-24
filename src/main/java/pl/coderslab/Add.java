package pl.coderslab;

import pl.coderslab.entity.User;
import pl.coderslab.entity.UserDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.nio.charset.StandardCharsets;

@WebServlet("/user/add")
public class Add extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setCharacterEncoding(StandardCharsets.UTF_8.name());
        resp.setContentType("text/html;charset=utf8");
        req.setCharacterEncoding(StandardCharsets.UTF_8.name());

        getServletContext().getRequestDispatcher("/user/add.jsp")
                .forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setCharacterEncoding(StandardCharsets.UTF_8.name());
        resp.setContentType("text/html;charset=utf8");
        req.setCharacterEncoding(StandardCharsets.UTF_8.name());

        String userName = req.getParameter("name");
        String userEmail = req.getParameter("email");
        String userPassword = req.getParameter("password");

        User user = new User();
        user.setUserName(userName);
        user.setEmail(userEmail);
        user.setPassword(userPassword);

        UserDao userDao = new UserDao();
        userDao.create(user);

        resp.sendRedirect(req.getContextPath() + "/user/list");

    }
}
