import 'package:equatable/equatable.dart';

class SubjectModel extends Equatable {
  final int? subjectId;
  final String? name;
  final int? subGrade;
  final int? needApprove;
  final int? asId;
  final int? isApproved;
  final String? asSubject;
  final String? asStudent;
  final int? asStudentId;

  const SubjectModel({
    this.subjectId,
    this.name,
    this.subGrade,
    this.needApprove,
    this.asId,
    this.isApproved,
    this.asSubject,
    this.asStudent,
    this.asStudentId,
  });

  factory SubjectModel.fromJson(Map<String, dynamic> json) => SubjectModel(
        subjectId: json['subject_id'] as int?,
        name: json['name'] as String?,
        subGrade: json['sub_grade'] as int?,
        needApprove: json['need_approve'] as int?,
        asId: json['as_id'] as int?,
        isApproved: json['is_approved'] as int?,
        asSubject: json['as_subject'] as String?,
        asStudent: json['as_student'] as String?,
        asStudentId: json['as_student_id'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'subject_id': subjectId,
        'name': name,
        'sub_grade': subGrade,
        'need_approve': needApprove,
        'as_id': asId,
        'is_approved': isApproved,
        'as_subject': asSubject,
        'as_student': asStudent,
        'as_student_id': asStudentId,
      };

  @override
  List<Object?> get props {
    return [
      subjectId,
      name,
      subGrade,
      needApprove,
      asId,
      isApproved,
      asSubject,
      asStudent,
      asStudentId,
    ];
  }
}
