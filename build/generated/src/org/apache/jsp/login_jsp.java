package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, false, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

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
      out.write("\n");
      out.write("\n");
      out.write("<center>\n");
      out.write("    <div>\n");
      out.write("        <h3 style='background-color: #000066 ;padding: 5px;margin: 0px;color: white;font-weight: lighter'>\n");
      out.write("            EXPERT ADVICE SYSTEM LOGIN</h3>\n");
      out.write("</div>\n");
      out.write("</center>\n");
      out.write("\n");
      out.write("\n");
      out.write("<center>\n");
      out.write("    <div>\n");
      out.write("        <h3 style='background-color: #8e24aa ;padding: 5px;margin: 0px;color: white;font-weight: lighter'>\n");
      out.write("            <a href=\"login.jsp\">\n");
      out.write("                <img src=\"res/login.png\"/></a>\n");
      out.write("            LOGIN HERE:</h3>\n");
      out.write("</div>\n");
      out.write("</center>\n");
      out.write("<center>\n");
      out.write("<div style=\"margin-left: 80px;margin-top: 30px;\">\n");
      out.write("    <h5 style=\"font-weight: bold\">FILL LOGIN DETAILS:</h5>\n");
      out.write("<form action=\"authenticate.jsp\" method=\"post\">\n");
      out.write("    <fieldset style=\"width: 50%; text-align: center;\">\n");
      out.write("        <div class=\"row\" style=\"margin-bottom: 0px\">\n");
      out.write("        <div class=\"input-field col s7\">\n");
      out.write("            <input class=\"validate\" type=\"text\" name=\"lid\" required placeholder=\"USER ID*\">\n");
      out.write("        </div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"row\" style=\"margin-bottom: 0px;margin-top: 0px\">\n");
      out.write("        <div class=\"input-field col s7\">\n");
      out.write("            <input class=\"validate\" type=\"password\" name=\"pass\" required placeholder=\"PASSWORD*\">\n");
      out.write("        </div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"row\">\n");
      out.write("        <button class=\"btn waves-effect waves-light green\" type=\"submit\" name=\"action\">LOGIN\n");
      out.write("  </button>\n");
      out.write("        <button style=\"margin-left: 20px\" class=\"btn waves-effect waves-light red\" type=\"reset\" name=\"clear\">RESET\n");
      out.write("  </button>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("                     \n");
      out.write("\n");
      out.write("            <span class=\"banner\">*</span> Marked fields are mandatory\n");
      out.write("    </fieldset>\n");
      out.write("    <font color=\"blue\" size=\"4\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${requestScope.msg}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</font>\n");
      out.write("</form>\n");
      out.write("</div>\n");
      out.write("</center>\n");
      out.write("<center>\n");
      out.write("        <h5 style=\"font-weight: bold\">IF NOT REGISTERED THEN</h5>\n");
      out.write("</center>\n");
      out.write("\n");
      out.write("<footer class=\"page-footer teal violet\">\n");
      out.write("    \n");
      out.write("<font style=\"margin-left: 40px;\" color=\"white\" size=\"4\">Are you looking for answers?</font>\n");
      out.write("<font style=\"margin-left: 680px;\" color=\"white\" size=\"4\">Do you think you can lead people unto the light??</font>     \n");
      out.write("<br><br><font color=\"white\" size=\"6\">Well then, look no more!!</font>    \n");
      out.write("<font style=\"margin-left: 740px;\" color=\"white\" size=\"6\">Join us now!!</font>\n");
      out.write("<br>\n");
      out.write("\n");
      out.write("<a href=\"signup.jsp\">\n");
      out.write("    <button style=\"margin-right: 420px\" class=\"btn waves-effect waves-light orange\" type=\"submit\" name=\"clear\">SIGN-UP AS UESR\n");
      out.write("    </button></a>\n");
      out.write("\n");
      out.write("<a href=\"signexpert.jsp\">\n");
      out.write("    <button style=\"margin-left: 520px\" class=\"btn waves-effect waves-light orange\" type=\"submit\" name=\"clear\">SIGN-UP AS EXPERT\n");
      out.write("    </button></a>\n");
      out.write("\n");
      out.write("    <div class=\"footer-copyright\">\n");
      out.write("      <div class=\"container\">\n");
      out.write("       <a class=\"brown-text text-lighten-3\" >ANKAN & KUSHAL</a>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("</footer>");
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
