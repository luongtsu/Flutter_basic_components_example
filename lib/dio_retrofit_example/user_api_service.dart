import 'package:basic_components_demo/dio_retrofit_example/user_list.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
part 'user_api_service.g.dart';

@RestApi(baseUrl: "https://api.randomuser.me/")
abstract class RestClient {
  factory RestClient(Dio dio) = _RestClient;

  @GET("/?results={numUser}")
  Future<UserList> getUsers(@Path("numUser") int numberUserToRequest);
}