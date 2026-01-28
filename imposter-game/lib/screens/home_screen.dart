import 'package:flutter/material.dart';
import 'package:sussy/screens/lists_view.dart';
import 'package:sussy/screens/play_settings.dart';
import 'package:sussy/theme/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: mainColumn(context),
    );
  }

  Column mainColumn(BuildContext context) {
    return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      mainTittle(),
      Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          
          children: [
            playButton(context),
            listButton(context)
          ],
        ),
      )
    ],
  );
  }

  ElevatedButton playButton(BuildContext context) {
    return ElevatedButton(onPressed: (){
            Navigator.push(
              context, 
              MaterialPageRoute(builder: (context) => PlaySettings(),
              ));
          }, 
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.secondary,
            foregroundColor: AppColors.accent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8)
            ),
            elevation: 10
          ),
          child: 
          Icon(
            Icons.play_arrow_rounded, // ICONO
            size: 100,));
  }

  ElevatedButton listButton(BuildContext context) {
    return ElevatedButton(onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LView()
              ));
          }, 
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.secondary,
            foregroundColor: AppColors.accent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8)
            ),
            elevation: 10
          ),
          child: 
          Icon(
            Icons.list_rounded, // ICONO
            size: 100,));
  }

  Row mainTittle() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, bottom: 64),
            child: Container(
              width: 310,
              decoration: BoxDecoration(
                color: AppColors.secondary,
                borderRadius: BorderRadius.circular(8)
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  textAlign: TextAlign.center,
                  "Imposter game",
                  style: TextStyle(
                    color: AppColors.accent,
                    fontFamily: 'dream',
                    fontSize: 32
                  ),),
              ),
            ),
          ),
        ],
      );
  }
}