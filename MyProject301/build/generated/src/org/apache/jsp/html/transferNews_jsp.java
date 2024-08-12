package org.apache.jsp.html;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class transferNews_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <style>\n");
      out.write("\n");
      out.write("            body {\n");
      out.write("                font-family: Tahoma;\n");
      out.write("                font-size: 13px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            #menu_top {\n");
      out.write("                background: black;\n");
      out.write("                width: 100%;\n");
      out.write("                height: 100px;\n");
      out.write("                padding-bottom: 10px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .logo img {\n");
      out.write("                width: 100px;\n");
      out.write("                height: 100px;\n");
      out.write("                border-radius: 50%;\n");
      out.write("                padding-left: 5px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .menu li {\n");
      out.write("                display: inline-block;\n");
      out.write("                font-size: 25px;\n");
      out.write("                margin: 30px 30px 30px 30px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .search input {\n");
      out.write("                width: 250px;\n");
      out.write("                height: 40px;\n");
      out.write("                padding: 10px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .search button {\n");
      out.write("                background: blue;\n");
      out.write("                color: white;\n");
      out.write("                width: 70px;\n");
      out.write("                height: 40px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .search {\n");
      out.write("                padding-top: 35px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            #banner img {\n");
      out.write("                width: 100%;\n");
      out.write("                height: 500px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("\n");
      out.write("            #main #left {\n");
      out.write("                width: 70%;\n");
      out.write("                background: yellow;\n");
      out.write("                float: left;\n");
      out.write("                min-height: 600px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            #main #right {\n");
      out.write("                width: 30%;\n");
      out.write("                background: blue;\n");
      out.write("                float: right;\n");
      out.write("                min-height: 600px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            #footer {\n");
      out.write("                text-align: center;\n");
      out.write("                background: gray;\n");
      out.write("                color: wheat;\n");
      out.write("                clear: left;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            #footer p {\n");
      out.write("                color: white;\n");
      out.write("                padding-top: 20px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .giayphep {\n");
      out.write("                margin-top: 50px;\n");
      out.write("                margin-bottom: 20px;\n");
      out.write("\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .lienhe {\n");
      out.write("                margin-top: 10px;\n");
      out.write("                margin-bottom: 20px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .logoBot img {\n");
      out.write("                display: block;\n");
      out.write("                margin-left: auto;\n");
      out.write("                margin-right: auto;\n");
      out.write("                width: 200px;\n");
      out.write("                height: 200px;\n");
      out.write("                border-radius: 50%;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            #footer .logoBot {\n");
      out.write("                border-bottom: 1px solid white;\n");
      out.write("                padding-bottom: 30px;\n");
      out.write("                padding-top: 30px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .khungNews {\n");
      out.write("                width: 100%;\n");
      out.write("                border: 1px solid red;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .khungNews .image img {\n");
      out.write("                width: 100%;\n");
      out.write("\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .khungNews .news h3 {\n");
      out.write("                margin-top: 25px;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </style>\n");
      out.write("\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    <div id=\"menu_top\">\n");
      out.write("        <div class=\"row\">\n");
      out.write("            <div class=\"col-md-3 logo\">\n");
      out.write("                <img src=\"https://ephoto360.com/uploads/effect-data/ephoto360.com/5e8cee199/1t5f48786c57a0f.jpg\">\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("            <div class=\"col-md-6 menu\">\n");
      out.write("                <ul>\n");
      out.write("                    <li><a href=\"#\" title=\"Trang chủ\" class=\"active\"> Trang chủ</a></li>\n");
      out.write("                    <li><a href=\"#\" title=\"Việt Name\"> Việt Nam</a></li>\n");
      out.write("                    <li><a href=\"#\" title=\"Quốc tế\"> Quốc tế</a></li>\n");
      out.write("                    <li><a href=\"#\" title=\"Đăng nhập\"> Đăng nhập</a></li>\n");
      out.write("                </ul>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"col-md-3 search\">\n");
      out.write("                <form>\n");
      out.write("                    <input type=\"text\" placeholder=\"Search in website\">\n");
      out.write("                    <button type=\"submit\">Search</button>\n");
      out.write("                </form>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <div class=\"container\">\n");
      out.write("\n");
      out.write("        <div id=\"main\">\n");
      out.write("            <div id=\"left\">\n");
      out.write("                <div class=\"khungNews\">\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col-md-4 image\">\n");
      out.write("                            <img src=\"https://static.bongda24h.vn/medias/mobile/2022/2/22/video-u23-viet-nam-vs-u23-thai-lan-22-2-2022.jpg\"\n");
      out.write("                                 alt=\"\">\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <div class=\"col-md-8 news\">\n");
      out.write("                            <h4>Chelsea ra sức níu kéo ngôi sao được chính Tuchel đào tạo</h4>\n");
      out.write("                            <h5>23:23:23</h5>\n");
      out.write("                            <h5>Đội chủ sân Stamford Bridge đang lên kế hoạch đàm phán gia hạn với ngôi sao trẻ người\n");
      out.write("                                Anh.</h5>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div id=\"right\">\n");
      out.write("                <h1>Tin Hot</h1>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("    <div id=\"footer\">\n");
      out.write("        <div class=\"logoBot\">\n");
      out.write("            <img src=\"https://static.bongda24h.vn/medias/standard/2021/4/24/lich-thi-dau-bong-da-hom-nay-28-4-2021.jpg\">\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <div class=\"row\">\n");
      out.write("            <div class=\"col-md-7 giayphep\">\n");
      out.write("                <p>Giấy phép: Số 15/GP-TTĐT của Bộ Thông tin - Truyền thông ngày 29/01/2010 và GP số 56/GP-STTTT của Sở\n");
      out.write("                    Thông tin và Truyền thông TP. Hồ Chí Minh cấp ngày 03/09/2021.</p>\n");
      out.write("                <p>Chịu trách nhiệm nội dung: Nhà báo, TS. Võ Danh Hải.\n");
      out.write("                    Cấm sao chép dưới mọi hình thức nếu không có sự chấp thuận bằng văn bản.\n");
      out.write("                    Vận hành và phát triển bởi Công ty Cổ phần Yêu Thể Thao.</p>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"col-md-5 lienhe\">\n");
      out.write("                <h2>Thông tin liên hệ</h2>\n");
      out.write("                <p>E-mail: phamduykhanh@gmail.com</p>\n");
      out.write("                <p>Địa chỉ: Quảng Ninh</p>\n");
      out.write("                <p>Phone: 0123456789</p>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</body>\n");
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
