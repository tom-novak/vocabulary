import 'package:flutter/material.dart';

class TranslationForm extends StatelessWidget {
  const TranslationForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          decoration: const InputDecoration(
            label: Text('Text'),
          ),
        ),
        TextFormField(
          decoration: const InputDecoration(
            label: Text('Translation'),
          ),
        ),
        Row(
          children: [
            Expanded(
              child: TextFormField(
                decoration: const InputDecoration(
                  label: Text('Genitive suffix'),
                ),
              ),
            ),
            const SizedBox(
              width: 16.0,
            ),
            Expanded(
              child: TextFormField(
                decoration: const InputDecoration(
                  label: Text('Nominative suffix'),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
