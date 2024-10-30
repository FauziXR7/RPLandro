import '../views/profileview.dart';
import 'package:flutter/material.dart';


class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("halaman Login"),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/');
            },
            child: Text("Home"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/login');
            },
            child: Text("Home"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => ProfileView(
                    nama: "budi",
                    alamat: "malang",
                    juara: 1,
                  ),
                ),
              );
            },
            child: Text("Profile"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/transaksi', arguments: {
                'id': 1,
                'product': 'bakso',
                'price': 5000,
              });
            },
            child: Text("Trans"),
          )
        ],
      ),
    );
  }
}