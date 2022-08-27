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
    <a-scene background="color: #ECECEC" capture-screenshot >
      <a-assets>
        <a-asset-item id="cityModel" src="https://play.tfnlab.com/download.glb.jsp?length=1&width=3&height=5&llength=8&lwidth=5"></a-asset-item>
      </a-assets>
      <a-entity gltf-model="#cityModel" modify-materials></a-entity>    <!-- "button" -->
      <a-entity id="rig" position="-20 20 -20" rotation="0 -90 0">
        <a-entity id="camera" camera look-controls></a-entity>
      </a-entity>
    </a-scene>
</body>
</html>
