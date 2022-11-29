import 'package:book_collector/modules/collection/data/models/collection_model.dart';
import 'package:book_collector/modules/collection/domain/domain.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseCollectionDataSource implements ICollectionDataSource {
  FirebaseFirestore _firestore;

  FirebaseCollectionDataSource({FirebaseFirestore? firestore})
      : _firestore = firestore != null ? firestore : FirebaseFirestore.instance;

  @override
  Future<Collection> create(CollectionModel collection) {
    return _firestore
        .collection('collection')
        .add(collection.toMap())
        .then((documentReference) {
      collection = collection.copyWith(id: documentReference.id);
      var result = collection.toCollection();
      //TODO: Get book details
      return result;
    }).catchError((error) =>
            //TODO: Handle Errors
            throw Exception('Handle Errors'));
  }

  @override
  Future<void> delete(String collectionId) {
    // TODO: implement delete
    throw UnimplementedError();
  }
}
