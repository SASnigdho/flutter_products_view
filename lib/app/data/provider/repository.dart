import 'package:get/instance_manager.dart';

import '../helpers/api_client.dart';
import '../services/db_service.dart';

class Repository {
  final ApiClient apiClient = Get.find<ApiClient>();
  final DbService db = Get.find<DbService>();
}
