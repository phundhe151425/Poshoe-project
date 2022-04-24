package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_if_test;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_if_test = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_if_test.release();
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <style>\n");
      out.write("            @use postcss-preset-env {\n");
      out.write("                stage: 0;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            /* helpers/accessibility.css */\n");
      out.write("\n");
      out.write("            .invisible {\n");
      out.write("                left: -999px;\n");
      out.write("                overflow: hidden;\n");
      out.write("                position: absolute;\n");
      out.write("                top: -999px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            /* helpers/align.css */\n");
      out.write("\n");
      out.write("            .align {\n");
      out.write("                display: grid;\n");
      out.write("                place-items: center;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            /* layout/base.css */\n");
      out.write("\n");
      out.write("            :root {\n");
      out.write("                --body-background-color: #fdbabb;\n");
      out.write("                --body-color: #97adc6;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            body {\n");
      out.write("                background-color:#fdbabb;\n");
      out.write("                color: black);\n");
      out.write("                margin: 0;\n");
      out.write("                min-block-size: 100vh;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            /* modules/anchor.css */\n");
      out.write("\n");
      out.write("            a {\n");
      out.write("                color: inherit;\n");
      out.write("                outline: 0;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            /* modules/icon.css */\n");
      out.write("\n");
      out.write("            .icons {\n");
      out.write("                display: none;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .icon {\n");
      out.write("                block-size: 1em;\n");
      out.write("                display: inline-block;\n");
      out.write("                fill: currentcolor;\n");
      out.write("                inline-size: 1em;\n");
      out.write("                vertical-align: middle;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .icon--2x {\n");
      out.write("                font-size: 2rem;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            /* modules/image.css */\n");
      out.write("\n");
      out.write("            svg {\n");
      out.write("                max-inline-size: 100%;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            /* modules/navigation.css */\n");
      out.write("\n");
      out.write("            :root {\n");
      out.write("                --navigation-background-color: #f0f6ff;\n");
      out.write("                --navigation-border-radius: 0.25em;\n");
      out.write("\n");
      out.write("                --navigation-anchor-padding: 1.5em;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .navigation {\n");
      out.write("                background-color: #fdbabb;\n");
      out.write("                border-radius: 10px;\n");
      out.write("                box-shadow: 0 0.5em 1em rgba(0, 0, 0, 0.3);\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .navigation ul {\n");
      out.write("                list-style: none;\n");
      out.write("                margin: 0;\n");
      out.write("                padding-left: 50px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .navigation a {\n");
      out.write("                display: block;\n");
      out.write("                padding: 30px;\n");
      out.write("                position: relative;\n");
      out.write("                text-decoration: none;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .navigation a:focus::after,\n");
      out.write("            .navigation a:hover::after {\n");
      out.write("                opacity: 1;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .navigation a::after {\n");
      out.write("                block-size: auto;\n");
      out.write("                /*box-shadow: 0 0.5em 1em rgba(0, 0, 0, 0.3);*/\n");
      out.write("                content: '';\n");
      out.write("                inline-size: 100%;\n");
      out.write("                left: 0;\n");
      out.write("                opacity: 0;\n");
      out.write("                position: absolute;\n");
      out.write("                top: 0;\n");
      out.write("                transition: opacity 0.3s;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .navigation--inline ul {\n");
      out.write("                display: flex;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("        </style>\n");
      out.write("        <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3\" crossorigin=\"anonymous\">\n");
      out.write("        <!-- JavaScript Bundle with Popper -->\n");
      out.write("        <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js\" integrity=\"sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Po Shoes</title>\n");
      out.write("        <link href=\"//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css\" rel=\"stylesheet\" id=\"bootstrap-css\">\n");
      out.write("        <script src=\"//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js\"></script>\n");
      out.write("        <script src=\"//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js\"></script>\n");
      out.write("        <!------ Include the above in your HEAD tag ---------->\n");
      out.write("        <link href=\"https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css\" rel=\"stylesheet\" integrity=\"sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN\" crossorigin=\"anonymous\">\n");
      out.write("        <link href=\"css/style.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"css/detail.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css\">\n");
      out.write("        <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js\"></script>\n");
      out.write("        <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js\"></script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("        <header class=\"p-3 text-white\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start\">\n");
      out.write("                    <a href=\"/\" class=\"d-flex align-items-center mb-2 mb-lg-0 text-white text-decoration-none\">\n");
      out.write("                        <svg class=\"bi me-2\" width=\"40\" height=\"32\" role=\"img\" aria-label=\"Bootstrap\"><use xlink:href=\"#bootstrap\"></use></svg>\n");
      out.write("                    </a>\n");
      out.write("\n");
      out.write("                    <ul class=\"nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0\">\n");
      out.write("                        <li><a href=\"home\" class=\"nav-link px-2 text-info\"><h3>Po Shoes</h3></a></li>\n");
      out.write("                        <li><a href=\"home\" class=\"nav-link px-2 text-black\"><h3>Home</h3></a></li>\n");
      out.write("                        <li><a href=\"list\" class=\"nav-link px-2 text-black\"><h3>Product</h3></a></li>\n");
      out.write("                        <li><a href=\"#\" class=\"nav-link px-2 text-black\"><h3>Cart</h3></a></li>\n");
      out.write("                    </ul>\n");
      out.write("\n");
      out.write("                    <form class=\"col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3\" action=\"home\" method=\"post\">\n");
      out.write("                        <input class=\"form-control mr-sm-2\" name=\"key\" type=\"text\" placeholder=\"Search\" aria-label=\"Search....\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${param.key}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\">\n");
      out.write("                        <button class=\"btn btn-secondary my-2 my-sm-0\" type=\"submit\">Search</button>\n");
      out.write("                    </form>\n");
      out.write("\n");
      out.write("                    <div class=\"text-end\">\n");
      out.write("                        ");
      if (_jspx_meth_c_if_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                        ");
      if (_jspx_meth_c_if_1(_jspx_page_context))
        return;
      out.write("   \n");
      out.write("                        ");
      if (_jspx_meth_c_if_2(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                        \n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </header>\n");
      out.write("\n");
      out.write("        ");
      if (_jspx_meth_c_if_3(_jspx_page_context))
        return;
      out.write("            \n");
      out.write("\n");
      out.write("        <!-- Footer -->\n");
      out.write("        <footer class=\"text-light\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-md-3 col-lg-4 col-xl-3\">\n");
      out.write("                        <h5>Po Shoes</h5>\n");
      out.write("                        <hr class=\"bg-white mb-2 mt-0 d-inline-block mx-auto w-25\">\n");
      out.write("                        <p class=\"mb-0\">\n");
      out.write("\n");
      out.write("                        </p>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("<!--                    <div class=\"col-md-2 col-lg-2 col-xl-2 mx-auto\">\n");
      out.write("                        <h5>Informations</h5>\n");
      out.write("                        <hr class=\"bg-white mb-2 mt-0 d-inline-block mx-auto w-25\">\n");
      out.write("                        <ul class=\"list-unstyled\">\n");
      out.write("                            <li><a href=\"\">Link 1</a></li>\n");
      out.write("                            <li><a href=\"\">Link 2</a></li>\n");
      out.write("                            <li><a href=\"\">Link 3</a></li>\n");
      out.write("                            <li><a href=\"\">Link 4</a></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </div>-->\n");
      out.write("\n");
      out.write("                    <div class=\"col-md-5 col-lg-2 col-xl-2 mx-auto\">\n");
      out.write("                        <h5>Address</h5>\n");
      out.write("                        <hr class=\"bg-white mb-2 mt-0 d-inline-block mx-auto w-25\">\n");
      out.write("                        <ul class=\"list-unstyled\">\n");
      out.write("                            <li>Hà nội</li>\n");
      out.write("                            <li>Hồ Chí Minh</li>\n");
      out.write("                            <li>Đà Nẵng</li>\n");
      out.write("                            <li>Nam Định</li>\n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <div class=\"col-md-4 col-lg-3 col-xl-3\">\n");
      out.write("                        <h5>Contact</h5>\n");
      out.write("                        <hr class=\"bg-white mb-2 mt-0 d-inline-block mx-auto w-25\">\n");
      out.write("                        <ul class=\"list-unstyled\">\n");
      out.write("                            <li><img src=\"images/fb-icon.png\" alt=\"\"/>Po Shoes</li>\n");
      out.write("                            <li><img src=\"images/email-icon.png\" alt=\"\"/>phundhe151425@fpt.edu.vn</li>\n");
      out.write("                            \n");
      out.write("                            <li><img src=\"images/phone-icon.png\" alt=\"\"/> 0123456789</li>\n");
      out.write("                            <li><img src=\"images/phone-icon.png\" alt=\"\"/> 9876543210</li>\n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-12 copyright mt-3\">\n");
      out.write("                        <p class=\"float-left\">\n");
      out.write("                            <a href=\"#\">Back to top</a>\n");
      out.write("                        </p>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </footer>\n");
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

  private boolean _jspx_meth_c_if_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_0 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_0.setPageContext(_jspx_page_context);
    _jspx_th_c_if_0.setParent(null);
    _jspx_th_c_if_0.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sessionScope.account==null}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_0 = _jspx_th_c_if_0.doStartTag();
    if (_jspx_eval_c_if_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("                            <button type=\"button\" class=\"btn btn-info me-2\"><a href=\"login\">Login</a></button>\n");
        out.write("                        ");
        int evalDoAfterBody = _jspx_th_c_if_0.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_0);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_0);
    return false;
  }

  private boolean _jspx_meth_c_if_1(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_1 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_1.setPageContext(_jspx_page_context);
    _jspx_th_c_if_1.setParent(null);
    _jspx_th_c_if_1.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${account!=null}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_1 = _jspx_th_c_if_1.doStartTag();
    if (_jspx_eval_c_if_1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("                            \n");
        out.write("                        ");
        int evalDoAfterBody = _jspx_th_c_if_1.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_1);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_1);
    return false;
  }

  private boolean _jspx_meth_c_if_2(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_2 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_2.setPageContext(_jspx_page_context);
    _jspx_th_c_if_2.setParent(null);
    _jspx_th_c_if_2.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sessionScope.account!=null}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_2 = _jspx_th_c_if_2.doStartTag();
    if (_jspx_eval_c_if_2 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("                            <h3 style=\"color: while\">\n");
        out.write("                                ");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${account.name}", java.lang.String.class, (PageContext)_jspx_page_context, null));
        out.write("\n");
        out.write("                            </h3>\n");
        out.write("                            <button type=\"button\" class=\"btn btn-warning\"><a class=\"nav-link\" href=\"logout\">Logout</a></button>\n");
        out.write("                        ");
        int evalDoAfterBody = _jspx_th_c_if_2.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_2.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_2);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_2);
    return false;
  }

  private boolean _jspx_meth_c_if_3(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    HttpServletRequest request = (HttpServletRequest)_jspx_page_context.getRequest();
    HttpServletResponse response = (HttpServletResponse)_jspx_page_context.getResponse();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_3 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_3.setPageContext(_jspx_page_context);
    _jspx_th_c_if_3.setParent(null);
    _jspx_th_c_if_3.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${requestScope.pageInclude!=null}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_3 = _jspx_th_c_if_3.doStartTag();
    if (_jspx_eval_c_if_3 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("            ");
        org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, (java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${requestScope.pageInclude}", java.lang.String.class, (PageContext)_jspx_page_context, null), out, false);
        out.write("\n");
        out.write("        ");
        int evalDoAfterBody = _jspx_th_c_if_3.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_3.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_3);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_3);
    return false;
  }
}
