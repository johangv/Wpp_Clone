import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:wpp_clone/Pages/photoView.dart';

class Camera extends StatefulWidget {
  @override
  _CameraState createState() => _CameraState();
}

enum WidgetState { NONE, LOADING, LOADED, ERROR }

class _CameraState extends State<Camera> {
  WidgetState _widgetState = WidgetState.NONE;
  List<CameraDescription> _cameras = <CameraDescription>[];
  late CameraController _cameraController;

  void _moveToPhotoView(path) {
    var route = new MaterialPageRoute(
        builder: (BuildContext context) => new ImgShow(path));
    Navigator.of(context).push(route);
  }

  @override
  void initState() {
    super.initState();
    initializeCamera();
  }

  @override
  Widget build(BuildContext context) {
    switch (_widgetState) {
      case WidgetState.NONE:
      case WidgetState.LOADING:
        return _buildScaffold(
            context,
            Center(
              child: CircularProgressIndicator(),
            ));
      case WidgetState.LOADED:
        return _buildScaffold(context, CameraPreview(_cameraController));
      case WidgetState.ERROR:
        return _buildScaffold(
            context,
            Center(
              child: Text(
                  "La cámara no se puedo inicializar :(. Reinicia la aplicación"),
            ));
    }
  }

  Widget _buildScaffold(BuildContext context, body) {
    return Scaffold(
      body: body,
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          XFile xfile = await _cameraController.takePicture();
          _moveToPhotoView(xfile.path);
        },
        child: Icon(
          Icons.circle,
          color: Colors.white,
          size: 40.0,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Future initializeCamera() async {
    _widgetState = WidgetState.LOADING;
    if (mounted) setState(() {});

    _cameras = await availableCameras();

    _cameraController =
        new CameraController(_cameras[0], ResolutionPreset.high);

    await _cameraController.initialize();

    if (_cameraController.value.hasError) {
      _widgetState = WidgetState.ERROR;
      if (mounted) setState(() {});
    } else {
      _widgetState = WidgetState.LOADED;
      if (mounted) setState(() {});
    }
  }
}
