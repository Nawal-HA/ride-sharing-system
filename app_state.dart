import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _isLogin = prefs.getBool('ff_isLogin') ?? _isLogin;
    });
    _safeInit(() {
      _isintro = prefs.getBool('ff_isintro') ?? _isintro;
    });
    _safeInit(() {
      _name = prefs.getString('ff_name') ?? _name;
    });
    _safeInit(() {
      _email = prefs.getString('ff_email') ?? _email;
    });
    _safeInit(() {
      _bottomindex = prefs.getInt('ff_bottomindex') ?? _bottomindex;
    });
    _safeInit(() {
      _password = prefs.getString('ff_password') ?? _password;
    });
    _safeInit(() {
      _isintroindex = prefs.getInt('ff_isintroindex') ?? _isintroindex;
    });
    _safeInit(() {
      _searchList = prefs.getStringList('ff_searchList') ?? _searchList;
    });
    _safeInit(() {
      _lungugaeIndex = prefs.getInt('ff_lungugaeIndex') ?? _lungugaeIndex;
    });
    _safeInit(() {
      _darkMode = prefs.getInt('ff_darkMode') ?? _darkMode;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _countryCode = '+966';
  String get countryCode => _countryCode;
  set countryCode(String value) {
    _countryCode = value;
  }

  String _phone = '1234567890';
  String get phone => _phone;
  set phone(String value) {
    _phone = value;
  }

  List<NamelistStruct> _chatList = [
    NamelistStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"0\",\"name\":\"Ralph edwards\",\"img1\":\"chat-1.png\",\"text\":\"Hello\",\"time\":\"23:00\",\"is_count\":\"true\",\"Arabic_Name\":\"رالف إدواردز\",\"Hebrew_Name\":\"ralf aduards\",\"French_Name\":\"Ralph Edwards\",\"Arabic_Text\":\"مرحبًا\",\"Hebrew_Text\":\"שלום\",\"French_Text\":\"Bonjour\",\"Arabic_Time\":\"23:00\",\"Hebrew_Time\":\"23:00\",\"French_Time\":\"23h00\"}')),
    NamelistStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"1\",\"name\":\"Esther howards\",\"img1\":\"chat-2.png\",\"text\":\"Awesome\",\"time\":\"22:00\",\"is_count\":\"false\",\"Arabic_Name\":\"استير هواردز\",\"Hebrew_Name\":\"אסתר הווארד\",\"French_Name\":\"Esther Howard\",\"Arabic_Text\":\"مذهل\",\"Hebrew_Text\":\"מדהים\",\"French_Text\":\"Géniale\",\"Arabic_Time\":\"22:00\",\"Hebrew_Time\":\"22:00\",\"French_Time\":\"22h00\"}')),
    NamelistStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"2\",\"name\":\"Leslie alexender\",\"img1\":\"chat-3.png\",\"text\":\"Hyy\",\"time\":\"10:00\",\"is_count\":\"false\",\"Arabic_Name\":\"ليزلي الكسندر\",\"Hebrew_Name\":\"לסלי אלכסנדר\",\"French_Name\":\"Leslie Alexandre\",\"Arabic_Text\":\"هاه\",\"Hebrew_Text\":\"הא\",\"French_Text\":\"Hein\",\"Arabic_Time\":\"10:00\",\"Hebrew_Time\":\"10:00\",\"French_Time\":\"10h00\"}')),
    NamelistStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"3\",\"name\":\"Jenny wilson\",\"img1\":\"chat-4.png\",\"text\":\"How are you\",\"time\":\"12:00\",\"is_count\":\"false\",\"Arabic_Name\":\"جيني ويلسون\",\"Hebrew_Name\":\"ג\'ני ווילסון\",\"French_Name\":\"Jenny Wilson\",\"Arabic_Text\":\"كيف حالك\",\"Hebrew_Text\":\"מה שלומך\",\"French_Text\":\"Comment vas-tu\",\"Arabic_Time\":\"12:00\",\"Hebrew_Time\":\"12:00\",\"French_Time\":\"12h00\"}')),
    NamelistStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"4\",\"name\":\"Jenny wilson\",\"img1\":\"chat-5.png\",\"text\":\"How are you\",\"time\":\"12:00\",\"is_count\":\"false\",\"Arabic_Name\":\"جيني ويلسون\",\"Hebrew_Name\":\"ג\'ני ווילסון\",\"French_Name\":\"Jenny Wilson\",\"Arabic_Text\":\"كيف حالك\",\"Hebrew_Text\":\"מה שלומך\",\"French_Text\":\"Comment vas-tu\",\"Arabic_Time\":\"12:00\",\"Hebrew_Time\":\"12:00\",\"French_Time\":\"12h00\"}')),
    NamelistStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"5\",\"name\":\"Robert fox\",\"img1\":\"chat-6.png\",\"text\":\"fine and what about you\",\"time\":\"18:00\",\"is_count\":\"false\",\"Arabic_Name\":\"روبرت فوكس\",\"Hebrew_Name\":\"רוברט פוקס\",\"French_Name\":\"Robert Renard\",\"Arabic_Text\":\"بخير وماذا عنك\",\"Hebrew_Text\":\"בסדר ומה איתך\",\"French_Text\":\"bien et et toi\",\"Arabic_Time\":\"18:00\",\"Hebrew_Time\":\"18:00\",\"French_Time\":\"18h00\"}'))
  ];
  List<NamelistStruct> get chatList => _chatList;
  set chatList(List<NamelistStruct> value) {
    _chatList = value;
  }

  void addToChatList(NamelistStruct value) {
    chatList.add(value);
  }

  void removeFromChatList(NamelistStruct value) {
    chatList.remove(value);
  }

  void removeAtIndexFromChatList(int index) {
    chatList.removeAt(index);
  }

  void updateChatListAtIndex(
    int index,
    NamelistStruct Function(NamelistStruct) updateFn,
  ) {
    chatList[index] = updateFn(_chatList[index]);
  }

  void insertAtIndexInChatList(int index, NamelistStruct value) {
    chatList.insert(index, value);
  }

  List<BarandStruct> _barandName = [
    BarandStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"0\",\"img\":\"b-1.png\",\"name\":\"BMW\",\"Arabic_name\":\"بي ام دبليو\",\"Hebrew_name\":\"ב.מ.וו\",\"Frenach_name\":\"BMW\"}')),
    BarandStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"1\",\"img\":\"b-2.png\",\"name\":\"Tesla\",\"Arabic_name\":\"تسلا\",\"Hebrew_name\":\"טסלה\",\"Frenach_name\":\"Tesla\"}')),
    BarandStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"2\",\"img\":\"b-3.png\",\"name\":\"Mercedes\",\"Arabic_name\":\"مرسيدس\",\"Hebrew_name\":\"מרצדס\",\"Frenach_name\":\"Mercedes\"}')),
    BarandStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"3\",\"img\":\"b-4.png\",\"name\":\"Toyota\",\"Arabic_name\":\"تويوتا\",\"Hebrew_name\":\"טויוטה\",\"Frenach_name\":\"Toyota\"}')),
    BarandStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"4\",\"img\":\"b-5.png\",\"name\":\"Honda\",\"Arabic_name\":\"هوندا\",\"Hebrew_name\":\"הונדה\",\"Frenach_name\":\"Honda\"}')),
    BarandStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"5\",\"img\":\"b-6.png\",\"name\":\"Maruti suzuki\",\"Arabic_name\":\"سوزوكي متعددة\",\"Hebrew_name\":\"מולטי סוזוקי\",\"Frenach_name\":\"multi suzuki\"}')),
    BarandStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"6\",\"img\":\"b-7.png\",\"name\":\"Hyundai\",\"Arabic_name\":\"هيونداي\",\"Hebrew_name\":\"יונדאי\",\"Frenach_name\":\"Hyundai\"}')),
    BarandStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"7\",\"img\":\"b-8.png\",\"name\":\"Mini cooper\",\"Arabic_name\":\"ميني كوبر\",\"Hebrew_name\":\"מיני קופר\",\"Frenach_name\":\"Mini tonnelier\"}')),
    BarandStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"8\",\"img\":\"b-9.png\",\"name\":\"Ferrari\",\"Arabic_name\":\"فيراري\",\"Hebrew_name\":\"פרארי\",\"Frenach_name\":\"Ferrari\"}')),
    BarandStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"9\",\"img\":\"b-10.png\",\"name\":\"Bentley\",\"Arabic_name\":\"بنتلي\",\"Hebrew_name\":\"בנטלי\",\"Frenach_name\":\"Bentley\"}')),
    BarandStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"10\",\"img\":\"b-11.png\",\"name\":\"Audi\",\"Arabic_name\":\"أودي\",\"Hebrew_name\":\"אאודי\",\"Frenach_name\":\"Audi\"}')),
    BarandStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"11\",\"img\":\"b-12.png\",\"name\":\"Lamborghini\",\"Arabic_name\":\"لامبورغيني\",\"Hebrew_name\":\"למבורגיני\",\"Frenach_name\":\"Lamborghini\"}')),
    BarandStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"12\",\"img\":\"b-13.png\",\"name\":\"Mahindra\",\"Arabic_name\":\"ماهيندرا\",\"Hebrew_name\":\"מהינדרה\",\"Frenach_name\":\"Mahindra\"}')),
    BarandStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"13\",\"img\":\"b-14.png\",\"name\":\"Porsche\",\"Arabic_name\":\"بورش\",\"Hebrew_name\":\"פורשה\",\"Frenach_name\":\"Porsche\"}')),
    BarandStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"14\",\"img\":\"b-15.png\",\"name\":\"Jeep\",\"Arabic_name\":\"جيب\",\"Hebrew_name\":\"ג\'ִיפּ\",\"Frenach_name\":\"Jeep\"}'))
  ];
  List<BarandStruct> get barandName => _barandName;
  set barandName(List<BarandStruct> value) {
    _barandName = value;
  }

  void addToBarandName(BarandStruct value) {
    barandName.add(value);
  }

  void removeFromBarandName(BarandStruct value) {
    barandName.remove(value);
  }

  void removeAtIndexFromBarandName(int index) {
    barandName.removeAt(index);
  }

  void updateBarandNameAtIndex(
    int index,
    BarandStruct Function(BarandStruct) updateFn,
  ) {
    barandName[index] = updateFn(_barandName[index]);
  }

  void insertAtIndexInBarandName(int index, BarandStruct value) {
    barandName.insert(index, value);
  }

  List<NamelistStruct> _notification = [
    NamelistStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"0\",\"name\":\"Order status changed\",\"img1\":\"Hello World\",\"text\":\"Your order id status change to receive to delivered \",\"time\":\"30 seconds ago\",\"is_count\":\"false\",\"Arabic_Name\":\"تغيرت حالة الطلب\",\"Hebrew_Name\":\"סטטוס ההזמנה השתנה\",\"French_Name\":\"Statut de la commande modifié\",\"Arabic_Text\":\"تتغير حالة معرف طلبك من استلامه إلى تسليمه\",\"Hebrew_Text\":\"שינוי סטטוס מזהה ההזמנה שלך כדי לקבל למסירה\",\"French_Text\":\"Le statut de votre identifiant de commande passe de recevoir à livré\",\"Arabic_Time\":\"منذ 30 ثانية\",\"Hebrew_Time\":\"לפני 30 שניות\",\"French_Time\":\"il y a 30 secondes\"}')),
    NamelistStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"1\",\"name\":\"Grocery delivery service\",\"img1\":\"Hello World\",\"text\":\"A basket overflowing with fresh fruits and vegetables\",\"time\":\"30 mins ago\",\"is_count\":\"false\",\"Arabic_Name\":\"خدمة توصيل البقالة\",\"Hebrew_Name\":\"שירות משלוחי מכולת\",\"French_Name\":\"Service de livraison d\'épicerie\",\"Arabic_Text\":\"سلة مليئة بالفواكه والخضروات الطازجة\",\"Hebrew_Text\":\"סלסלה עמוסה בפירות וירקות טריים\",\"French_Text\":\"Un panier débordant de fruits et légumes frais\",\"Arabic_Time\":\"منذ 30 دقيقة\",\"Hebrew_Time\":\"לפני 30 דקות\",\"French_Time\":\"il y a 30 minutes\"}')),
    NamelistStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"2\",\"name\":\"Personal meal planning\",\"img1\":\"Hello World\",\"text\":\" A colorful plate of food with a variety of ingredients\",\"time\":\"2 hours ago\",\"is_count\":\"false\",\"Arabic_Name\":\"التخطيط الشخصي للوجبات\",\"Hebrew_Name\":\"תכנון ארוחות אישי\",\"French_Name\":\"Planification personnelle des repas\",\"Arabic_Text\":\"طبق ملون من الطعام مع مجموعة متنوعة من المكونات\",\"Hebrew_Text\":\"צלחת אוכל צבעונית עם מגוון מרכיבים\",\"French_Text\":\"\\r\\nUne assiette colorée de nourriture avec une variété d\'ingrédients\",\"Arabic_Time\":\"منذ ساعتين\",\"Hebrew_Time\":\"לפני שעתיים\",\"French_Time\":\"\\r\\nil y a 2 heures\"}')),
    NamelistStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"3\",\"name\":\"Reminders to eat\",\"img1\":\"Hello World\",\"text\":\"Lunchtime! Don\'t forget to fuel up for a productive afternoon.\",\"time\":\"18 hours ago\",\"is_count\":\"false\",\"Arabic_Name\":\"تذكير لتناول الطعام\",\"Hebrew_Name\":\"תזכורות לאכול\",\"French_Name\":\"\\nRappels pour manger\",\"Arabic_Text\":\"وقت الغداء! لا تنس التزود بالوقود لقضاء فترة ما بعد الظهيرة المثمرة.\",\"Hebrew_Text\":\"שעת צהריים! אל תשכחו לתדלק אחר צהריים פורה.\",\"French_Text\":\"L\'heure du déjeuner! N\'oubliez pas de faire le plein pour un après-midi productif.\",\"Arabic_Time\":\"منذ 18 ساعة\",\"Hebrew_Time\":\"לפני 18 שעות\",\"French_Time\":\"il y a 18 heures\"}')),
    NamelistStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"4\",\"name\":\"Exclusive offer\",\"img1\":\"Hello World\",\"text\":\"Enjoy 25% on your next order. Use code HAPPYMONDAY\",\"time\":\"2 days ago\",\"is_count\":\"false\",\"Arabic_Name\":\"عرض حصري\",\"Hebrew_Name\":\"הצעה בלעדית\",\"French_Name\":\"Offre exclusive\",\"Arabic_Text\":\"استمتع بخصم 25% على طلبك التالي. استخدم الكود HAPPYMONDAY\",\"Hebrew_Text\":\"תהנה מ-25% בהזמנה הבאה שלך. השתמש בקוד HAPPYMONDAY\",\"French_Text\":\"Profitez de 25% sur votre prochaine commande. Utiliser le code HAPPYMONDAY\",\"Arabic_Time\":\"منذ يومين\",\"Hebrew_Time\":\"לפני יומיים\",\"French_Time\":\"il y a 2 jours\"}'))
  ];
  List<NamelistStruct> get notification => _notification;
  set notification(List<NamelistStruct> value) {
    _notification = value;
  }

  void addToNotification(NamelistStruct value) {
    notification.add(value);
  }

  void removeFromNotification(NamelistStruct value) {
    notification.remove(value);
  }

  void removeAtIndexFromNotification(int index) {
    notification.removeAt(index);
  }

  void updateNotificationAtIndex(
    int index,
    NamelistStruct Function(NamelistStruct) updateFn,
  ) {
    notification[index] = updateFn(_notification[index]);
  }

  void insertAtIndexInNotification(int index, NamelistStruct value) {
    notification.insert(index, value);
  }

  bool _isLogin = false;
  bool get isLogin => _isLogin;
  set isLogin(bool value) {
    _isLogin = value;
    prefs.setBool('ff_isLogin', value);
  }

  bool _isintro = false;
  bool get isintro => _isintro;
  set isintro(bool value) {
    _isintro = value;
    prefs.setBool('ff_isintro', value);
  }

  String _name = '';
  String get name => _name;
  set name(String value) {
    _name = value;
    prefs.setString('ff_name', value);
  }

  String _email = '';
  String get email => _email;
  set email(String value) {
    _email = value;
    prefs.setString('ff_email', value);
  }

  int _bottomindex = 0;
  int get bottomindex => _bottomindex;
  set bottomindex(int value) {
    _bottomindex = value;
    prefs.setInt('ff_bottomindex', value);
  }

  String _password = '';
  String get password => _password;
  set password(String value) {
    _password = value;
    prefs.setString('ff_password', value);
  }

  int _isintroindex = 0;
  int get isintroindex => _isintroindex;
  set isintroindex(int value) {
    _isintroindex = value;
    prefs.setInt('ff_isintroindex', value);
  }

  List<CarModelStruct> _carList = [
    CarModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"0\",\"title\":\"Mercedes G-Class\",\"text1\":\"Manual\",\"text2\":\"4 days\",\"subtext\":\"\$72\",\"types\":\"Mercedes\",\"img1\":\"m1.png\",\"Arabiv_title\":\"مرسيدس جي كلاس\",\"Hebrew_title\":\"מרצדס G קלאס\",\"French_title\":\"Mercedes Classe G\",\"Arabiv_text1\":\"يدوي\",\"Hebrew_text1\":\"יָדָנִי\",\"French_text1\":\"Manuel\",\"Arabic_text2\":\"4 أيام\",\"Hebrew_text2\":\"4 ימים\",\"French_text2\":\"4 jours\",\"Arabic_subtext\":\"72 دولارًا\",\"Hebrew_subtext\":\"\$72\",\"French_subtext\":\"72 \$\"}')),
    CarModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"1\",\"title\":\"Mercedes-Benz GLE\",\"text1\":\"Automatic\",\"text2\":\"Daily\",\"subtext\":\"\$60\",\"types\":\"Mercedes\",\"img1\":\"m2.png\",\"Arabiv_title\":\"مرسيدس بنز جي إل إي\",\"Hebrew_title\":\"מרצדס בנץ GLE\",\"French_title\":\"Mercedes-Benz GLE\",\"Arabiv_text1\":\"تلقائي\",\"Hebrew_text1\":\"אוֹטוֹמָטִי\",\"French_text1\":\"Automatique\",\"Arabic_text2\":\"يوميًا\",\"Hebrew_text2\":\"יוֹמִי\",\"French_text2\":\"Tous les jours\",\"Arabic_subtext\":\"60 دولارًا\",\"Hebrew_subtext\":\"\$60\",\"French_subtext\":\"60 \$\"}')),
    CarModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"2\",\"title\":\"Mercedes S-Class\",\"text1\":\"Manual\",\"text2\":\"4 days\",\"subtext\":\"\$72\",\"types\":\"Mercedes\",\"img1\":\"m3.png\",\"Arabiv_title\":\"מרצדס S קלאס\",\"Hebrew_title\":\"מרצדס S קלאס\",\"French_title\":\"Mercedes Classe S\",\"Arabiv_text1\":\"يدوي\",\"Hebrew_text1\":\"יָדָנִי\",\"French_text1\":\"Manuel\",\"Arabic_text2\":\"4 أيام\",\"Hebrew_text2\":\"4 ימים\",\"French_text2\":\"4 jours\",\"Arabic_subtext\":\"72 دولارًا\",\"Hebrew_subtext\":\"\$72\",\"French_subtext\":\"72 \$\"}')),
    CarModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"3\",\"title\":\"Mercedes E-Class\",\"text1\":\"Automatic\",\"text2\":\"Daily\",\"subtext\":\"\$60\",\"types\":\"Mercedes\",\"img1\":\"m4.png\",\"Arabiv_title\":\"مرسيدس إي كلاس\",\"Hebrew_title\":\"מרצדס E קלאס\",\"French_title\":\"Mercedes Classe E\",\"Arabiv_text1\":\"تلقائي\",\"Hebrew_text1\":\"אוֹטוֹמָטִי\",\"French_text1\":\"Automatique\",\"Arabic_text2\":\"يوميًا\",\"Hebrew_text2\":\"יוֹמִי\",\"French_text2\":\"Tous les jours\",\"Arabic_subtext\":\"60 دولارًا\",\"Hebrew_subtext\":\"\$60\",\"French_subtext\":\"60 \$\"}')),
    CarModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"4\",\"title\":\"Mercedes S-Class\",\"text1\":\"Manual\",\"text2\":\"4 days\",\"subtext\":\"\$72\",\"types\":\"Mercedes\",\"img1\":\"m5.png\",\"Arabiv_title\":\"مرسيدس الفئة S\",\"Hebrew_title\":\"מרצדס S קלאס\",\"French_title\":\"Mercedes Classe S\",\"Arabiv_text1\":\"يدوي\",\"Hebrew_text1\":\"יָדָנִי\",\"French_text1\":\"Manuel\",\"Arabic_text2\":\"4 أيام\",\"Hebrew_text2\":\"4 ימים\",\"French_text2\":\"4 jours\",\"Arabic_subtext\":\"72 دولارًا\",\"Hebrew_subtext\":\"\$72\",\"French_subtext\":\"72 \$\"}')),
    CarModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"5\",\"title\":\"Mercedes E-Class\",\"text1\":\"Automatic\",\"text2\":\"Daily\",\"subtext\":\"\$60\",\"types\":\"Mercedes\",\"img1\":\"m6.png\",\"Arabiv_title\":\"مرسيدس إي كلاس\",\"Hebrew_title\":\"מרצדס E קלאס\",\"French_title\":\"Mercedes Classe E\",\"Arabiv_text1\":\"تلقائي\",\"Hebrew_text1\":\"אוֹטוֹמָטִי\",\"French_text1\":\"Automatique\",\"Arabic_text2\":\"يوميًا\",\"Hebrew_text2\":\"יוֹמִי\",\"French_text2\":\"Tous les jours\",\"Arabic_subtext\":\"60 دولارًا\",\"Hebrew_subtext\":\"60 דולר\",\"French_subtext\":\"60 \$\"}')),
    CarModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"6\",\"title\":\"Mercedes G-Class\",\"text1\":\"Manual\",\"text2\":\"4 days\",\"subtext\":\"\$72\",\"types\":\"Mercedes\",\"img1\":\"m1.png\",\"Arabiv_title\":\"مرسيدس جي كلاس\",\"Hebrew_title\":\"מרצדס G קלאס\",\"French_title\":\"Mercedes Classe G\",\"Arabiv_text1\":\"يدوي\",\"Hebrew_text1\":\"יָדָנִי\",\"French_text1\":\"Manuel\",\"Arabic_text2\":\"4 ימים\",\"Hebrew_text2\":\"4 ימים\",\"French_text2\":\"4 jours\",\"Arabic_subtext\":\"72 دولارًا\",\"Hebrew_subtext\":\"\$72\",\"French_subtext\":\"72 \$\"}')),
    CarModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"7\",\"title\":\"Mercedes-Benz GLE\",\"text1\":\"Automatic\",\"text2\":\"Daily\",\"subtext\":\"\$60\",\"types\":\"Mercedes\",\"img1\":\"m2.png\",\"Arabiv_title\":\"مرسيدس بنز جي إل إي\",\"Hebrew_title\":\"מרצדס בנץ GLE\",\"French_title\":\"Mercedes-Benz GLE\",\"Arabiv_text1\":\"تلقائي\",\"Hebrew_text1\":\"אוֹטוֹמָטִי\",\"French_text1\":\"Automatique\",\"Arabic_text2\":\"يوميًا\",\"Hebrew_text2\":\"יוֹמִי\",\"French_text2\":\"Tous les jours\",\"Arabic_subtext\":\"60 دولارًا\",\"Hebrew_subtext\":\"60 דולר\",\"French_subtext\":\"60 \$\"}')),
    CarModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"8\",\"title\":\"Mini cooper\",\"text1\":\"249 km\",\"text2\":\"Daily\",\"subtext\":\"\$72\",\"types\":\"Popular ev cars\",\"img1\":\"p1.png\",\"Arabiv_title\":\"ميني كوبر\",\"Hebrew_title\":\"מיני קופר\",\"French_title\":\"Mini tonnelier\",\"Arabiv_text1\":\"249 كم\",\"Hebrew_text1\":\"249 ק\\\"מ\",\"French_text1\":\"249 km\",\"Arabic_text2\":\"يوميًا\",\"Hebrew_text2\":\"יוֹמִי\",\"French_text2\":\"Tous les jours\",\"Arabic_subtext\":\"72 دولارًا\",\"Hebrew_subtext\":\"\$72\",\"French_subtext\":\"72 \$\"}')),
    CarModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"9\",\"title\":\"Tesla model 3\",\"text1\":\"340 km\",\"text2\":\"Daily\",\"subtext\":\"\$60\",\"types\":\"Popular ev cars\",\"img1\":\"p2.png\",\"Arabiv_title\":\"موديل تسلا 3\",\"Hebrew_title\":\"טסלה דגם 3\",\"French_title\":\"Tesla modèle 3\",\"Arabiv_text1\":\"340 كم\",\"Hebrew_text1\":\"340 ק\\\"מ\",\"French_text1\":\"340km\",\"Arabic_text2\":\"يوميًا\",\"Hebrew_text2\":\"יוֹמִי\",\"French_text2\":\"Tous les jours\",\"Arabic_subtext\":\"60 دولارًا\",\"Hebrew_subtext\":\"\$60\",\"French_subtext\":\"60 \$\"}')),
    CarModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"10\",\"title\":\"Tesla model x\",\"text1\":\"326 km\",\"text2\":\"4 days\",\"subtext\":\"\$72\",\"types\":\"Popular ev cars\",\"img1\":\"p3.png\",\"Arabiv_title\":\"موديل تسلا x\",\"Hebrew_title\":\"טסלה דגם x\",\"French_title\":\"Modèle Tesla X\",\"Arabiv_text1\":\"326 كم\",\"Hebrew_text1\":\"326 ק\\\"מ\",\"French_text1\":\"326 km\",\"Arabic_text2\":\"4 أيام\",\"Hebrew_text2\":\"4 ימים\",\"French_text2\":\"4 jours\",\"Arabic_subtext\":\"72 دولارًا\",\"Hebrew_subtext\":\"\$72\",\"French_subtext\":\"72 \$\"}')),
    CarModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"11\",\"title\":\"BYD seal\",\"text1\":\"580 km\",\"text2\":\"Daily\",\"subtext\":\"\$60\",\"types\":\"Popular ev cars\",\"img1\":\"p4.png\",\"Arabiv_title\":\"عالم الختم\",\"Hebrew_title\":\"חותם WORLD\",\"French_title\":\"MONDE DU phoque\",\"Arabiv_text1\":\"580 كم\",\"Hebrew_text1\":\"580 ק\\\"מ\",\"French_text1\":\"580 km\",\"Arabic_text2\":\"يوميًا\",\"Hebrew_text2\":\"יוֹמִי\",\"French_text2\":\"Tous les jours\",\"Arabic_subtext\":\"60 دولارًا\",\"Hebrew_subtext\":\"\$60\",\"French_subtext\":\"60 \$\"}')),
    CarModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"12\",\"title\":\"Lamborghini revuelto\",\"text1\":\"350 km\",\"text2\":\"2 day\",\"subtext\":\"\$280\",\"types\":\"Popular ev cars\",\"img1\":\"p5.png\",\"Arabiv_title\":\"سارعت لامبورغيني\",\"Hebrew_title\":\"למבורגיני טרפה\",\"French_title\":\"Lamborghini brouillée\",\"Arabiv_text1\":\"350 كم\",\"Hebrew_text1\":\"350 ק\\\"מ\",\"French_text1\":\"350km\",\"Arabic_text2\":\"2 يوم\",\"Hebrew_text2\":\"2 ימים\",\"French_text2\":\"2 jours\",\"Arabic_subtext\":\"280 دولارًا\",\"Hebrew_subtext\":\"280 דולר\",\"French_subtext\":\"280 \$\"}')),
    CarModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"13\",\"title\":\"Hyundai kona electric\",\"text1\":\"452 km\",\"text2\":\"Daily\",\"subtext\":\"\$50\",\"types\":\"Popular ev cars\",\"img1\":\"p6.png\",\"Arabiv_title\":\"هيونداي كونا الكهربائية\",\"Hebrew_title\":\"יונדאי קונה חשמלית\",\"French_title\":\"Hyundai kona électrique\",\"Arabiv_text1\":\"452 كم\",\"Hebrew_text1\":\"452 ק\\\"מ\",\"French_text1\":\"452 km\",\"Arabic_text2\":\"يوميًا\",\"Hebrew_text2\":\"יוֹמִי\",\"French_text2\":\"Tous les jours\",\"Arabic_subtext\":\"50 دولارًا\",\"Hebrew_subtext\":\"\$50\",\"French_subtext\":\"50 \$\"}')),
    CarModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"14\",\"title\":\"Mini cooper\",\"text1\":\"340 km\",\"text2\":\"Daily\",\"subtext\":\"\$72\",\"types\":\"Popular ev cars\",\"img1\":\"p1.png\",\"Arabiv_title\":\"ميني كوبر\",\"Hebrew_title\":\"מיני קופר\",\"French_title\":\"Mini tonnelier\",\"Arabiv_text1\":\"340 كم\",\"Hebrew_text1\":\"340 ק\\\"מ\",\"French_text1\":\"340km\",\"Arabic_text2\":\"يوميًا\",\"Hebrew_text2\":\"יוֹמִי\",\"French_text2\":\"Tous les jours\",\"Arabic_subtext\":\"72 دولارًا\",\"Hebrew_subtext\":\"\$72\",\"French_subtext\":\"72 \$\"}')),
    CarModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"15\",\"title\":\"Tesla model 3\",\"text1\":\"340 km\",\"text2\":\"Daily\",\"subtext\":\"\$60\",\"types\":\"Popular ev cars\",\"img1\":\"p3.png\",\"Arabiv_title\":\"موديل تسلا 3\",\"Hebrew_title\":\"טסלה דגם 3\",\"French_title\":\"Tesla modèle 3\",\"Arabiv_text1\":\"340 كم\",\"Hebrew_text1\":\"340 ק\\\"מ\",\"French_text1\":\"340km\",\"Arabic_text2\":\"يوميًا\",\"Hebrew_text2\":\"יוֹמִי\",\"French_text2\":\"Tous les jours\",\"Arabic_subtext\":\"60 دولارًا\",\"Hebrew_subtext\":\"60 דולר\",\"French_subtext\":\"60 \$\"}')),
    CarModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"16\",\"title\":\"Porsche 911\",\"text1\":\"Automatic\",\"text2\":\"2 day\",\"subtext\":\"\$250\",\"types\":\"Featured car\",\"img1\":\"f1.png\",\"Arabiv_title\":\"بورش 911\",\"Hebrew_title\":\"פורשה 911\",\"French_title\":\"Porsche911\",\"Arabiv_text1\":\"تلقائي\",\"Hebrew_text1\":\"אוֹטוֹמָטִי\",\"French_text1\":\"Automatique\",\"Arabic_text2\":\"2 يوم\",\"Hebrew_text2\":\"2 ימים\",\"French_text2\":\"2 jours\",\"Arabic_subtext\":\"250 دولارًا\",\"Hebrew_subtext\":\"\$250\",\"French_subtext\":\"250 \$\"}')),
    CarModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"17\",\"title\":\"Ferrari F8 tributo\",\"text1\":\"Automatic\",\"text2\":\"3 day\",\"subtext\":\"\$350\",\"types\":\"Featured car\",\"img1\":\"f2.png\",\"Arabiv_title\":\"تحية فيراري F8\",\"Hebrew_title\":\"מחווה של פרארי F8\",\"French_title\":\"Hommage à la Ferrari F8\",\"Arabiv_text1\":\"تلقائي\",\"Hebrew_text1\":\"אוֹטוֹמָטִי\",\"French_text1\":\"Automatique\",\"Arabic_text2\":\"3 يوم\",\"Hebrew_text2\":\"3 ימים\",\"French_text2\":\"3 jours\",\"Arabic_subtext\":\"350 دولارًا\",\"Hebrew_subtext\":\"\$350\",\"French_subtext\":\"350 \$\"}')),
    CarModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"18\",\"title\":\"Mahindra Scorpio\",\"text1\":\"Manual\",\"text2\":\"Daily\",\"subtext\":\"\$50\",\"types\":\"Featured car\",\"img1\":\"f3.png\",\"Arabiv_title\":\"ماهيندرا العقرب\",\"Hebrew_title\":\"מהינדרה עקרב\",\"French_title\":\"Mahindra Scorpion\",\"Arabiv_text1\":\"يدوي\",\"Hebrew_text1\":\"יָדָנִי\",\"French_text1\":\"Manuel\",\"Arabic_text2\":\"يوميًا\",\"Hebrew_text2\":\"יוֹמִי\",\"French_text2\":\"Tous les jours\",\"Arabic_subtext\":\"50 دولارًا\",\"Hebrew_subtext\":\"\$50\",\"French_subtext\":\"50 \$\"}')),
    CarModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"19\",\"title\":\"Toyota fortuner\",\"text1\":\"Automatic\",\"text2\":\"Daily\",\"subtext\":\"\$80\",\"types\":\"Featured car\",\"img1\":\"f4.png\",\"Arabiv_title\":\"تويوتا فورتشنر\",\"Hebrew_title\":\"טויוטה פורטונר\",\"French_title\":\"Toyota fortuner\",\"Arabiv_text1\":\"تلقائي\",\"Hebrew_text1\":\"אוֹטוֹמָטִי\",\"French_text1\":\"Automatique\",\"Arabic_text2\":\"يوميًا\",\"Hebrew_text2\":\"יוֹמִי\",\"French_text2\":\"Tous les jours\",\"Arabic_subtext\":\"80 دولارًا\",\"Hebrew_subtext\":\"80 דולר\",\"French_subtext\":\"80 \$\"}')),
    CarModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"20\",\"title\":\"Lamborghini huracan\",\"text1\":\"Automatic\",\"text2\":\"1 day\",\"subtext\":\"c\",\"types\":\"Featured car\",\"img1\":\"f5.png\",\"Arabiv_title\":\"لامبورجيني هوراكان\",\"Hebrew_title\":\"למבורגיני הוראקן\",\"French_title\":\"Lamborghini huracan\",\"Arabiv_text1\":\"تلقائي\",\"Hebrew_text1\":\"אוֹטוֹמָטִי\",\"French_text1\":\"Automatique\",\"Arabic_text2\":\"1 jour\",\"Hebrew_text2\":\"יום אחד\",\"French_text2\":\"يوم واحد\",\"Arabic_subtext\":\"420 دولارًا\",\"Hebrew_subtext\":\"420 דולר\",\"French_subtext\":\"420 \$\"}')),
    CarModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"21\",\"title\":\"Ferrari laferrari \",\"text1\":\"Automatic\",\"text2\":\"1 day\",\"subtext\":\"\$500\",\"types\":\"Featured car\",\"img1\":\"f6.png\",\"Arabiv_title\":\"فيراري لافيراري\",\"Hebrew_title\":\"פרארי לפרארי\",\"French_title\":\"Ferrari Ferrari\",\"Arabiv_text1\":\"تلقائي\",\"Hebrew_text1\":\"אוֹטוֹמָטִי\",\"French_text1\":\"Automatique\",\"Arabic_text2\":\"يوم واحد\",\"Hebrew_text2\":\"יום אחד\",\"French_text2\":\"1 jour\",\"Arabic_subtext\":\"500 دولار\",\"Hebrew_subtext\":\"500 דולר\",\"French_subtext\":\"500 \$\"}')),
    CarModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"22\",\"title\":\"Porsche 911\",\"text1\":\"Automatic\",\"text2\":\"2 day\",\"subtext\":\"\$250\",\"types\":\"Featured car\",\"img1\":\"f1.png\",\"Arabiv_title\":\"بورش 911\",\"Hebrew_title\":\"פורשה 911\",\"French_title\":\"Porsche911\",\"Arabiv_text1\":\"تلقائي\",\"Hebrew_text1\":\"אוֹטוֹמָטִי\",\"French_text1\":\"Automatique\",\"Arabic_text2\":\"2 يوم\",\"Hebrew_text2\":\"2 ימים\",\"French_text2\":\"2 jours\",\"Arabic_subtext\":\"250 دولارًا\",\"Hebrew_subtext\":\"\$250\",\"French_subtext\":\"250 \$\"}')),
    CarModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"23\",\"title\":\"Ferrari F8 tributo\",\"text1\":\"Automatic\",\"text2\":\"3 day\",\"subtext\":\"\$350\",\"types\":\"Featured car\",\"img1\":\"f2.png\",\"Arabiv_title\":\"تحية فيراري F8\",\"Hebrew_title\":\"מחווה של פרארי F8\",\"French_title\":\"Hommage à la Ferrari F8\",\"Arabiv_text1\":\"تلقائي\",\"Hebrew_text1\":\"אוֹטוֹמָטִי\",\"French_text1\":\"Automatique\",\"Arabic_text2\":\"3 يوم\",\"Hebrew_text2\":\"3 ימים\",\"French_text2\":\"3 jours\",\"Arabic_subtext\":\"350 دولارًا\",\"Hebrew_subtext\":\"\$350\",\"French_subtext\":\"350 \$\"}'))
  ];
  List<CarModelStruct> get carList => _carList;
  set carList(List<CarModelStruct> value) {
    _carList = value;
  }

  void addToCarList(CarModelStruct value) {
    carList.add(value);
  }

  void removeFromCarList(CarModelStruct value) {
    carList.remove(value);
  }

  void removeAtIndexFromCarList(int index) {
    carList.removeAt(index);
  }

  void updateCarListAtIndex(
    int index,
    CarModelStruct Function(CarModelStruct) updateFn,
  ) {
    carList[index] = updateFn(_carList[index]);
  }

  void insertAtIndexInCarList(int index, CarModelStruct value) {
    carList.insert(index, value);
  }

  List<String> _searchList = [];
  List<String> get searchList => _searchList;
  set searchList(List<String> value) {
    _searchList = value;
    prefs.setStringList('ff_searchList', value);
  }

  void addToSearchList(String value) {
    searchList.add(value);
    prefs.setStringList('ff_searchList', _searchList);
  }

  void removeFromSearchList(String value) {
    searchList.remove(value);
    prefs.setStringList('ff_searchList', _searchList);
  }

  void removeAtIndexFromSearchList(int index) {
    searchList.removeAt(index);
    prefs.setStringList('ff_searchList', _searchList);
  }

  void updateSearchListAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    searchList[index] = updateFn(_searchList[index]);
    prefs.setStringList('ff_searchList', _searchList);
  }

  void insertAtIndexInSearchList(int index, String value) {
    searchList.insert(index, value);
    prefs.setStringList('ff_searchList', _searchList);
  }

  int _lungugaeIndex = 0;
  int get lungugaeIndex => _lungugaeIndex;
  set lungugaeIndex(int value) {
    _lungugaeIndex = value;
    prefs.setInt('ff_lungugaeIndex', value);
  }

  int _darkMode = 0;
  int get darkMode => _darkMode;
  set darkMode(int value) {
    _darkMode = value;
    prefs.setInt('ff_darkMode', value);
  }

  List<String> _LocationsNames = [
    '24 Building',
    '25 Building',
    '26 Building',
    'The main gate'
  ];
  List<String> get LocationsNames => _LocationsNames;
  set LocationsNames(List<String> value) {
    _LocationsNames = value;
  }

  void addToLocationsNames(String value) {
    LocationsNames.add(value);
  }

  void removeFromLocationsNames(String value) {
    LocationsNames.remove(value);
  }

  void removeAtIndexFromLocationsNames(int index) {
    LocationsNames.removeAt(index);
  }

  void updateLocationsNamesAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    LocationsNames[index] = updateFn(_LocationsNames[index]);
  }

  void insertAtIndexInLocationsNames(int index, String value) {
    LocationsNames.insert(index, value);
  }

  String _SearchTextlocations = '';
  String get SearchTextlocations => _SearchTextlocations;
  set SearchTextlocations(String value) {
    _SearchTextlocations = value;
  }

  /// [
  ///   "University Main Gate",
  ///   "Student Union Building",
  ///   "Library Entrance",
  ///   "Engineering Building",
  ///   "Science Complex",
  ///   "Sports Center",
  ///   "Campus Dormitories",
  ///   "Parking Lot A",
  ///   "Cafeteria Square",
  ///   "Medical Center"
  /// ]
  List<String> _mockLocations = [];
  List<String> get mockLocations => _mockLocations;
  set mockLocations(List<String> value) {
    _mockLocations = value;
  }

  void addToMockLocations(String value) {
    mockLocations.add(value);
  }

  void removeFromMockLocations(String value) {
    mockLocations.remove(value);
  }

  void removeAtIndexFromMockLocations(int index) {
    mockLocations.removeAt(index);
  }

  void updateMockLocationsAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    mockLocations[index] = updateFn(_mockLocations[index]);
  }

  void insertAtIndexInMockLocations(int index, String value) {
    mockLocations.insert(index, value);
  }

  String _selectedPickup = '';
  String get selectedPickup => _selectedPickup;
  set selectedPickup(String value) {
    _selectedPickup = value;
  }

  String _selectedDropoff = '';
  String get selectedDropoff => _selectedDropoff;
  set selectedDropoff(String value) {
    _selectedDropoff = value;
  }

  DateTime? _selectedDate = DateTime.fromMillisecondsSinceEpoch(1764061740000);
  DateTime? get selectedDate => _selectedDate;
  set selectedDate(DateTime? value) {
    _selectedDate = value;
  }

  DateTime? _selectedTime = DateTime.fromMillisecondsSinceEpoch(1764061800000);
  DateTime? get selectedTime => _selectedTime;
  set selectedTime(DateTime? value) {
    _selectedTime = value;
  }

  String _timeText = '';
  String get timeText => _timeText;
  set timeText(String value) {
    _timeText = value;
  }

  String _seatsText = '';
  String get seatsText => _seatsText;
  set seatsText(String value) {
    _seatsText = value;
  }

  String _pricetext = '';
  String get pricetext => _pricetext;
  set pricetext(String value) {
    _pricetext = value;
  }

  List<dynamic> _sampleTrip = [
    jsonDecode(
        '{\"title\":\"Sample Trip\",\"from\":\"City A\",\"to\":\"City B\",\"time\":\"10:00 AM\",\"price\":\"20\"}'),
    jsonDecode(
        '{\"title\":\"Home to School\",\"from\":\"C\",\"to\":\"D\",\"time\":\"4:15 PM\",\"price\":15}')
  ];
  List<dynamic> get sampleTrip => _sampleTrip;
  set sampleTrip(List<dynamic> value) {
    _sampleTrip = value;
  }

  void addToSampleTrip(dynamic value) {
    sampleTrip.add(value);
  }

  void removeFromSampleTrip(dynamic value) {
    sampleTrip.remove(value);
  }

  void removeAtIndexFromSampleTrip(int index) {
    sampleTrip.removeAt(index);
  }

  void updateSampleTripAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    sampleTrip[index] = updateFn(_sampleTrip[index]);
  }

  void insertAtIndexInSampleTrip(int index, dynamic value) {
    sampleTrip.insert(index, value);
  }

  bool _priceFilled = false;
  bool get priceFilled => _priceFilled;
  set priceFilled(bool value) {
    _priceFilled = value;
  }

  bool _fromFilled = false;
  bool get fromFilled => _fromFilled;
  set fromFilled(bool value) {
    _fromFilled = value;
  }

  bool _toFilled = false;
  bool get toFilled => _toFilled;
  set toFilled(bool value) {
    _toFilled = value;
  }

  bool _timeFilled = false;
  bool get timeFilled => _timeFilled;
  set timeFilled(bool value) {
    _timeFilled = value;
  }

  bool _seatsFilled = false;
  bool get seatsFilled => _seatsFilled;
  set seatsFilled(bool value) {
    _seatsFilled = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
