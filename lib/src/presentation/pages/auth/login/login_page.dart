import 'package:flutter/material.dart';
import 'package:flutter_nest/src/presentation/widgets/default_textfield.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.white,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(
              'assets/img/background1.jpg',
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              fit: BoxFit.cover,
              color: Colors.black54,
              colorBlendMode: BlendMode.darken,
            ),
            Center(
              child: Container(
                //constraints: BoxConstraints(maxWidth: 450, maxHeight: 700),
                width: 450,//MediaQuery.of(context).size.width * 0.45,
                height:MediaQuery.of(context).size.height * 0.55,
                decoration: BoxDecoration(
                  color: Color(0xB20B191E),
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.account_circle,
                      size: 100,
                      color: Colors.white,
                    ),
                    Text(
                      '¡BIENVENIDO!',
                      style: GoogleFonts.outfit(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),

                   Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 40, vertical: 10
                       ),
                     child: DefaultTextField(
                        label: 'Correo',
                        icon: Icons.email_outlined,
                        onChanged: (text) {
                          print('Text: $text');
                        },
                     )
                   ),
                   Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 40, vertical: 10
                      ),
                     child: DefaultTextField(
                        label: 'Contraseña',
                        icon: Icons.lock_outlined,
                        obscureText: true,
                        onChanged: (text) {},
                     )
                   ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                    width: MediaQuery.of(context).size.width * 0.5,
                    height: 40,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Color(0x72A5B0BE),
                          backgroundColor: Color.fromRGBO(128, 0, 32, 100),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child:  Text('INICIAR SESIÓN', style: GoogleFonts.outfit(fontSize: 15, color: Colors.white))
                      ),
                  ),
                   Text("¿No tienes cuenta?", style: GoogleFonts.outfit(fontSize: 15, color: Colors.grey)),
                    Container(
                       margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                      width: MediaQuery.of(context).size.width * 0.5,
                      height: 40,
                      child: TextButton(
                          style: TextButton.styleFrom(
                            foregroundColor: Color.fromRGBO(128, 0, 32, 100)),
                          onPressed: () {
                            Navigator.pushNamed(context, 'register');
                          },
                          child:  Text('REGÍSTRATE', style: GoogleFonts.outfit(fontSize: 15, fontWeight: FontWeight.w600, color: Color.fromRGBO(228, 102, 124, 100))),
                        ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}
