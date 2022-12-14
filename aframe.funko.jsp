<%@ page language="java" import="org.apache.commons.io.IOUtils,org.apache.commons.io.output.*,java.nio.charset.Charset,java.io.*,java.util.*,java.awt.image.BufferedImage,javax.imageio.ImageIO,java.io.OutputStream,java.io.FileInputStream,java.io.File"%>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>NFT-<%=request.getParameter("nft")%>-NFT</title>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="js/aframe.min.js"></script>
  <script>
  AFRAME.registerComponent('capture-screenshot', {
    init: function () {
      var el = this.el;
      setTimeout(function () {
         debugger;
         el.components.screenshot.capture("perspective")
      }, 300);
    }
  });
  </script>
</head>
<body >
    <a-scene  background="color: #87ceeb" capture-screenshot vr-mode-ui="enabled: false" light="defaultLightsEnabled: false">
      <a-entity light="type: point; intensity: 0.8; distance: 10000; decay: 2"
          position="10 10 10"></a-entity>

      <a-assets>
        <a-asset-item id="cityModel" src="https://play.tfnlab.com/download.funko.glb.jsp?head=<%=request.getParameter("head")%>&shi=<%=request.getParameter("shi")%>&m=<%=request.getParameter("m")%>&eyes=<%=request.getParameter("eyes")%>&ears=<%=request.getParameter("ears")%>&hp=<%=request.getParameter("hp")%>&sho=<%=request.getParameter("sho")%>&hb=<%=request.getParameter("hb")%>" ></a-asset-item>
      </a-assets>
      <a-entity gltf-model="#cityModel" modify-materials position="0 0 0" rotation="0 -90 0" ></a-entity>    <!-- "button" -->
      <a-entity id="rig" position="0 4.5 5" rotation="-15 0 0" spectator="true" >
        <a-entity id="camera" camera="zoom: 1" look-controls  wasd-controls="acceleration: 1000" ></a-entity>
      </a-entity>
    </a-scene>
</body>
</html>
