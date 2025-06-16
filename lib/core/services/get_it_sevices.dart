import 'package:fruits_hub/core/repos/product_repo.dart';
import 'package:fruits_hub/core/repos/product_repo_impl.dart';
import 'package:fruits_hub/core/services/firebase_auth_servies.dart';
import 'package:fruits_hub/core/services/firestoe_services.dart';
import 'package:fruits_hub/features/auth/data/repos/auth_repo_impl.dart';
import 'package:fruits_hub/features/auth/domain/repos/auth_repo.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupGetIt() {
  getIt.registerSingleton<FirebaseAuthServies>(FirebaseAuthServies());
  getIt.registerSingleton<FirestoeServices>(FirestoeServices());
  getIt.registerSingleton<ProductRepo>(
    ProductRepoImpl(firestoeServices: getIt<FirestoeServices>()),
  );
  getIt.registerSingleton<AuthRepo>(
    AuthRepoImpl(
      firebaseServies: getIt<FirebaseAuthServies>(),
      firestoeServices: getIt<FirestoeServices>(),
    ),
  );
}
