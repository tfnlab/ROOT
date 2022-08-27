<%@ page language="java" import="org.apache.commons.io.IOUtils,org.apache.commons.io.output.*,java.nio.charset.Charset,java.io.*,java.util.*,java.awt.image.BufferedImage,javax.imageio.ImageIO,java.io.OutputStream,java.io.FileInputStream,java.io.File"%>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://aframe.io/releases/1.0.4/aframe.min.js"></script>
    <script>
    AFRAME.registerComponent('capture-screenshot', {
      init: function () {
        var el = this.el;
        setTimeout(function () {
           debugger;
           el.components.screenshot.capture("perspective")
        }, 100);
      }
    });
    </script>
</head>
<body >
    <a-scene background="color: #ECECEC" capture-screenshot vr-mode-ui="enabled: false">
      <a-assets>
        <a-asset-item id="cityModel" src="https://play.tfnlab.com/download.fs.glb.jsp?water=<%=request.getParameter("water")%>&sed=<%=request.getParameter("sed")%>&art=0&env=<%=request.getParameter("env")%>"></a-asset-item>
      </a-assets>
      <a-entity gltf-model="#cityModel" modify-materials rotation="0 40 0"></a-entity>    <!-- "button" -->
      <a-entity id="rig" position="-50 30 0" rotation="-30 -90 0" spectator="true" >
        <a-entity id="camera" camera="zoom: 3" look-controls></a-entity>
      </a-entity>
    </a-scene>
</body>
</html>
