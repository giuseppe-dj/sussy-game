import 'package:flutter/material.dart';
import 'package:sussy/components/number_selector.dart';
import 'package:sussy/theme/app_colors.dart';

//falta por añadir el desplegable con las listas creadas
//la forma de comunicar las listas creadas con esta pagina
//terminar antes la parte de crear y añadir listas en memoria fija

class PlaySettings extends StatefulWidget {

  const PlaySettings({
    super.key,
  });

  @override
  State<PlaySettings> createState() => _PlaySettingsState();
}

class _PlaySettingsState extends State<PlaySettings> {
  int players = 1;
  int impostors = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 60, left: 16, right: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              mainTittle(context),
              playersCount(),
              SizedBox(
                height: 24,
              ),
              impostorsCount()
            ],
          ),
        ),
      ),
    );
  }

  SizedBox playersCount() {
    return SizedBox(
              height: 130,
              width: double.infinity,
              child: Center(
                child: NumberSelector(
                  title: "Players",
                  value:
                      players, 
                  onIncrement: () {
                    setState(() {
                      players++; 
                    });
                  },
                  onDecrement: () {
                    setState(() {
                      if (players > 1)
                        {players--;} 
                    });
                  },
                ),
              ),
            );
  }

  SizedBox impostorsCount() {
    return SizedBox(
              height: 130,
              width: double.infinity, 
              child: Center(
                child: NumberSelector(
                  title: "Imposters",
                  value:
                      impostors, 
                  onIncrement: () {
                    setState(() {
                      if(players/2 > impostors){
                        impostors++;
                      } // Actualizamos la variable
                    });
                  },
                  onDecrement: () {
                    setState(() {
                      if (impostors > 1)
                        {impostors--;} // Evitamos números negativos
                    });
                  },
                ),
              ),
            );
  }

  Row mainTittle(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 36),
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.secondary,
              borderRadius: BorderRadius.circular(10),
            ),
            child: SizedBox(
              width: 300,
              height: 100,
              child: Center(
                child: Row(
                  children: [
                    IconButton(
                      onPressed: (){
                        Navigator.pop(context);
                      }, 
                      icon: Icon(
                        Icons.arrow_back_sharp,
                        color: AppColors.accent,
                        size: 50,)),
                    Text(
                      " Play",
                      style: TextStyle(
                        fontFamily: 'dream',
                        fontSize: 40,
                        color: AppColors.accent,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
