import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Calculadora'),
        ),
        body: Row(
          children: <Widget>[
            // Panel de historial
            Expanded(
              flex: 1,
              child: Container(
                color: Color.fromARGB(255, 245, 243, 243),
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(top: 16.0, left: 16.0),
                        alignment: Alignment.topLeft,
                        child: Title(
                          child: Text('History'),
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        padding: EdgeInsets.all(16.0),
                        alignment: Alignment.topLeft,
                        child: Title(color: Colors.black, child: Text('Today')),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.topRight,
                        child: Column(
                          children: <Widget>[
                            Text('-5 x 125'),
                            Text('-625'),
                            SizedBox(height: 5),
                            Text('-2.0 x 3.55'),
                            Text('7.1'),
                            SizedBox(height: 5),
                            Text('2,021 + 1'),
                            Text('2,022'),
                            SizedBox(height: 5),
                          ],
                        ),
                      ),
                      ),
                  ],
                ),
              ),
            ),
            // Panel de la calculadora
            Expanded(
              flex: 3,
              child: Column(
                children: <Widget>[
                  // Pantalla de la calculadora
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(24.0),
                      color: Colors.grey[200], 
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Text(
                            '16 x (0.5)', 
                            style: TextStyle(
                              fontSize: 36,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                            textAlign: TextAlign.right,
                          ),
                          Text(
                            '8', 
                            style: TextStyle(
                              fontSize: 48,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                            textAlign: TextAlign.right,
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Botones de la calculadora
                  Expanded(
                    flex: 2,
                    child: Container(
                      child: Column(
                        children: [
                          Expanded(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                _buildButton("√", Colors.grey[300]!),
                                _buildButton("7", Colors.grey[300]!),
                                _buildButton("8", Colors.grey[300]!),
                                _buildButton("9", Colors.grey[300]!),
                                _buildButton("÷", const Color.fromARGB(255, 114, 176, 227)!),
                                _buildButton("AC", Color.fromARGB(255, 205, 120, 207)!),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                _buildButton("n", Colors.grey[300]!),
                                _buildButton("4", Colors.grey[300]!),
                                _buildButton("5", Colors.grey[300]!),
                                _buildButton("6", Colors.grey[300]!),
                                _buildButton("X", const Color.fromARGB(255, 114, 176, 227)!),
                                _buildButton("()", const Color.fromARGB(255, 114, 176, 227)!),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                _buildButton("^", Colors.grey[300]!),
                                _buildButton("1", Colors.grey[300]!),
                                _buildButton("2", Colors.grey[300]!),
                                _buildButton("3", Colors.grey[300]!),
                                _buildButton("-", const Color.fromARGB(255, 114, 176, 227)!),
                                _buildButton("%", const Color.fromARGB(255, 114, 176, 227)!),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                _buildButton(">", Colors.grey[300]!),
                                _buildButton("0", Colors.grey[300]!),
                                _buildButton(".", Colors.grey[300]!),
                                _buildButton("⌫", Colors.grey[300]!),
                                _buildButton("+", const Color.fromARGB(255, 114, 176, 227)!),
                                _buildButton("=", const Color.fromARGB(255, 114, 176, 227)!),
                              ],
                            ),
                          ),
                          
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildButton(String label, Color color) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: TextButton(
          onPressed: () {
            // Acción del botón
          },
          child: Text(
            label,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
