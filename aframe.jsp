<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
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
                alert("Hello! I am an alert box");
                let canvasImage = document.querySelector('a-scene').components.screenshot.getCanvas('equirectangular').toDataURL('image/png');

                // this can be used to download any image from webpage to local disk
                let xhr = new XMLHttpRequest();
                xhr.responseType = 'blob';
                xhr.onload = function () {
                    alert("Hello! I am an alert box 2");
                    let a = document.createElement('a');
                    a.href = window.URL.createObjectURL(xhr.response);
                    a.download = 'image_name.png';
                    a.style.display = 'none';
                    document.body.appendChild(a);
                    a.click();
                    a.remove();
                  };
                  xhr.open('GET', canvasImage); // This is to download the canvas Image
                  xhr.send();

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
