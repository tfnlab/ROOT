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
        }, 500000);
      }
    });
    </script>
</head>
<body >
    <a-scene  background="color: black" capture-screenshot vr-mode-ui="enabled: false" light="defaultLightsEnabled: false">
      <a-entity light="type: ambient; intensity: 0.2;"></a-entity>
      <a-entity light="type: point; intensity: 0.8; distance: 1000; decay: 2"
          position="0 10 100"></a-entity>
      <a-assets>
        <a-asset-item id="cityModel" src="https://play.tfnlab.com/download.bb.glb.jsp?water=<%=request.getParameter("water")%>&sed=<%=request.getParameter("sed")%>&art=<%=request.getParameter("art")%>&env=<%=request.getParameter("env")%>&head=<%=request.getParameter("head")%>"></a-asset-item>
      </a-assets>
      <a-entity gltf-model="#cityModel" modify-materials rotation="0 35 0"></a-entity>    <!-- "button" -->
      <a-entity id="rig" position="0 80 250" rotation="-20 0 0" spectator="true" >
        <a-entity id="camera" camera="zoom: 4" look-controls></a-entity>
      </a-entity>
    </a-scene>
</body>
</html>
