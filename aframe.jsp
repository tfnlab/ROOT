<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
    <script>
      AFRAME.registerComponent('modify-materials', {
        init: function () {
          // Wait for model to load.
          this.el.addEventListener('model-loaded', () => {
            // Grab the mesh / scene.
            const obj = this.el.getObject3D('mesh');
            // Go over the submeshes and modify materials we want.
            obj.traverse(node => {
              if (node.name.indexOf('ship') !== -1) {
                node.material.color.set('red');
              }
            });
          });
        }
      });
    </script>
    <script>

            function downloadImage()
            {
                var canvas = document.getElementById("cityModel");
                var image = canvas.toDataURL();

                var aLink = document.createElement('a');
                var evt = document.createEvent("HTMLEvents");
                evt.initEvent("click");
                aLink.download = 'image.png';
                aLink.href = image;
                aLink.dispatchEvent(evt);
            }
    </script>
    <script src="https://aframe.io/releases/1.0.4/aframe.min.js"></script>
</head>
<body>
    <a-scene background="color: #ECECEC">
      <a-assets>
        <a-asset-item id="cityModel" src="https://cdn.aframe.io/test-models/models/glTF-2.0/virtualcity/VC.gltf"></a-asset-item>
      </a-assets>
      <a-entity gltf-model="#cityModel" modify-materials></a-entity>
    </a-scene>
    <div><button onclick="downloadImage()">Download</button></div>
    <image id="theimage"></image>
</body>
</html>
