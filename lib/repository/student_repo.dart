import 'package:batch_student_starter/data_source/local_data_source/student_data_source.dart';
import 'package:batch_student_starter/model/student.dart';

abstract class StudentRepositiory {
  Future<int> addStudent(Student student);
}

class StudentRepositoryImp extends StudentRepositiory {
  @override
  Future<int> addStudent(Student student) {
    return StudentDataSource().addStudent(student);
  }
}
