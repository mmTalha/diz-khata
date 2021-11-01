import 'dart:convert';
import 'package:url_launcher/url_launcher.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_sms/flutter_sms.dart';
import 'package:untitled1/prefs/prefrence.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';
import 'package:whatsapp_unilink/whatsapp_unilink.dart';

class ThemeProvider with ChangeNotifier {
  bool _darkTheme = false;
  ThemePreference preference = ThemePreference();

  //getter
  bool get darkTheme => _darkTheme;

  //setter
  set darkTheme(bool value) {
    _darkTheme = value;
    preference.setTheme(value);
    notifyListeners();
  }

  Future<List> fetchflat(sender, mobile, message) async {
    var data = {
      'api_key': '923146616912-865dd65e-ccb3-4653-ac91-b3845a1b9a2f',
      'sender': sender,
      'mobile': mobile,
      'message': message,
    };
    final response = await http.post(
        Uri.parse(
          'https://sendpk.com/api/sms.php',
        ),
        body: data);

    if (response.statusCode == 200) {
      List datas = (jsonDecode(response.body));
      notifyListeners();
      return datas;
    } else {
      throw Exception('Failed to load album');
    }
  }

  void sms() async {
    var _result = (await sendSMS(
        message: 'apny ghabrana nahi hai',
        recipients: ['03132374807']).catchError((onError) {
      print(onError);
    }));
    print(_result);
  }
  launchWhatsApp() async {
    final link = WhatsAppUnilink(
      phoneNumber: '+001-(555)1234567',
      text: "Hey! I'm inquiring about the apartment listing",
    );
    await launch('$link');
  }

  Future<List> register(mobilenum, shopname) async {
    var data = {
      'phoneno': mobilenum,
      'shopname': shopname,
    };
    final response = await http.post(
      Uri.parse(
        'http://193.0.0.116:8080/BizKhataApis/testregister.php',
      ),
      body: data,
    );

    if (response.statusCode == 200) {
      List datas = (jsonDecode(response.body));
      print(datas);
      notifyListeners();
      return datas;
    } else {
      throw Exception('Failed to load album');
    }
  }

  Future login(mobilenum) async {
    var data = {
      'phoneno': mobilenum,
    };
    final response = await http.post(
      Uri.parse(
        'http://193.0.0.116:8080/BizKhataApis/sellerLogin.php',
      ),
      body: data,
    );

    if (response.statusCode == 200) {
      var datas = (jsonDecode(response.body));
      print(datas);
      notifyListeners();
      return datas;
    } else {
      throw Exception('Failed to load album');
    }
  }

  Future addkhata(customername, customerphone) async {
    var data = {
      'customername': customername,
      'customerphone': customerphone,
    };
    final response = await http.post(
      Uri.parse(
        'http://193.0.0.115:8080/BizKhataApis/addCustmer.php',
      ),
      body: data,
    );

    if (response.statusCode == 200) {
      List datas = (jsonDecode(response.body));
      print(datas);
      notifyListeners();
      return datas;
    } else {
      throw Exception('Failed to load album');
    }
  }
  Future addsupplier(customername, customerphone) async {
    var data = {
      'customername': customername,
      'customerphone': customerphone,
    };
    final response = await http.post(
      Uri.parse(
        'http://193.0.0.115:8080/BizKhataApis/add_supplier.php',
      ),
      body: data,
    );

    if (response.statusCode == 200) {
      List datas = (jsonDecode(response.body));
      print(datas);
      notifyListeners();
      return datas;
    } else {
      throw Exception('Failed to load album');
    }
  }
  Future<List> getksupplierusers() async {
    final response = await http.get(
      Uri.parse(
        'http://193.0.0.115:8080/BizKhataApis/getsupplier.php',
      ),
    );

    if (response.statusCode == 200) {
      List datas = (jsonDecode(response.body));

      print(datas);
      notifyListeners();

      return datas;
    } else {
      throw Exception('Failed to load album');
    }}
  Future<List> getkhatausers() async {
    final response = await http.get(
      Uri.parse(
        'http://193.0.0.115:8080/BizKhataApis/getcustomer.php',
      ),
    );

    if (response.statusCode == 200) {
      List datas = (jsonDecode(response.body));

      print(datas);
      notifyListeners();

      return datas;
    } else {
      throw Exception('Failed to load album');
    }
  }
}
