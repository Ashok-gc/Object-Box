import 'package:batch_student_starter/model/student.dart';
import 'package:batch_student_starter/model/batch.dart';
import 'package:batch_student_starter/objectbox.g.dart';
import 'package:path_provider/path_provider.dart';


class ObjectBoxInstance{

// Store is used to create database
 late final Store _store;
 
 //Box is used to create database table
 late final Box<Batch> _batch;
 late final Box<Student> _student;

// Constructor
ObjectBoxInstance(this._store){
    _batch = Box<Batch>(_store);
    _student = Box<Student>(_store);

    insertBatches();
}

// Initialization of ObjectBox

static Future<ObjectBoxInstance> init() async{
    var dir = await getApplicationDocumentsDirectory();
    final store = Store(
        getObjectBoxModel(),
        directory: '${dir.path}/student_course',
    );
    return ObjectBoxInstance(store);
}

//-------Batch Queries-----------------
int addBatch(Batch batch){
  return _batch.put(batch);
}

List<Batch> getAllBatch(){
  return _batch.getAll();
}

//----------------------Student Queries-----------------
int addStudent(Student student){
  return _student.put(student);
}

List<Student> getAllStudent(){
  return _student.getAll();
}



/* When app is opened for the first time,
  insert some batches in the database
 */

void insertBatches(){
  List<Batch> lstBatches = getAllBatch();
  if(lstBatches.isEmpty){
    addBatch(Batch("29-A"));
    addBatch(Batch("29-B"));
    addBatch(Batch("28-A"));
    addBatch(Batch("28-B"));

}




}



}



