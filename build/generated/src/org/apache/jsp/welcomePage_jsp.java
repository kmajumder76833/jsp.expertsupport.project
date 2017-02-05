package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class welcomePage_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("  <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"/>\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no\"/>\n");
      out.write("  <title>Parallax Template - Materialize</title>\n");
      out.write("\n");
      out.write("  <!-- CSS  -->\n");
      out.write("  <link href=\"https://fonts.googleapis.com/icon?family=Material+Icons\" rel=\"stylesheet\">\n");
      out.write("  <link href=\"css/materialize.css\" type=\"text/css\" rel=\"stylesheet\" media=\"screen,projection\"/>\n");
      out.write("  <link href=\"css/style.css\" type=\"text/css\" rel=\"stylesheet\" media=\"screen,projection\"/>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("  <nav class=\"blue\" role=\"navigation\">\n");
      out.write("    <div class=\"nav-wrapper container\">\n");
      out.write("      <a id=\"logo-container\" href=\"login.jsp\"  class=\"brand-logo\">HOME</a>\n");
      out.write("      <ul class=\"right hide-on-med-and-down\">\n");
      out.write("        <li><a href=\"welcomepage.jsp\">HELLO!!</a></li>\n");
      out.write("      </ul>\n");
      out.write("\n");
      out.write("      <ul id=\"nav-mobile\" class=\"side-nav\">\n");
      out.write("          <li><a  style=\"color: white\" href=\"welcomepage.jsp\">HELLO!!</a></li>\n");
      out.write("      </ul>\n");
      out.write("      <a href=\"#\" data-activates=\"nav-mobile\" class=\"button-collapse\"><i class=\"material-icons\">menu</i></a>\n");
      out.write("    </div>\n");
      out.write("  </nav>\n");
      out.write("\n");
      out.write("  <div id=\"index-banner\" class=\"parallax-container\">\n");
      out.write("    <div class=\"section no-pad-bot\">\n");
      out.write("      <div class=\"container\">\n");
      out.write("        <br><br>\n");
      out.write("        <h1 class=\"header center teal-text text-lighten-2\">EXPERT SUPPORT SYSTEM</h1>\n");
      out.write("        <div class=\"row center\">\n");
      out.write("          <h5 class=\"header col s12 light\">A modern responsive front-end framework based on Material Design</h5>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"row center\">\n");
      out.write("          <a href=\"login.jsp\" id=\"download-button\" class=\"btn-large waves-effect waves-light teal lighten-1\">ENTER THE WEBSITE</a>\n");
      out.write("        </div>\n");
      out.write("        <br><br>\n");
      out.write("\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("      <div class=\"parallax\"><img src=\"wallpapers/addemp.jpg\" alt=\"Unsplashed background img 1\"></div>\n");
      out.write("  </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("  <div class=\"container\">\n");
      out.write("    <div class=\"section\">\n");
      out.write("\n");
      out.write("      <!--   Icon Section   -->\n");
      out.write("      <div class=\"row\">\n");
      out.write("        <div class=\"col s12 m4\">\n");
      out.write("          <div class=\"icon-block\">\n");
      out.write("            <h2 class=\"center brown-text\"><i class=\"material-icons\">flash_on</i></h2>\n");
      out.write("            <h5 class=\"center\">Speeds up development</h5>\n");
      out.write("\n");
      out.write("            <p class=\"light\">We did most of the heavy lifting for you to provide a default stylings that incorporate our custom components. Additionally, we refined animations and transitions to provide a smoother experience for developers.</p>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <div class=\"col s12 m4\">\n");
      out.write("          <div class=\"icon-block\">\n");
      out.write("            <h2 class=\"center brown-text\"><i class=\"material-icons\">group</i></h2>\n");
      out.write("            <h5 class=\"center\">User Experience Focused</h5>\n");
      out.write("\n");
      out.write("            <p class=\"light\">By utilizing elements and principles of Material Design, we were able to create a framework that incorporates components and animations that provide more feedback to users. Additionally, a single underlying responsive system across all platforms allow for a more unified user experience.</p>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <div class=\"col s12 m4\">\n");
      out.write("          <div class=\"icon-block\">\n");
      out.write("            <h2 class=\"center brown-text\"><i class=\"material-icons\">settings</i></h2>\n");
      out.write("            <h5 class=\"center\">Easy to work with</h5>\n");
      out.write("\n");
      out.write("            <p class=\"light\">We have provided detailed documentation as well as specific code examples to help new users get started. We are also always open to feedback and can answer any questions a user may have about Materialize.</p>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("  <div class=\"parallax-container valign-wrapper\">\n");
      out.write("    <div class=\"section no-pad-bot\">\n");
      out.write("      <div class=\"container\">\n");
      out.write("        <div class=\"row center\">\n");
      out.write("          <h5 class=\"header col s12 light\">A modern responsive front-end framework based on Material Design</h5>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("      <div class=\"parallax\"><img src=\"wallpapers/BK4.jpg\" alt=\"Unsplashed background img 2\"></div>\n");
      out.write("  </div>\n");
      out.write("\n");
      out.write("  <div class=\"container\">\n");
      out.write("    <div class=\"section\">\n");
      out.write("\n");
      out.write("      <div class=\"row\">\n");
      out.write("        <div class=\"col s12 center\">\n");
      out.write("          <h3><i class=\"mdi-content-send brown-text\"></i></h3>\n");
      out.write("          <h4>Contact Us</h4>\n");
      out.write("          <p class=\"left-align light\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam scelerisque id nunc nec volutpat. Etiam pellentesque tristique arcu, non consequat magna fermentum ac. Cras ut ultricies eros. Maecenas eros justo, ullamcorper a sapien id, viverra ultrices eros. Morbi sem neque, posuere et pretium eget, bibendum sollicitudin lacus. Aliquam eleifend sollicitudin diam, eu mattis nisl maximus sed. Nulla imperdiet semper molestie. Morbi massa odio, condimentum sed ipsum ac, gravida ultrices erat. Nullam eget dignissim mauris, non tristique erat. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;</p>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("  <div class=\"parallax-container valign-wrapper\">\n");
      out.write("    <div class=\"section no-pad-bot\">\n");
      out.write("      <div class=\"container\">\n");
      out.write("        <div class=\"row center\">\n");
      out.write("          <h5 class=\"header col s12 light\">A modern responsive front-end framework based on Material Design</h5>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"parallax\"><img src=\"bk5.jpg\" alt=\"Unsplashed background img 3\"></div>\n");
      out.write("  </div>\n");
      out.write("\n");
      out.write("  <footer class=\"page-footer teal\">\n");
      out.write("    <div class=\"container\">\n");
      out.write("      <div class=\"row\">\n");
      out.write("        <div class=\"col l6 s12\">\n");
      out.write("          <h5 class=\"white-text\">WEBSITE BIO </h5>\n");
      out.write("          <p class=\"grey-text text-lighten-4\">We are a team of college students working on this project like it's our full time job. Any amount would help support and continue development on this project and is greatly appreciated.</p>\n");
      out.write("\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"footer-copyright\">\n");
      out.write("      <div class=\"container\">\n");
      out.write("      <a class=\"brown-text text-lighten-3\" href=\"http://materializecss.com\">ANKAN & KUSHAL</a>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("  </footer>\n");
      out.write("\n");
      out.write("\n");
      out.write("  <!--  Scripts-->\n");
      out.write("  <script src=\"https://code.jquery.com/jquery-2.1.1.min.js\"></script>\n");
      out.write("  <script src=\"js/materialize.js\"></script>\n");
      out.write("  <script src=\"js/init.js\"></script>\n");
      out.write("\n");
      out.write("  </body>\n");
      out.write("</html>\n");
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
