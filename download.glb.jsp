<%@ page language="java" import="org.apache.commons.io.IOUtils,org.apache.commons.io.output.*,java.nio.charset.Charset,java.io.*,java.util.*,java.awt.image.BufferedImage,javax.imageio.ImageIO,java.io.OutputStream,java.io.FileInputStream,java.io.File"%>
<%
      String filename = "/opt/tomcat/webapps/glb/" + request.getParameter("length") + "_"  + request.getParameter("width") + "_"  + request.getParameter("height") + "_"  + request.getParameter("llength") + "_" + request.getParameter("lwidth") + ".glb";
      File file = new File(filename);
      if(!file.exists()){

        Process pweb3 = new ProcessBuilder("python3", "/opt/tomcat/webapps/uploads/gen.py", request.getParameter("length") + "_"  + request.getParameter("width") + "_"  + request.getParameter("height"), request.getParameter("llength") + "_" + request.getParameter("lwidth")).start();

        String stderr = IOUtils.toString(pweb3.getErrorStream(), Charset.defaultCharset());
        String stdout = IOUtils.toString(pweb3.getInputStream(), Charset.defaultCharset());
      }
      ServletContext cntx= request.getServletContext();
      // Get the absolute path of the image
      // retrieve mimeType dynamically

      java.io.FileInputStream fileInputStream=new java.io.FileInputStream(file);
      response.setContentType("APPLICATION/OCTET-STREAM");
      response.setHeader("Content-Disposition","attachment; filename=\"" + filename + "\"");
      int i;
      while ((i=fileInputStream.read()) != -1) {
        out.write(i);
      }
      fileInputStream.close();

//      BufferedImage image = ImageIO.read(file);
//      ImageIO.write(image, "model/gltf-binary", response.getOutputStream());

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
