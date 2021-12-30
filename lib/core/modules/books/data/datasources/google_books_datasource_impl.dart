import 'package:book_collector/configs/configs.dart';
import 'package:book_collector/core/modules/books/data/models/google_book_search_response.dart';
import 'package:book_collector/core/modules/books/domain/domain.dart';
import 'package:http/http.dart' as http;

class GoogleBooksDataSourceImpl implements BookDatasource {
  @override
  Future<List<Book>> search(String searchTerms) async {
    final uri = Uri.parse('${Configs.bookApi}/volumes?q=$searchTerms');
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      // Iterable body = json.decode(response.body);
      final googleVolumeResponse =
          GoogleBookSearchResponse.fromJson(response.body);
      List<Book> result;
      if (googleVolumeResponse.items.length > 0) {
        result =
            List<Book>.from(googleVolumeResponse.items.map((e) => e.toBook()));
      } else {
        result = [];
      }

      return result;
    }
    return [];
  }
}
