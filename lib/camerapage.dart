import 'package:camera/camera.dart';
import 'package:camera_app/bloc/camera_bloc.dart';
import 'package:camera_app/bloc/camera_event.dart';
import 'package:camera_app/bloc/camera_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Camerapage extends StatefulWidget {
  const Camerapage({super.key});

  @override
  State<Camerapage> createState() => _CamerapageState();
}

class _CamerapageState extends State<Camerapage> {
  @override
  void initState() {
    super.initState();
    final bloc = context.read<CameraBloc>();
    if (bloc.state is! CameraReady) {
      bloc.add(InitializeCamera());
    }
  }

  IconData _flashIcon(FlashMode mode) {
    return switch (mode) {
      FlashMode.auto => Icons.flash_auto,
      FlashMode.always => Icons.flash_on,
      _ => Icons.flash_off,
    };
  }


  Widget build(BuildContext context) {
    return const Placeholder();
  }
}