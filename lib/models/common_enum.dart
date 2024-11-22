/// 底部导航栏项目枚举
enum BottomNavItem {
  home,
  contact,
  discover,
  mine;
}

/// 元素变化动作
enum ItemChangeAction { complete }

enum DialogAction { ok, cancel }

enum TrafficType {
  drive,
  bus,
  train,
  bicycle,
  walk,
  airplane,
  ship,
}

/// 文件存储位置枚举
enum FileStoragelocation { local, network }

enum HttpMethods { get, post, put, delete }

/// 队列上传状态枚举
enum QueueUploadStatus { waiting, uploaded, failed }

/// 队列操作枚举
enum ActionType { add, update, delete }

enum CommonStatus { success, failed }

enum MyAssertType { image, video, audio, unknoww }

enum MyAssertSourceType {
  local, // 本地图片
  network // 网络图片
}

enum RegardingType {
  // ignore: constant_identifier_names
  trip_image,
  // ignore: constant_identifier_names
  trip_attachment,
  avatar
}

enum ImageUrlMethod {
  uniqueName,
  absoluteUrl,
}

enum ErrorReportType { auto, firebase, console }
