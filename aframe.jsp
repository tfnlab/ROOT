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
                alert("Hello! I am an alert box!!");
                document.querySelector('a-scene').components.screenshot.getCanvas('equirectangular');
                var link = document.createElement('a');
                link.download = 'filename.png';
                link.href = document.querySelector('a-scene').components.screenshot.getCanvas('equirectangular').toDataURL()
                link.click();
                alert("Hello! I am an alert box!! 2");
            }
    </script>
    <script src="https://aframe.io/releases/1.0.4/aframe.min.js"></script>
</head>
<body onload="downloadImage()">
    <a-scene background="color: #ECECEC">
      <a-assets>
        <a-asset-item id="cityModel" src="https://cdn.aframe.io/test-models/models/glTF-2.0/virtualcity/VC.gltf"></a-asset-item>
      </a-assets>
      <a-entity gltf-model="#cityModel" modify-materials></a-entity>    <!-- "button" -->
      <a-entity id="refresh-button" geometry="primitive: box" material="color: red" position="0 0 -2" onclick="downloadImage()"></a>
    </a-scene>
</body>
</html>
