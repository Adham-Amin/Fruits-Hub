// ignore: depend_on_referenced_packages
import 'package:intl/intl.dart' as intl;

bool checkLocal() {
  return intl.Intl.defaultLocale == 'ar';
}
