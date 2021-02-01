import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:thriftshop/app/routes/app_pages.dart';

void main() {
  testWidgets('Change this Test later', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ));
    // add our test assetion below
  });
}
