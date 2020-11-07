import 'package:SecondLife/constants.dart';
import 'package:dio/dio.dart';

class ApiRequestService {
  final Dio client = Dio(BaseOptions(baseUrl: kApiBaseUrl));
}
