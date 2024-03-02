import 'dart:io';
class Complaint {
  const Complaint({required this.subject, required this.description, required this.image, required this.time});
  final String subject;
  final String description;
  final String time;
  final File image;
}