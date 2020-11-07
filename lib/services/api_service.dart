import 'package:SecondLife/dtos/api/offer_dto.dart';
import 'package:SecondLife/locator.dart';
import 'package:SecondLife/services/api_request_service.dart';

class ApiService {
  final ApiRequestService requestService = locator<ApiRequestService>();

  Future<List<OfferDto>> getAllOffers() async {
    final response = await requestService.client.get('/advertisement');
    List<OfferDto> offers;
    for (final offer in response.data) {
      print(offer);
      offers.add(OfferDto.fromJson(offer));
    }
    return offers;
  }

  Future likeOffer(String user, String offerId) {
    // TODO: like offer request
  }

  Future getMyMatches(String user) {
    // TODO: matches request
  }

  Future getMessagesForChat(String offerId) {
    // TODO: matches request
  }

  Future createOffer({
    String title,
    String description,
    List<String> imageUrls,
    double latitude,
    double longitude,
    String owner,
    List<int> itemCategories,
    int priceCategory,
  }) {
    // TODO: post request
  }
}
