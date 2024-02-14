import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Practica 01'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // Obtiene el ancho y alto de la pantalla actual
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    // Define un conjunto de estrellas usando Row
    final stars = Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.star, color: Colors.green[500], size: 20),
        Icon(Icons.star, color: Colors.green[500], size: 20),
        Icon(Icons.star, color: Colors.green[500], size: 20),
        const Icon(Icons.star, color: Colors.black, size: 20),
        const Icon(Icons.star, color: Colors.black, size: 20),
      ],
    );

    // Define un contenedor con una fila de estrellas y el texto "170 Reviews"
    final ratings = Container(
      padding: EdgeInsets.all(screenWidth * 0.001),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          stars,
          Text(
            '170 Reviews',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w800,
              fontFamily: 'Roboto',
              letterSpacing: 0.5,
              fontSize: screenWidth * 0.02,
            ),
          ),
        ],
      ),
    );

    // Define el estilo de texto para la descripción
    const descTextStyle = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w800,
      fontFamily: 'Roboto',
      letterSpacing: 0.5,
      fontSize: 18,
      height: 2,
    );

    // Define un conjunto de iconos con texto usando DefaultTextStyle
    final iconList = DefaultTextStyle.merge(
      style: descTextStyle,
      child: Container(
        padding: EdgeInsets.all(screenWidth * 0.01),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Columnas con iconos y texto
          ],
        ),
      ),
    );

    // Define texto del título y subtítulo
    const titleText = Text(
      'Strawberry Pavlova',
      style: TextStyle(
        fontFamily: 'Times New Roman',
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );

    const subTitle = Text(
      'Pavlova is a merengue-based dessert named after the Russian ballerina Anna Pavlova. Pavlova features a crisp and soft, light inside, topped with fruit and whipped cream',
      style: TextStyle(
        fontFamily: 'Times New Roman',
        fontSize: 14,
        color: Colors.black,
      ),
    );

    // Define una columna con el título, subtítulo, conjunto de estrellas y conjunto de íconos
    final leftColumn = Container(
      padding: EdgeInsets.all(screenWidth * 0.01),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          titleText,
          subTitle,
          ratings,
          iconList,
        ],
      ),
    );

    // Define la imagen principal
    final mainImage = Image.asset(
      'images/postre.jpg',
      width: screenWidth * 0.5,
      height: screenHeight * 0.9,
      fit: BoxFit.cover,
    );

    // Retorna un Scaffold con AppBar y un cuerpo que contiene una Card con una fila de elementos
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title), // El título es el título del widget MyHomePage
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.fromLTRB(screenWidth * 0.02, screenHeight * 0.05, screenWidth * 0.02, screenHeight * 0.03),
          height: screenHeight * 0.85,
          child: Card(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: screenWidth * 0.45,
                  child: leftColumn, // La columna con el título, subtítulo, estrellas y íconos
                ),
                mainImage, // La imagen principal
              ],
            ),
          ),
        ),
      ),
    );
  }
}












