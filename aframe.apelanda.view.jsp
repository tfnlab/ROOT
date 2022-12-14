<%@ page language="java" import="org.apache.commons.io.IOUtils,org.apache.commons.io.output.*,java.nio.charset.Charset,java.io.*,java.util.*,java.awt.image.BufferedImage,javax.imageio.ImageIO,java.io.OutputStream,java.io.FileInputStream,java.io.File"%>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>NFT-<%=request.getParameter("nft")%>-NFT</title>
  <script src="https://unpkg.com/aframe-environment-component@1.3.1/dist/aframe-environment-component.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://aframe.io/releases/1.0.4/aframe.min.js"></script>

</head>
<body >
    <a-scene  background="color: #87ceeb" vr-mode-ui="enabled: true" light="defaultLightsEnabled: false">
        <a-entity light="type: ambient; intensity: 1;"></a-entity>
      <a-entity light="type: point; intensity: 0.8; distance: 10000; decay: 2"
          position="10 10 10"></a-entity>

      <a-assets>
        <a-asset-item id="cityModel" src="https://play.tfnlab.com/download.apelanda.glb.jsp?land=<%=request.getParameter("land")%>&head=<%=request.getParameter("head")%>&eyes=<%=request.getParameter("eyes")%>&body=<%=request.getParameter("body")%>&grd=<%=request.getParameter("grd")%>&isl=<%=request.getParameter("isl")%>" ></a-asset-item>
      </a-assets>
      <a-entity gltf-model="#cityModel" modify-materials position="0 0 0" rotation="0 1 0" ></a-entity>    <!-- "button" -->
      <a-entity id="rig" position="0 6 37.5" rotation="0 0 0" spectator="true" >
        <a-entity id="camera" camera="zoom: 1" look-controls  wasd-controls="acceleration: 1000" ></a-entity>
      </a-entity>
    </a-scene>
</body>
</html>
