// import 'package:book_collector/core/cache/cache.dart';
// import 'package:book_collector/modules/login/data/datasources/login_datasource_impl.dart';
// import 'package:book_collector/modules/login/login.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:google_sign_in/google_sign_in.dart';
// import 'package:mockito/annotations.dart';
// import 'package:mockito/mockito.dart';

// class MockFirebaseAuth extends Mock implements FirebaseAuth {}

// class MockGoogleSignIn extends Mock implements GoogleSignIn {}

// class MockLoginDatasource extends Mock implements LoginDatasource {}

// class MockCache extends Mock implements CacheClient {}

// @GenerateMocks([MockLoginDatasource])
// void main() {
//   final AppUser user = AppUser(id: '123', email: 'guimaraeslucas242@gmail.com', name: 'Lucas Guimarães');
//   final mockLoginDatasource = MockLoginDatasource();
//   final CacheClient mockCache = CacheClientImpl();
//   final LoginRepository repository = LoginRepositoryImpl(
//     cache: mockCache,
//     loginDatasource: mockLoginDatasource,
//   );
//   // when(mockLoginDatasource.user).thenAnswer((_) async => user);

//   group('login with google', () {
//     test('should login with google', () async {
//       await repository.logInWithGoogle();
//       // when(repository.logInWithGoogle()).thenAnswer((_) => async {

//       // });
//       // verify(mockLoginDatasource.logInWithGoogle());
//       expect(repository.user, isNot(null));
//       // expect(, equals(Right(tAlbums)));
//     });
//   });

//   group('login with email', () {
//     test('should login with email', () async {
//       // when(repository.logInWithEmailAndPassword(email: anyNamed('email'), password: anyNamed('password')))
//       //     .thenAnswer((_) async => userReturn);
//       when(mockLoginDatasource.logInWithEmailAndPassword(
//               email: 'email@gmail.com', password: '123'))
//           .thenAnswer((_) async {
            
//           });
//       await repository.logInWithEmailAndPassword(
//           email: 'email@gmail.com', password: '123');
//       var user = await repository.user.first;
//       expect(user, isNotEmpty);
//     });
//   });
// }
