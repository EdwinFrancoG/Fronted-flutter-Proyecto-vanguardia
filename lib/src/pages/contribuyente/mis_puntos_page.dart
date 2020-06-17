import 'package:flutter/material.dart';
import 'package:awesome_card/awesome_card.dart';

class MisPuntosPage extends StatefulWidget {
  @override
  _MisPuntosPageState createState() => _MisPuntosPageState();
}

class _MisPuntosPageState extends State<MisPuntosPage> {
  String nombreContribuyente = "Carlos Martinez";
  String fechaVencimiento = "12/2022";
  String puntosGanados = "850";

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CreditCard(
        cardNumber: nombreContribuyente,
        cardExpiry: "Puntos Vencen: $fechaVencimiento",
        cardHolderName: "Cantidad de Puntos: $puntosGanados",
        cvv: "456",
        bankName: "Mis Puntos Ganados",
        cardType:
            CardType.maestro, // Optional if you want to override Card Type
        showBackSide: false,
        frontBackground: CardBackgrounds.black,
        backBackground: CardBackgrounds.white,
        showShadow: true,
      ),
    );
  }
}
