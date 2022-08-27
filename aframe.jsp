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
        }, 200000);
      }
    });
    </script>
</head>
<body >
    <a-scene background="color: #ECECEC" capture-screenshot vr-mode-ui="enabled: false">
      <a-sky color="#000000"></a-sky>
      <a-assets>
        <a-asset-item id="cityModel" src="https://play.tfnlab.com/download.fs.glb.jsp?art=0&cat=0&sed=0&env=0"></a-asset-item>
      </a-assets>
      <a-entity gltf-model="#cityModel" modify-materials></a-entity>    <!-- "button" -->
      <a-entity id="rig" position="-25 14 -25" rotation="0 -135 0">
        <a-entity id="camera" camera look-controls></a-entity>
      </a-entity>
    </a-scene>
</body>
</html>
