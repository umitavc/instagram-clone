import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:instagram_clone/screens/login_scereen.dart';
import 'package:instagram_clone/utils/color.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Burada 2 saniye bekleyip ana sayfaya yönlendirme işlemini gerçekleştiriyoruz.
    Future.delayed(const Duration(seconds: 2), () {
      // Ana sayfaya yönlendirme işlemi
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: mobileBackgroundColor, // Splash ekran rengi
      body: Center(
        child: SpinKitCircle( // CircularProgressIndicator yerine SpinKitCircle kullanıyoruz.
          color: Colors.white, // Dönüş çemberi rengi
          size: 50.0, // Dönüş çemberi boyutu
        ),
      ),
    );
  }
}