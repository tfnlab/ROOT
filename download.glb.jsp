<%@ page language="java" import="org.apache.commons.io.IOUtils,org.apache.commons.io.output.*,java.nio.charset.Charset,java.io.*,java.util.*,java.awt.image.BufferedImage,javax.imageio.ImageIO,java.io.OutputStream,java.io.FileInputStream,java.io.File"%>
<%
      String filename = "/opt/tomcat/webapps/glb/" + request.getParameter("length") + "_"  + request.getParameter("width") + "_"  + request.getParameter("height") + "_"  + request.getParameter("llength") + "_" + request.getParameter("lwidth") + ".glb";
      File file = new File(filename);
      if(!file.exists()){

        Process pweb3 = new ProcessBuilder("python3", "/opt/tomcat/webapps/uploads/gen.py", request.getParameter("length") + "_"  + request.getParameter("width") + "_"  + request.getParameter("height"), request.getParameter("llength") + "_" + request.getParameter("lwidth")).start();

        String stderr = IOUtils.toString(p.getErrorStream(), Charset.defaultCharset());
        String stdout = IOUtils.toString(p.getInputStream(), Charset.defaultCharset());
      }
      ServletContext cntx= request.getServletContext();
      // Get the absolute path of the image
      // retrieve mimeType dynamically
      String mime = cntx.getMimeType(filename);
      if (mime == null) {
        response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
        return;
      }
      response.setContentType(mime);
      BufferedImage image = ImageIO.read(file);
      ImageIO.write(image, "GLB", response.getOutputStream());

 //     response.setContentLength((int)file.length());

//      FileInputStream in = new FileInputStream(file);
//      OutputStream outpng = response.getOutputStream();

      // Copy the contents of the file to the output stream
//       byte[] buf = new byte[1024];
//       int count = 0;
//       while ((count = in.read(buf)) >= 0) {
//         outpng.write(buf, 0, count);
//      }
//    outpng.close();
//    in.close();
%>
