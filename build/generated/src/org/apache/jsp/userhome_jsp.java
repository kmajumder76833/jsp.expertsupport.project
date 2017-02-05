package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class userhome_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
if(session.getAttribute("lId")!=null && session.getAttribute("role").equals("user")){
      out.write("\n");
      out.write("<head>\n");
      out.write("    \n");
      out.write("  <link rel=\"stylesheet\" href=\"css/materialize.min.css\">\n");
      out.write("  \n");
      out.write("  <link href=\"http://fonts.googleapis.com/icon?family=Material+Icons\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("  \n");
      out.write("  <script src=\"js/materialize.min.js\"></script>\n");
      out.write("          \n");
      out.write("</head>\n");
      out.write("<div>\n");
      out.write("        <h3 style='background-color: #C62828 ;padding: 5px;margin: 0px;color: white;font-weight: lighter'>\n");
      out.write("            USER HOME</h3>\n");
      out.write("</div>\n");
      out.write("    <div>\n");
      out.write("    <nav class=\"deep-orange\">\n");
      out.write("        <div class=\"nav-wrapper\" style=\"padding: 5px;margin: 0px;color: white;font-weight: lighter\">\n");
      out.write("          <ul class=\"left hide-on-med-and-down\">\n");
      out.write("          <a href=\"logout.jsp\" class=\"brand-logo right\"><font style=\"font-weight: bold\">LOGOUT</font></a>\n");
      out.write("          <li><a href=\"userhome.jsp\">HOME</a></li>\n");
      out.write("          <li><a href=\"viewinfo.jsp\">VIEW INFO </a></li>\n");
      out.write("          <li><a href=\"askques.jsp\">ASK QUESTION</a></li>\n");
      out.write("          <li><a href=\"viewquesuser1.jsp\">VIEW QUESTIONS</a></li>\n");
      out.write("          <li><a href=\"viewans2.jsp\">VIEW ANSWERS TO YOUR QUESTIONS</a></li>\n");
      out.write("          <li><a href=\"searchans.jsp\">SEARCH SPECIFIC ANSWERS</a></li>\n");
      out.write("        </ul>\n");
      out.write("      </div>\n");
      out.write("    </nav>\n");
      out.write("  </div>\n");
      out.write("<h3 style='background-color: #f0f0f0 ;padding: 175px;margin: 10px;color: white;font-weight: lighter'>\n");
      out.write("            </h3>\n");
      out.write("            <footer class=\"page-footer teal brown\" >\n");
      out.write("    <div class=\"container\">\n");
      out.write("      <div class=\"row\">\n");
      out.write("        <div class=\"col l6 s12\">\n");
      out.write("          <h5 class=\"white-text\">ABOUT THE WEBSITE:</h5>\n");
      out.write("          <p class=\"grey-text text-lighten-4\">We just want to clear your doubt.Don't hesitate to ask.Our Expert will always be with you </p>\n");
      out.write("          \n");
      out.write("    </div>\n");
      out.write("    <div class=\"footer-copyright\">\n");
      out.write("      <div class=\"container\">\n");
      out.write("       <a class=\"brown-text text-lighten-3\" >ANKAN & KUSHAL</a>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("  </footer>\n");

}
else if(session.getAttribute("lId")==null){
    request.setAttribute("msg", "Oh hello there! Please login to access to this!");

      out.write("\n");
      out.write(" \n");
      out.write(" ");
      if (true) {
        _jspx_page_context.forward("error.jsp");
        return;
      }
      out.write('\n');

}
else if(session.getAttribute("role").equals("user")==false){
    request.setAttribute("msg", "Well it seems this page was not meant for you! Please login as user to access it!");

      out.write("\n");
      out.write("    ");
      if (true) {
        _jspx_page_context.forward("error.jsp");
        return;
      }
      out.write('\n');
}
      out.write('\n');
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
