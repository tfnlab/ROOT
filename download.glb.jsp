<%@ page language="java" contentType="applicaton/octet-stream" import="org.apache.commons.io.IOUtils,org.apache.commons.io.output.*,java.nio.charset.Charset,java.io.*,java.util.*,java.awt.image.BufferedImage,javax.imageio.ImageIO,java.io.OutputStream,java.io.FileInputStream,java.io.File"%>
<%
      String filename = "/opt/tomcat/webapps/glb/house" + request.getParameter("length") + "_"  + request.getParameter("width") + "_"  + request.getParameter("height") + "_"  + request.getParameter("llength") + "_" + request.getParameter("lwidth") + ".glb";
      File file = new File(filename);
      if(!file.exists()){

        Process pweb3 = new ProcessBuilder("python3", "/opt/tomcat/webapps/uploads/gen.py", request.getParameter("length") + "_"  + request.getParameter("width") + "_"  + request.getParameter("height"), request.getParameter("llength") + "_" + request.getParameter("lwidth")).start();

        String stderr = IOUtils.toString(pweb3.getErrorStream(), Charset.defaultCharset());
        String stdout = IOUtils.toString(pweb3.getInputStream(), Charset.defaultCharset());
      }

      int status=0;
      byte b[]=new byte[1024];
      FileInputStream in=null;
      ServletOutputStream out2=null;
      try
      {
        response.setHeader("content-disposition","attachment; filename=d.glb");
        in=new FileInputStream(filename);
        out2=response.getOutputStream();
          while(status != -1 )
          {
            status=in.read(b);
            out2.write(b);
          }
        out2.flush();
      }
      catch(Exception e)
      {
        System.out.println(e);
        response.sendRedirect("downError.jsp");
      }
      finally
      {
        if(in!=null)
        in.close();
        if(out2 !=null)
        out2.close();
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
