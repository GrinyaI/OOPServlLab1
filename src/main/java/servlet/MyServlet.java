package servlet;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MyServlet extends HttpServlet {
    public MyServlet() {
        super();
    }
    public void init() {}
    public void destroy() {}
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println(request);
        System.out.println(response);
        String genre = request.getParameter("genre");
        String book = request.getParameter("bookSelector");

        File file = new File("C:\\Users\\grine\\IdeaProjects\\OOPServlLab1\\src\\main\\resources\\textFiles\\"+genre+"\\"+book+".txt");
        StringBuilder content = new StringBuilder();

        try (BufferedReader reader = new BufferedReader(new FileReader(file))) {
            String line;
            while ((line = reader.readLine()) != null) {
                content.append(line).append("\n");
            }
        } catch (IOException e) {
            e.printStackTrace();
        }

        String fileContent = content.toString();

        response.setContentType("text/html; charset=UTF-8");
        response.setCharacterEncoding("UTF-8");

        request.setAttribute("fileContent", fileContent);
        request.getRequestDispatcher("fileDisplay.jsp").forward(request,response);
    }
}