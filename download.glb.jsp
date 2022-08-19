<%@ page language="java" import="org.apache.commons.io.IOUtils,org.apache.commons.io.output.*,java.nio.charset.Charset,java.io.*,java.util.*,java.awt.image.BufferedImage,javax.imageio.ImageIO,java.io.OutputStream,java.io.FileInputStream,java.io.File"%><%
      String filename = "/opt/tomcat/webapps/glb/house" + request.getParameter("length") + "_"  + request.getParameter("width") + "_"  + request.getParameter("height") + "_"  + request.getParameter("llength") + "_" + request.getParameter("lwidth") + ".gltf";
      File file = new File(filename);
      if(!file.exists()){
        filename = "/opt/tomcat/webapps/glb/house0_0_0_0_0.gltf";
        file = new File(filename);

        //Process pweb3 = new ProcessBuilder("python3", "/opt/tomcat/webapps/uploads/gen.py", request.getParameter("length") + "_"  + request.getParameter("width") + "_"  + request.getParameter("height"), request.getParameter("llength") + "_" + request.getParameter("lwidth")).start();

        //String stderr = IOUtils.toString(pweb3.getErrorStream(), Charset.defaultCharset());
        //String stdout = IOUtils.toString(pweb3.getInputStream(), Charset.defaultCharset());

      }

      response.setContentType("model/gltf+json");
      response.setHeader("Content-disposition", "attachment; filename=studiocity.gltf");

      File f = file;
      FileInputStream in = null;
      int bytesRead = 0;
      byte[] b = new byte[1024];

      try{
      in = new FileInputStream(f);

      do{
      bytesRead = in.read(b, 0, b.length);
      response.getOutputStream().write(b, 0, bytesRead);
      }while(bytesRead == b.length);

      response.getOutputStream().flush();
      }
      finally{
      if(in != null) in.close();
      }

      // Get the absolute path of the image

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
