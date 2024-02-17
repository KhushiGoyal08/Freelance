import 'package:get/get.dart';
import 'package:dio/dio.dart' ;

final Dio dio = Dio(BaseOptions(
  baseUrl: 'https://api.openweathermap.org/data/2.5',
  queryParameters: {'appid': '01e13c44845c204c3b27218740b92b57'},
));
class WeatherController extends GetxController {
  RxBool isLoading = false.obs;
  RxString temperature = ''.obs;
  RxString description = ''.obs;

  Future<void> fetchWeather(String location) async {
    try {
      isLoading.value = true;

      dynamic response = await dio.get('/weather', queryParameters: {'q': location});

      // Parse and update the state
      final Map<String, dynamic> data = response.data;
      temperature.value = (data['main']['temp']-273.15).toStringAsFixed(2);
      description.value = data['weather'][0]['description'];
    } catch (error) {
      print('Error: $error');
    } finally {
      isLoading.value = false;
    }
    update();
  }
}
