import 'package:objectbox/objectbox.dart';
import 'package:batch_student_starter/model/batch.dart';


@Entity()
class Student {
  @Id(assignable: true)
  int stdId;
  String fname;
  String lname;
  String username;
  String password;

  final batch = ToOne<Batch>();

  Student(this.fname, this.lname, this.username, this.password,
      {this.stdId = 0});
}
