import 'package:flutter/material.dart';
import 'package:qrscan/qrscan.dart' as scanner;

class AgregarRecoleccionPage extends StatefulWidget {
  AgregarRecoleccionPage({Key key}) : super(key: key);

  @override
  _AgregarRecoleccionPageState createState() => _AgregarRecoleccionPageState();
}

class _AgregarRecoleccionPageState extends State<AgregarRecoleccionPage> {
  final _formKey = GlobalKey<FormState>();
  double sliderValue = 0;
  bool estaSeparada = false;
  final controlador = TextEditingController();
  @override
  void initState() {
    super.initState();

    controlador.addListener(_printLatestValue);
  }

  @override
  void dispose() {
    // Limpia el controlador cuando el widget se elimine del árbol de widgets
    // Esto también elimina el listener _printLatestValue
    controlador.dispose();
    super.dispose();
  }

  _printLatestValue() {
    print("Second text field: ${controlador.text}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                botonScaner(),
                SwitchListTile(
                    title: const Text('Desechos estan separados?'),
                    activeColor: Colors.green,
                    value: estaSeparada,
                    onChanged: (bool value) {
                      setState(() {
                        estaSeparada = value;
                      });
                    }),
                Text('Deslice para cantidad de lilbras'),
                Slider(
                  min: 0.0,
                  max: 10.0,
                  divisions: 10,
                  value: sliderValue,
                  label: 'Porcentaje de lleno el recipiente',
                  activeColor: Colors.green,
                  inactiveColor: Colors.blueGrey,
                  onChanged: (newValue) {
                    setState(() {
                      sliderValue = newValue;
                    });
                  },
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Container(
                      child: Text(
                    'Porcentaje de lleno $sliderValue',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  )),
                ),
              ],
            ),
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.send),
        onPressed: () {},
        backgroundColor: Theme.of(context).primaryColor,
      ),
    );
  }

  Widget botonScaner() {
    return Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: TextField(
                      controller: controlador,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Id recipiente',
                      ),
                    )),
                Text(
                  'Presione el icono para Escanear codigo QR',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          IconButton(
            icon: Icon(Icons.filter_center_focus),
            tooltip: 'Codigo QR',
            onPressed: () {
              _leerCodigoQR();
            },
          ),
        ],
      ),
    );
  }

  _leerCodigoQR() async {
    String cameraScanResult = await scanner.scan();

    setState(() {
      controlador.text = cameraScanResult;
    });
  }

  Widget form() {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 150),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Ingrese Id de recipiente o escane el codigo QR',
            ),
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: RaisedButton(
              onPressed: () {
                // Validate will return true if the form is valid, or false if
                // the form is invalid.
                if (_formKey.currentState.validate()) {
                  // Process data.
                }
              },
              child: Text('Guardar'),
            ),
          ),
        ],
      ),
    );
  }
}
