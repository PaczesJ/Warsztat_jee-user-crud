package pl.coderslab.users;

import pl.coderslab.helpClasses.User;
import pl.coderslab.helpClasses.UserDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/user/show")
public class ShowUser extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        UserDao dao = new UserDao();
        User readMe = dao.read(Integer.parseInt(id));
        request.setAttribute("user", readMe);
        getServletContext().getRequestDispatcher("/users/showUser.jsp")
                .forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
