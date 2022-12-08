// import 'package:isar/isar.dart';
// import 'package:logic_e_learn_flutter/app_data/isar_models/isar_device_id/isar_dev_id.dart';
// import 'package:logic_e_learn_flutter/app_data/isar_models/isar_user_data/isar_std_data.dart';

// class IsarClass {
//   Future<String> getDeviceID() async {
//     final isar = await openDB();
//     DeviceID? collection = await isar.deviceIDs.get(0);
//     if (collection == null) {
//       return "";
//     } else {
//       return collection.devId ?? "";
//     }
//   }

//   Future<Isar> openDB() async {
//     if (Isar.instanceNames.isEmpty) {
//       return await Isar.open(
//         [DeviceIDSchema, StudentDataSchema],
//         inspector: true,
//       );
//     }

//     return Future.value(Isar.getInstance());
//   }

//   Future<void> saveDeviceID(String devID) async {
//     final isar = await openDB();
//     isar.writeTxnSync(() {
//       isar.deviceIDs.putSync(DeviceID()..devId = devID);
//     });
//   }

//   Future<void> saveUser(StudentData data) async {
//     final isar = await openDB();
//     isar.writeTxnSync(() {
//       isar.studentDatas.putSync(data);
//     });
//   }
// }
