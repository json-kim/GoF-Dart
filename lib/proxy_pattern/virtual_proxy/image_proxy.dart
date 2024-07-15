import 'package:gof_flutter/proxy_pattern/virtual_proxy/icon.dart';
import 'package:gof_flutter/proxy_pattern/virtual_proxy/image_icon.dart';

class ImageProxy implements Icon {
  ImageProxy({required this.width, required this.height});

  ImageIcon? imageIcon;

  @override
  final double width;

  @override
  final double height;

  @override
  void paintIcon() {
    if (imageIcon != null) {
      imageIcon?.paintIcon();
    } else {
      print('이미지를 불러오는 중입니다. 잠시만 기다려주세요');
      imageIcon = ImageIcon(width: width, height: height);
      imageIcon?.paintIcon();
    }
  }
}
