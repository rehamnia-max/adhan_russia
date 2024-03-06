String formatDuration(int minutes) {
  // Convert minutes to Duration
  Duration duration = Duration(minutes: minutes);
  print('#####');
  print(duration);
  // Extract hours, minutes, and seconds
  int hours = duration.inHours;
  int remainingMinutes = duration.inMinutes.remainder(60);
  int seconds = duration.inSeconds.remainder(60);

  // Format the result as hh:mm:ss
  String formattedDuration =
      '${hours.toString().padLeft(2, '0')}:${remainingMinutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';

  return formattedDuration;
}
