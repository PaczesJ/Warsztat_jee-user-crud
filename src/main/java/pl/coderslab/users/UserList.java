package pl.coderslab.users;

import pl.coderslab.helpClasses.UserDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/user/list")
public class UserList extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        UserDao daoUser = new UserDao();
        request.setAttribute("users", daoUser.findAll());

        getServletContext().getRequestDispatcher("/users/usersList.jsp")
                .forward(request,response);

    }
}
