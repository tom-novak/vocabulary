import 'package:flutter/material.dart';
import 'package:flutter_common_widgets/flutter_common_widgets.dart';
import 'package:vocabulary/src/presentation/translation_edit/widget/example_field.dart';
import 'package:vocabulary/src/presentation/translation_edit/widget/translation_form.dart';

class TranslationEditScreen extends StatefulWidget {
  const TranslationEditScreen({Key? key}) : super(key: key);

  @override
  State<TranslationEditScreen> createState() => _TranslationEditScreenState();
}

class _TranslationEditScreenState extends State<TranslationEditScreen> {
  var exampleControllers = <TextEditingController>[];

  @override
  void dispose() {
    for (var controller in exampleControllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vocabulary'),
      ),
      body: Form(
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: Padding(
                padding: kContainerPadding,
                child: TranslationForm(),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: kContainerPadding,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16.0),
                      child: Text(
                        'Examples',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ),
                    for (var i = 0; i < exampleControllers.length; i++)
                      Padding(
                        padding: const EdgeInsets.only(bottom: 16.0),
                        child: ExampleField(
                          trailing: IconButton(
                              onPressed: () => _removeExampleField(i),
                              icon: const Icon(
                                Icons.delete_forever_outlined,
                                color: Colors.red,
                              )),
                        ),
                      ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: _addExampleField,
                          child: Text('Add next'.toUpperCase()),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _addExampleField() {
    setState(() {
      exampleControllers.add(TextEditingController());
    });
  }

  void _removeExampleField(int index) {
    setState(() {
      var controller = exampleControllers[index];
      exampleControllers.remove(controller);
    });
  }
}
