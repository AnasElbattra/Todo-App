import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget defaultFormField({
  Function? onSubmit,
  Function? onChanged,
  Function? onTap,
  required TextEditingController controller,
  required TextInputType type,
  required Function validate,
  required String label,
  required IconData prefixIcon,
}) =>
    TextFormField(
      controller: controller,
      keyboardType: type,
      onFieldSubmitted: (s) => onSubmit!(s),
      onChanged: (value) {
        onChanged!(value);
      },
      validator: (value) {
        validate(value);
      },
      decoration: InputDecoration(
          labelText: label,
          prefixIcon: Icon(prefixIcon),
          border: OutlineInputBorder()),
      onTap: () => onTap!,
    );

Widget formTasks({
  required String title,
  required String date,
  required String time,
}) =>
    ListTile(
      visualDensity: VisualDensity.comfortable,
      leading: SizedBox(
        child: CircleAvatar(
          child: FittedBox(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                time,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          radius: 40,
          backgroundColor: Colors.lightBlue,
        ),
      ),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w700,
        ),
      ),
      subtitle: Text(
        date,
        style: TextStyle(color: Colors.grey),
      ),
    );
