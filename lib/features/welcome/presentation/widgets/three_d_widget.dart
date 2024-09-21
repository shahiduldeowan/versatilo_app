import 'package:flutter/material.dart';

enum ThreeDDirection { both, backwards, forwards }

Matrix4 treeDMatrix4({
  double xTilt = 0.0,
  double yTilt = 0.0,
  double perspective = 1.0,
  double zTranslation = 0.0,
}) {
  return Matrix4.identity()
    ..setEntry(3, 2, 0.001 * perspective)
    ..rotateX(xTilt)
    ..rotateY(yTilt)
    ..translate(0.0, 0, zTranslation);
}

class ThreeDWidget extends StatelessWidget {
  ThreeDWidget({
    required Widget midChild,
    this.depth = 1,
    this.rotationX = 0,
    this.rotationY = 0,
    this.fade = false,
    int layers = 4,
    this.reverse = false,
    this.debug = false,
    this.alignment,
    this.perspective = 1,
    Widget? midToBotChild,
    Widget? botChild,
    super.key,
  })  : layers = layers.isEven ? layers + 1 : layers,
        direction = ThreeDDirection.backwards,
        builder = ((layer) {
          final nbLayers = layers.isEven ? layers + 1 : layers;
          final midToBot = midToBotChild ?? midChild;
          final bot = botChild ?? midToBotChild ?? midChild;

          Widget layerChild;
          if (layer == 0) {
            layerChild = bot;
          } else if (layer == nbLayers - 1) {
            layerChild = midChild;
          } else {
            layerChild = midToBot;
          }
          return layerChild;
        });

  final Widget Function(int) builder;
  final double depth;
  final ThreeDDirection direction;
  final double rotationX;
  final double rotationY;
  final bool fade;
  final int layers;
  final bool reverse;
  final bool debug;
  final double perspective;
  final Alignment? alignment;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: List.generate(
        layers,
        (index) => _ThreeDWidgetLayer(
          builder: builder,
          layer: index,
          nbLayers: layers,
          direction: direction,
          depth: depth,
          fade: fade,
          xPercent: rotationX,
          yPercent: rotationY,
          reverse: false,
          debug: debug,
          alignment: alignment,
          perspective: perspective,
        ),
      ),
    );
  }
}

class _ThreeDWidgetLayer extends StatelessWidget {
  const _ThreeDWidgetLayer({
    required this.builder,
    required this.layer,
    required this.nbLayers,
    required this.direction,
    required this.reverse,
    required this.depth,
    required this.fade,
    required this.xPercent,
    required this.yPercent,
    required this.alignment,
    required this.perspective,
    this.debug = false,
  });

  /// Determines which [Widget] to display for a given [layer]
  final Widget Function(int) builder;

  /// Which [layer] should be displayed
  final int layer;

  /// Total number of layers for this [ThreeDWidget]
  final int nbLayers;

  /// Spacing between layers
  final double depth;

  /// Direction of the 3D effect
  final ThreeDDirection direction;
  final bool reverse;

  /// Not used atm
  final bool fade;

  /// Percent rotation around X axis
  final double xPercent;

  /// Percent rotation around Y axis
  final double yPercent;

  /// Displays a border around the built [Widget] if true
  final bool debug;

  /// Alignment of the layers. You should probably stick to [Alignment.center]
  final Alignment? alignment;

  /// The bigger this value, the more difference there will be between each
  /// layer transformations
  final double perspective;

  @override
  Widget build(BuildContext context) {
    final percent = layer / nbLayers;

    double zTranslation;
    switch (direction) {
      case ThreeDDirection.both:
        zTranslation = -(percent * depth) + depth / 2;
      case ThreeDDirection.backwards:
        zTranslation = -(percent * depth) + depth;
      case ThreeDDirection.forwards:
        zTranslation = -percent * depth;
    }

    // Switch neg/pos values if eventDirection is reversed
    double eventDirectionAdj;
    if (reverse) {
      eventDirectionAdj = -1;
    } else {
      eventDirectionAdj = 1;
    }

    final xTilt = xPercent * eventDirectionAdj;
    final yTilt = -yPercent * eventDirectionAdj;
    final layerChild = builder(layer);

    if (!fade) {
      final content = Transform(
        transform: treeDMatrix4(
          xTilt: xTilt,
          yTilt: yTilt,
          perspective: perspective,
          zTranslation: zTranslation,
        ),
        alignment: alignment ?? FractionalOffset.center,
        child: layerChild,
      );
      if (debug) {
        return Container(
          decoration: BoxDecoration(
            border: Border.all(
              width: 2,
              color: Colors.pink,
            ),
          ),
          child: content,
        );
      } else {
        return content;
      }
    }

    return Opacity(
      opacity: fade ? percent / 2 : 1,
      child: Transform(
        transform: treeDMatrix4(
          xTilt: xTilt,
          yTilt: yTilt,
          perspective: perspective,
          zTranslation: zTranslation,
        ),
        alignment: FractionalOffset.center,
        child: layerChild,
      ),
    );
  }
}
