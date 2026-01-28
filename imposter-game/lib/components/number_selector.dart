import 'package:flutter/material.dart';
import 'package:sussy/theme/app_colors.dart';

class NumberSelector extends StatefulWidget {
  // AQUI DEFINIMOS LOS PARAMETROS QUE QUEREMOS QUE SE PASEN
  final String title;
  final int value;
  final Function() onIncrement;
  final Function() onDecrement;

  const NumberSelector({super.key, required this.title, required this.onIncrement, required this.onDecrement,required this.value});

  @override
  State<NumberSelector> createState() => _NumberSelectorState();
}

class _NumberSelectorState extends State<NumberSelector> {
  // TAMANYOS
  static const double tamanyoTexto = 30;
  static const double tamanyoValor = 30;
  static const double tamanyoIcon = 30;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.secondary,
        borderRadius: BorderRadius.circular(16)
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Text(widget.title,
              style: TextStyle(
                fontFamily: 'mine',
                fontSize: tamanyoTexto,     // TAMANYO TEXTO
                color: AppColors.accent
              ),),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton( // RESTAR
                  heroTag: null,
                  onPressed: (){
                    widget.onDecrement();
                  }, 
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0)
                  ), 
                  backgroundColor: AppColors.accent,
                  child: Icon(
                    Icons.remove, 
                    color: Colors.black,
                    size: tamanyoIcon,),),
                SizedBox(
                  width: 50,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Text(
                  widget.value.toString(),
                  style: TextStyle(        // VALOR
                  fontFamily: 'mine',
                  fontSize: tamanyoValor,       // TAMANYO VALOR
                  color: AppColors.accent,
                  fontWeight: FontWeight.bold,
                                )),
                ),
                SizedBox(
                  width: 50,
                ),
                FloatingActionButton( // ANYADIR
                  heroTag: null,
                  onPressed: (){
                    widget.onIncrement();
                  }, 
                  shape: RoundedRectangleBorder(  
                    borderRadius: BorderRadius.circular(0)
                  ),
                  backgroundColor: AppColors.accent,
                  child: Icon(
                    Icons.add,
                    color: Colors.black,
                    size: tamanyoIcon,
                  ),),
              ],
            )
          ],
        ),
      ),
    );
  }
}