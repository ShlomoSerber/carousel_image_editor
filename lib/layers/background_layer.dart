import 'package:flutter/material.dart';
import 'package:carousel_image_editor/data/layer.dart';

/// Main layer
class BackgroundLayer extends StatefulWidget {
  final BackgroundLayerData layerData;
  final VoidCallback? onUpdate;
  final bool editable;

  const BackgroundLayer({
    super.key,
    required this.layerData,
    this.onUpdate,
    this.editable = false,
  });

  @override
  State<BackgroundLayer> createState() => _BackgroundLayerState();
}

class _BackgroundLayerState extends State<BackgroundLayer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.layerData.image.width.toDouble(),
      height: widget.layerData.image.height.toDouble(),
      padding: EdgeInsets.zero,
      child: Image.memory(
        widget.layerData.image.bytes,
        fit: BoxFit.cover,
      ),
    );
  }
}
