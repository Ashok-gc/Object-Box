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
      return Future.value(0);
    }
  }

  Future<List<Student>> getStudents() async {
    try {
      return Future.value(objectBoxInstance.getAllStudent());
    } catch (e) {
      throw Exception("Error in getting all Students");
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
