<%@ page language="java" import="org.apache.commons.io.IOUtils,org.apache.commons.io.output.*,java.nio.charset.Charset,java.io.*,java.util.*,java.awt.image.BufferedImage,javax.imageio.ImageIO,java.io.OutputStream,java.io.FileInputStream,java.io.File"%>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>NFT-<%=request.getParameter("nft")%>-NFT</title>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://aframe.io/releases/1.0.4/aframe.min.js"></script>
  <script src="//cdn.rawgit.com/donmccurdy/aframe-physics-system/v2.1.0/dist/aframe-physics-system.min.js"></script>
  <script src="https://unpkg.com/super-hands@2.0.2/dist/super-hands.min.js"></script>
  <script src="https://unpkg.com/aframe-physics-extras@0.1.2/dist/aframe-physics-extras.min.js"></script>
  <script>
  AFRAME.registerComponent('capture-screenshot', {
    init: function () {
      var el = this.el;
      setTimeout(function () {
         debugger;
         el.components.screenshot.capture("perspective")
      }, 3000000);
    }
  });
  </script>
</head>
<body >
    <a-scene  physics="gravity: 0" background="color: #87ceeb" capture-screenshot vr-mode-ui="enabled: false" light="defaultLightsEnabled: false">
        <a-entity light="type: ambient; intensity: 1;" position="10 10 100"></a-entity>
        <a-entity light="type: point; intensity: 0.8; distance: 10000; decay: 2"
          position="10 10 100"></a-entity>

      <a-assets>
        <a-asset-item id="cityModel" src="https://play.tfnlab.com/download.aw.glb.jsp?nft=<%=request.getParameter("nft")%>" ></a-asset-item>
        <a-mixin id="controller"
                 physics-collider
                 static-body="shape: sphere; sphereRadius: 0.02"
                 super-hands="colliderEvent: collisions;
                              colliderEventProperty: els;
                              colliderEndEvent: collisions;
                              colliderEndEventProperty: clearedEls"
                 collision-filter = "group: hands;
                                     collidesWith: red, blue;
                                     collisionForces: false">
        </a-mixin>
        <a-mixin id="cube" dynamic-body grabbable
            geometry="primitive: box; width: 0.5; height: 0.5; depth: 0.5">
        </a-mixin>
      </a-assets>

      <a-entity gltf-model="#cityModel" modify-materials position="0 0 0" rotation="0 1 0" ></a-entity>    <!-- "button" -->
      <!-- settings pulled in from controller mixin above -->
      <a-entity id="leftHand" hand-controls="hand: left; handModelStyle: lowPoly; color: #ffcccc" mixin="controller"></a-entity>
      <a-entity id="rightHand" hand-controls="hand: right; handModelStyle: lowPoly; color: #ffcccc" mixin="controller"></a-entity>
    </a-scene>
</body>
</html>
