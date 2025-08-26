import 'package:flutter/material.dart';
import '../themes/colors.dart';

class GSAppBar extends StatelessWidget implements PreferredSizeWidget
  {
    const GSAppBar({super.key});

    @override
    Widget build(BuildContext build)
      { 
          return AppBar(
            title:Text(
              "GharSewa",
              style: TextStyle(
                color: GSColors().white,
              ),
              
              ),
            backgroundColor: GSColors().green,
          );
      }

  Size get preferredSize => const Size.fromHeight(kToolbarHeight);


  }
