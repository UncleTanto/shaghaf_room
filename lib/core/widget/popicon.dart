import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import 'package:flutter/material.dart';

class popicon  extends StatelessWidget {
  final Color iconcolor;
  const popicon ({super.key, required this.iconcolor});

  @override
  Widget build(BuildContext context) {
    return
      IconButton(
      icon: Icon(Icons.arrow_back,color:iconcolor ,),
      onPressed: () => context.pop(),
    );
  }
}

