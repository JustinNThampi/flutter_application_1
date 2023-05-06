import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Assignments/Company%20UI/InvoiceDatePage.dart';
import 'package:flutter_application_1/stogare/Hive/todo.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'Assignments/Company UI/BottomBarPage.dart';
import 'Assignments/Company UI/InvoiceNumberPage.dart';
import 'Assignments/Company UI/RewardListPage.dart';
import 'Assignments/Company UI/RewardWalletPage.dart';

void main() async{
  
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox('task_box');

  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery: true,
      //home : Splashh(),
      //home : LoginPage(),
      //home : Login_With_Validation(),
      //home : HomeScreen(),
      //home: Splash(),
      //home: Contact(),
      //home: WContact(),
      //home: WChat(),
      //home: WStatus(),
      //home: WCall(),
      //home: MyTab(),
      //home: List_Builder(),
      //home: List_Custom(),
      //home: List_Separator(),
      //home: BottomBar1(),
      //home: ListUi(),
      //home: WhatsAppClone(),
      //home: WhatsAppChat(),
      //home: WhatsAppStatus(),
      //home: Stack_Ex(),
      //home: ConvexBottomBar(),
      //home: GridViewDemo(),
      //home: GridViewDemo2(),
      //home: GridView3(),
      //home: Grid4(),
      //home: Grid5(),
      //home: StaggGrid(),
      //home: HotelDetailUi(),
      //home: Drawerr(),
      //home: DrawerDemo(),
      //home: LottieeEx(),
      //home: SliverExx(),
      //home: GridViewUi(),
      //home: ProfileUI(),
      //home: GridView2(),
      //home: ProductMain(),
      //home: farmerFreshZone(),
      //home: Flexiii(),
      //home: Clipperrr(),
      //home: MusicPlayer(),
      //home: ProfileSUI(),
      //home: HotelHomePage(),
      //home: MapSample(),
      //home: LoginSamp(),
      //home: SPLogin(),
      //home: BankApp(),
      //home: Account(),
      //home: RewardWallet(),
      //home: RewardList(),
      home: BottomBar(),
      //home: InvoiceNumber(),
      //home: InvoiceDate(),
      //home: MyTODo(),
      // routes: {
      //   'secondpage' : (context) => ProductList(),
      // },
      debugShowCheckedModeBanner: false,
    ),
  ));
}