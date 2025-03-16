// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_import, prefer_relative_imports, directives_ordering

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AppGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:widgetbook/widgetbook.dart' as _i1;
import 'package:widgetbook_workspace/container.dart' as _i5;
import 'package:widgetbook_workspace/cool_button.dart' as _i3;
import 'package:widgetbook_workspace/range_slider.dart' as _i4;
import 'package:widgetbook_workspace/user_tile.dart' as _i2;

final directories = <_i1.WidgetbookNode>[
  _i1.WidgetbookLeafComponent(
    name: 'UserTile',
    useCase: _i1.WidgetbookUseCase(
      name: 'Primary',
      builder: _i2.buildUserTile,
    ),
  ),
  _i1.WidgetbookCategory(
    name: 'Interactions',
    children: [
      _i1.WidgetbookFolder(
        name: 'buttons',
        children: [
          _i1.WidgetbookComponent(
            name: 'CoolButton',
            useCases: [
              _i1.WidgetbookUseCase(
                name: 'Blue',
                builder: _i3.secondaryButton,
              ),
              _i1.WidgetbookUseCase(
                name: 'Red',
                builder: _i3.primaryButton,
              ),
            ],
          )
        ],
      )
    ],
  ),
  _i1.WidgetbookFolder(
    name: 'material',
    children: [
      _i1.WidgetbookLeafComponent(
        name: 'RangeSlider',
        useCase: _i1.WidgetbookUseCase(
          name: 'CustomRangeSlider',
          builder: _i4.rangeSlider,
        ),
      )
    ],
  ),
  _i1.WidgetbookFolder(
    name: 'widgets',
    children: [
      _i1.WidgetbookLeafComponent(
        name: 'Container',
        useCase: _i1.WidgetbookUseCase(
          name: 'Container',
          builder: _i5.container,
        ),
      )
    ],
  ),
];
