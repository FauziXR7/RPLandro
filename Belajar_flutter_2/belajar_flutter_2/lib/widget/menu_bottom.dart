import 'package:flutter/material.dart';
import '../views/profileview.dart';

class MenuBottom extends StatefulWidget {
  int activePage;
  MenuBottom(this.activePage);

  @override
  State<MenuBottom> createState() => _MenuBottomState();
}

class _MenuBottomState extends State<MenuBottom> {
  void getLink(index) {
    if (index == 0) {
      Navigator.pushReplacementNamed(context, '/');
    } else if (index == 1) {
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
    } else if (index == 0) {
      Navigator.pushReplacementNamed(
        context,
        '/transaksi',
        arguments: {
          "id": 1,
          "product": "buah",
          "price": 4000,
        },
      );
    } else if (index == 3) {
      Navigator.pushReplacementNamed(context, '/movie');
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        currentIndex: widget.activePage,
        onTap: getLink,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Transactions',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.file_copy),
            label: 'Movie',
          ),
        ]);
  }
}
