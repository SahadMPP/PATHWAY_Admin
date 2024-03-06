class Subject {
  String? id;
  String? subject;
  int countOfStudent;
  int countOfTeacher;
  int lessonCount;
  int orderValue;

  Subject({
    this.id,
    this.subject,
    this.countOfStudent = 0,
    this.countOfTeacher = 0,
    this.lessonCount = 0,
    this.orderValue = 0,
  });

  factory Subject.fromJson(Map<String, dynamic> json) {
    return Subject(
      id: json['_id'],
      subject: json['subject'],
      countOfStudent: json['countOfStudent'] ?? 0,
      countOfTeacher: json['countOfTeacher'] ?? 0,
      lessonCount: json['lessonCount'] ?? 0,
      orderValue: json['orderValue'] ?? 0,
    );
  }
}
