import 'package:isar/isar.dart';
import 'package:nested_navigation_gorouter_example/features/authentication/models/user_model.dart';
import 'package:path_provider/path_provider.dart';



class IsarService {
  late Future<Isar> db;

  IsarService() {
    db = openDB();
  }


  Future<Isar> openDB() async {
    if (Isar.instanceNames.isEmpty) {
      final dir = await getApplicationDocumentsDirectory();
      return await Isar.open(
        [
          UserSchema,
        ],
        inspector: true, directory: dir.path,
      );
    }

    return Future.value(Isar.getInstance());
  }

  Future<void> cleanDb() async {
    final isar = await db;
    await isar.writeTxn(() => isar.clear());
  }
  //
  // Future<void> saveCourse(Course newCourse) async {
  //   final isar = await db;
  //   isar.writeTxnSync<int>(() => isar.courses.putSync(newCourse));
  // }

  // Future<List<Course>> getAllCourses() async {
  //   final isar = await db;
  //   return await isar.courses.where().findAll();
  // }

  // Stream<List<Course>> listenToCourses() async* {
  //   final isar = await db;
  //   yield* isar.courses.where().watch(initialReturn: true);
  // }




  // Future<Teacher?> getTeacherFor(Course course) async {
  //   final isar = await db;
  //
  //   final teacher = await isar.teachers
  //       .filter()
  //       .course((q) => q.idEqualTo(course.id))
  //       .findFirst();
  //
  //   return teacher;
  // }
}
