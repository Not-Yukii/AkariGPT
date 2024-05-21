import 'package:flutter/material.dart';
import '../../../core/app_export.dart'; // ignore: must_be_immutable

class ListajouterdelaItemWidget extends StatelessWidget {
  const ListajouterdelaItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Text(
      "Ajouter de la symétrie :",
      style: theme.textTheme.bodySmall,
    );
  }
}