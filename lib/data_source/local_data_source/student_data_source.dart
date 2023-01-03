import 'package:batch_student_starter/helper/objectbox.dart';
import 'package:batch_student_starter/model/student.dart';
import 'package:batch_student_starter/state/objectbox_state.dart';

class StudentDataSource {
  ObjectBoxInstance get objectBoxInstance => ObjectBoxState.objectBoxInstance!;
  // OR
  // ObjectBoxInstance objectBoxInstance2 = ObjectBoxState.objectBoxInstance!;

  Future<int> addStudent(Student student) async {
    try {
      return objectBoxInstance.addStudent(student);
    } catch (e) {
      return 0;
    }
  }

  Future<List<Student>> getStudents() async {
    try {
      return objectBoxInstance.getAllStudent();
    } catch (e) {
      return [];
    }
  }

  // Future<Student?> loginStudent(String username, String password) {
  //   try {
  //     return Future.value(objectBoxInstance.loginStudent(username));
  //   } catch (e) {
  //     return Future.value(null);
  //   }
  // }
}
