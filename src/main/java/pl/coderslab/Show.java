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

@WebServlet("/user/show")
public class Show extends HttpServlet {
    private int userID;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        resp.setCharacterEncoding(StandardCharsets.UTF_8.name());
        resp.setContentType("text/html;charset=utf8");
        req.setCharacterEncoding(StandardCharsets.UTF_8.name());

        userID = Integer.parseInt(req.getParameter("userID"));

        UserDao userDao = new UserDao();
        User userShow = userDao.read(userID);
        req.setAttribute("userShow", userShow);

        getServletContext().getRequestDispatcher("/user/show.jsp")
                .forward(req, resp);
    }
}
