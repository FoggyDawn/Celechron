enum PeriodType { classes, test, user, virtual, flow }

enum DeadlineType { running, suspended, completed, failed, deleted }

Map<DeadlineType, String> deadlineTypeName = {
  DeadlineType.running: '进行中',
  DeadlineType.suspended: '已暂停',
  DeadlineType.completed: '完成',
  DeadlineType.failed: '失败',
};

String durationToString(Duration duration) {
  String str = '';
  if (duration.inHours != 0) {
    str = '${duration.inHours} 小时';
  }
  if (duration.inMinutes % 60 != 0 || duration.inHours == 0) {
    if (str != '') str = '$str ';
    str = '$str${duration.inMinutes % 60} 分钟';
  }
  return str;
}
