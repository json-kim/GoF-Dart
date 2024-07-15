import 'package:gof_flutter/proxy_pattern/virtual_proxy/icon.dart';

class ImageIcon implements Icon {
  ImageIcon({required this.width, required this.height});

  @override
  final double width;

  @override
  final double height;

  @override
  void paintIcon() {
    print('네트워크에서 이미지를 불러와 아이콘을 그립니다');
  }
}
