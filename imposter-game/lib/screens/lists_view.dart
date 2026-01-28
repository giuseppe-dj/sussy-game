import 'package:flutter/material.dart';
import 'package:sussy/theme/app_colors.dart';

class LView extends StatefulWidget {
  const LView({super.key});

  @override
  State<LView> createState() => _LViewState();
}

class _LViewState extends State<LView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: scrollView(context),
    );
  }

  SingleChildScrollView scrollView(BuildContext context) {
    return SingleChildScrollView(
    child: Padding(
      padding: const EdgeInsets.only(top: 60),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          mainTittle(context),
          //añadir el sumador de lista
        ],
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
                      " Lists",
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