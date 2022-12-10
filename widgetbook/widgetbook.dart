import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

import 'widgets/text.dart';

class WidgetbookHotReload extends StatelessWidget {
  const WidgetbookHotReload({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      appInfo: AppInfo(name: 'Widgetbook Example'),
      categories: [
        WidgetbookCategory(
          name: 'Material',
          isExpanded: true,
          folders: [
            getTextWidgetBookFolder(),
          ],
        ),
      ],
      themes: [
        WidgetbookTheme(
          name: 'Light',
          data: ThemeData.light(),
        ),
        WidgetbookTheme(
          name: 'Dark',
          data: ThemeData.dark(),
        ),
      ],
    );
  }
}
