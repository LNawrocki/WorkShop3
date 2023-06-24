package pl.coderslab;

import pl.coderslab.entity.UserDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/user/delete")
public class Delete extends HttpServlet {
    int userID;
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        userID = Integer.parseInt(req.getParameter("userID"));
        UserDao userDao = new UserDao();
        userDao.delete(userID);

        resp.sendRedirect("/user/list");
    }
}
