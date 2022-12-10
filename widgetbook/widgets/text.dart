import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

WidgetbookFolder getTextWidgetBookFolder() {
  return WidgetbookFolder(
    name: 'Text',
    isExpanded: true,
    widgets: [getMyTextWidgetbookComponent()],
  );
}

WidgetbookComponent getMyTextWidgetbookComponent() {
  return WidgetbookComponent(
    name: 'MyText',
    isExpanded: true,
    useCases: [
      WidgetbookUseCase(
        name: 'Default',
        builder: (context) => Center(
          child: Text(
            context.knobs.text(
              label: 'Text',
              description: 'Visible text',
              initialValue: 'Title1',
            ),
            style: TextStyle(
              fontSize: context.knobs.slider(
                label: 'Font Size',
                description: 'Slide for changing font size.',
                initialValue: 16,
                min: 12,
                max: 40,
              ),
            ),
          ),
        ),
      ),
    ],
  );
}
