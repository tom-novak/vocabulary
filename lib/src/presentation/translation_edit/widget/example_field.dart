import 'package:flutter/material.dart';
import 'package:vocabulary/src/domain/entity/translation_example.dart';

class ExampleField extends StatefulWidget {
  final Widget? trailing;
  final ValueChanged<TranslationExample>? onValueChanged;

  const ExampleField({
    Key? key,
    this.trailing,
    this.onValueChanged,
  }) : super(key: key);

  @override
  State<ExampleField> createState() => _ExampleFieldState();
}

class _ExampleFieldState extends State<ExampleField> {
  final textController = TextEditingController();
  final translationController = TextEditingController();

  @override
  void dispose() {
    textController.dispose();
    translationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            children: [
              TextFormField(
                controller: textController,
                decoration: const InputDecoration(
                  label: Text('Example'),
                ),
              ),
              TextFormField(
                controller: translationController,
                decoration: const InputDecoration(
                  label: Text('Translation'),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Align(
            alignment: Alignment.center,
            child: widget.trailing,
          ),
        ),
      ],
    );
  }
}
