package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class header_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_set_var_value_nobody;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_if_test;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_set_var_value_nobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_if_test = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_set_var_value_nobody.release();
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
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Po Shoes</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <nav class=\"navigation navigation--inline\" >\n");
      out.write("            <a class=\"navbar-brand\" href=\"home\">Po Shoes</a>\n");
      out.write("            <ul style=\"text-align: center\">\n");
      out.write("                <li style=\"text-align: center\">\n");
      out.write("                    <a class=\"nav-link\" href=\"home\">Home</a>\n");
      out.write("                </li>\n");
      out.write("\n");
      out.write("                <li>\n");
      out.write("                    <a class=\"nav-link\" href=\"list\">Product</a>\n");
      out.write("                </li>\n");
      out.write("\n");
      out.write("                <li>\n");
      out.write("                    <form action=\"home\" method=\"post\" class=\"form-inline my-2 my-lg-0\">\n");
      out.write("                        <div class=\"input-group input-group-sm\">\n");
      out.write("                            <input name=\"key\" type=\"text\"  placeholder=\"Search...\"  class=\"form-control\" aria-label=\"\" aria-describedby=\"inputGroup-sizing-sm\">\n");
      out.write("                            <div class=\"input-group-append\">\n");
      out.write("                                <button type=\"submit\" class=\"btn btn-secondary btn-number\">\n");
      out.write("                                    <img src=\"images/search_icon.png\" width=\"30px\" height=\"30px\"/>\n");
      out.write("                                </button>\n");
      out.write("                                \n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                    </form>\n");
      out.write("                    ");
      if (_jspx_meth_c_set_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                    </li>\n");
      out.write("                    <li>\n");
      out.write("                        <a class=\"btn btn-success btn-sm ml-3\" href=\"show\">\n");
      out.write("                            <i class=\"fa fa-shopping-cart\"></i> Cart\n");
      out.write("                            <span class=\"badge badge-light\">3</span>\n");
      out.write("                        </a>\n");
      out.write("                    </li>\n");
      out.write("                    <li>\n");
      out.write("                    ");
      if (_jspx_meth_c_if_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                    ");
      if (_jspx_meth_c_if_1(_jspx_page_context))
        return;
      out.write("   \n");
      out.write("                </li>\n");
      out.write("                <li>\n");
      out.write("                    ");
      if (_jspx_meth_c_if_2(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                </li>   \n");
      out.write("\n");
      out.write("            </ul>\n");
      out.write("\n");
      out.write("        </nav>\n");
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

  private boolean _jspx_meth_c_set_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:set
    org.apache.taglibs.standard.tag.rt.core.SetTag _jspx_th_c_set_0 = (org.apache.taglibs.standard.tag.rt.core.SetTag) _jspx_tagPool_c_set_var_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.SetTag.class);
    _jspx_th_c_set_0.setPageContext(_jspx_page_context);
    _jspx_th_c_set_0.setParent(null);
    _jspx_th_c_set_0.setVar("k");
    _jspx_th_c_set_0.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${requestScope.key}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int _jspx_eval_c_set_0 = _jspx_th_c_set_0.doStartTag();
    if (_jspx_th_c_set_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_0);
      return true;
    }
    _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_0);
    return false;
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
        out.write("                        <a class=\"nav-link\" href=\"login\">Login</a>\n");
        out.write("                    ");
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
        out.write("                        <h3 style=\"color: while\">\n");
        out.write("                            ");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${account.name}", java.lang.String.class, (PageContext)_jspx_page_context, null));
        out.write("\n");
        out.write("                        </h3>\n");
        out.write("                    ");
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
        out.write("                    <li class=\"nav-item\">\n");
        out.write("                        <a class=\"nav-link\" href=\"logout\">Logout</a>\n");
        out.write("                    </li>\n");
        out.write("                ");
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
}
