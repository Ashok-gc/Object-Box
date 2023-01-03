import 'package:batch_student_starter/data_source/local_data_source/course_data_source.dart';

import '../model/course.dart';
import '../model/student.dart';

abstract class CourseRepository{
  Future<int> addCourse(Course course);
  Future<List<Course>> getAllCourse();
}

class CourseRepositoryImpl extends CourseRepository{
  @override
  Future<int> addCourse(Course course){
    return CourseDataSource().addCourse(course);
  }

  @override
  Future<List<Course>> getAllCourse(){
    return CourseDataSource().getAllCourse();
  }
}