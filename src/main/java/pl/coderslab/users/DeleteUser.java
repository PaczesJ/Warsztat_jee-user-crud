package pl.coderslab.users;

import pl.coderslab.helpClasses.User;
import pl.coderslab.helpClasses.UserDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/user/delete")
public class DeleteUser extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        UserDao dao = new UserDao();
        dao.delete(Integer.parseInt(id));
        response.sendRedirect(request.getContextPath() + "/user/list");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
