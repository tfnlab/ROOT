<%@ page language="java" import="java.lang.Thread,org.apache.commons.io.IOUtils,org.apache.commons.io.output.*,java.nio.charset.Charset,java.io.*,java.util.*,java.awt.image.BufferedImage,javax.imageio.ImageIO,java.io.OutputStream,java.io.FileInputStream,java.io.File"%><%
      String filename = "/var/lib/tomcat9/webapps/glb/house" + request.getParameter("length") + "_"  + request.getParameter("width") + "_"  + request.getParameter("height") + "_"  + request.getParameter("llength") + "_" + request.getParameter("lwidth") + ".gltfmetagascarglb.glb";
      File file = new File(filename);
      if(!file.exists()){
//        filename = "/var/lib/tomcat9/webapps/glb/house0_0_0_0_0.gltf";
//        file = new File(filename);
//        Thread newThread = new Thread(() -> {
//              Process pweb3 = new ProcessBuilder("python3", "/var/lib/tomcat9/webapps/uploads/gen.py", request.getParameter("length") + "_"  + request.getParameter("width") + "_"  + request.getParameter("height"), request.getParameter("llength") + "_" + request.getParameter("lwidth")).start();
//              String stderr = IOUtils.toString(pweb3.getErrorStream(), Charset.defaultCharset());
//              String stdout = IOUtils.toString(pweb3.getInputStream(), Charset.defaultCharset());
  //      });
  //      newThread.start();
      }
      response.setHeader("Access-Control-Allow-Origin", "*");
      response.setHeader("Access-Control-Allow-Methods", "GET, OPTIONS");
      response.setHeader("Access-Control-Allow-Headers","Origin, X-Requested-With, Content-Type, Accept, X-Auth-Token, X-Csrf-Token, WWW-Authenticate, Authorization");
      response.setHeader("Access-Control-Allow-Credentials", "false");
      response.setHeader("Access-Control-Max-Age", "3600");
      response.setContentType("model/gltf-binary");
      response.setHeader("Content-disposition", "attachment; filename=studiocity.glb");

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
