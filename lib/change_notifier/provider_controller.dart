import 'package:flutter/material.dart';

class ProviderController extends ChangeNotifier {
  String name = 'Nome';
  String imgAvatar = 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQI5WkB9BtAGuwZ68dzmYN6bo8X1fRAixFeiQ&usqp=CAU';
  String birthDate = 'Data';

  void alterarDados() {
    name = 'GMChristo';
    imgAvatar = 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdid59FD4EosIuWi0dMeu5rA7xPug7DQAtAA&usqp=CAU';
    birthDate = '28/11/1989';
    notifyListeners();
  }

  void alterarNome() {
    name = 'Gabriel Christo';
    notifyListeners();
  }
}
