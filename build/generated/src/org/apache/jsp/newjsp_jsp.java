package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class newjsp_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=UTF-8");
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3\" crossorigin=\"anonymous\">\n");
      out.write("        <!-- JavaScript Bundle with Popper -->\n");
      out.write("        <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js\" integrity=\"sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <header class=\"p-3 bg-dark text-white\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start\">\n");
      out.write("                    <a href=\"/\" class=\"d-flex align-items-center mb-2 mb-lg-0 text-white text-decoration-none\">\n");
      out.write("                        <svg class=\"bi me-2\" width=\"40\" height=\"32\" role=\"img\" aria-label=\"Bootstrap\"><use xlink:href=\"#bootstrap\"></use></svg>\n");
      out.write("                    </a>\n");
      out.write("\n");
      out.write("                    <ul class=\"nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0\">\n");
      out.write("                        <li><a href=\"#\" class=\"nav-link px-2 text-secondary\">Home</a></li>\n");
      out.write("                        <li><a href=\"#\" class=\"nav-link px-2 text-white\">Features</a></li>\n");
      out.write("                        <li><a href=\"#\" class=\"nav-link px-2 text-white\">Pricing</a></li>\n");
      out.write("                        <li><a href=\"#\" class=\"nav-link px-2 text-white\">FAQs</a></li>\n");
      out.write("                        <li><a href=\"#\" class=\"nav-link px-2 text-white\">About</a></li>\n");
      out.write("                    </ul>\n");
      out.write("\n");
      out.write("                    <form class=\"col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3\">\n");
      out.write("                        <input type=\"search\" class=\"form-control form-control-dark\" placeholder=\"Search...\" aria-label=\"Search\">\n");
      out.write("                    </form>\n");
      out.write("\n");
      out.write("                    <div class=\"text-end\">\n");
      out.write("                        <button type=\"button\" class=\"btn btn-outline-light me-2\">Login</button>\n");
      out.write("                        <button type=\"button\" class=\"btn btn-warning\">Sign-up</button>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </header>\n");
      out.write("    </body>\n");
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
