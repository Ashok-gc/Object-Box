import 'package:batch_student_starter/helper/objectbox.dart';
import 'package:batch_student_starter/model/batch.dart';
import 'package:batch_student_starter/state/objectbox_state.dart';

class BatchDataSource {
  ObjectBoxInstance get objectBoxInstance => ObjectBoxState.objectBoxInstance!;

  Future<List<Batch>> getAllBatches() async {
    try {
      return Future.value(objectBoxInstance.getAllBatch());
    } catch (e) {
      return Future.value(null);
    }
  }
}
