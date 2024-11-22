class CommonUtils {
  ///获取一个随机字符串
  static String uniqueString() {
    return DateTime.now().millisecondsSinceEpoch.toString();
  }
}
