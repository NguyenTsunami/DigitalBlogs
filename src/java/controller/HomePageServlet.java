/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dal.ArticleDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modal.Article;

/**
 *
 * @author thuy
 */
public class HomePageServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet HomePageServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet HomePageServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ArticleDAO da = new ArticleDAO();

        ArrayList<Article> top5 = da.getTop5RecentNews();
        request.setAttribute("top5", top5);

        Article mostRecentNews = top5.get(0);
        request.setAttribute("mostRecentNews", mostRecentNews);

        if (request.getParameter("main") != null && request.getParameter("main").equals("listfound")) {
            String keyword = request.getParameter("keyword");
            //get page
            int page;
            if (request.getParameter("page") != null) {
                page = Integer.parseInt(request.getParameter("page"));
            } else {
                page = 1;
            }

            //get begin and end index of news via page
            int totalNewsEachPage = 3;
            int begin = (page - 1) * totalNewsEachPage + 1;
            int end = (page - 1) * totalNewsEachPage + totalNewsEachPage;

            //get amount news found and total page
            int amountNews = da.getAmountNewsByTitle(keyword);
            int totalPage = amountNews / totalNewsEachPage + (amountNews % totalNewsEachPage == 0 ? 0 : 1);

            //for each case:
            if (amountNews == 0) {
                //notify not found
                request.setAttribute("notify", "Not found any artiles that title contains '" + keyword + "'!");
            } else {
                //send list found
                ArrayList<Article> list = da.getNewsByTitle(keyword, begin, end);
                request.setAttribute("list", list);
            }

            //finally
            request.setAttribute("totalPage", totalPage);
            request.setAttribute("page", page);
            request.setAttribute("totalNewsEachPage", totalNewsEachPage);
            request.setAttribute("main", "listfound");
        } else {
            Article currentNews = new Article();
            if (request.getParameter("id") == null) {
                currentNews = top5.get(0);
            } else {
                currentNews = da.getNewsByID(Integer.parseInt(request.getParameter("id")));
            }
            request.setAttribute("currentNews", currentNews);
            request.setAttribute("main", "detail");
        }

        request.getRequestDispatcher("homepage.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
