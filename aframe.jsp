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
        }, 1000);
      }
    });
  </script>
    <script src="https://aframe.io/releases/1.0.4/aframe.min.js"></script>
</head>
<body >
    <a-scene background="color: #ECECEC" capture-screenshot>
      <a-assets>
        <a-asset-item id="cityModel" src="https://cdn.aframe.io/test-models/models/glTF-2.0/virtualcity/VC.gltf"></a-asset-item>
      </a-assets>
      <a-entity gltf-model="#cityModel" modify-materials></a-entity>    <!-- "button" -->
    </a-scene>
</body>
</html>
