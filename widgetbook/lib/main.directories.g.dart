// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_import, prefer_relative_imports, directives_ordering

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AppGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:widgetbook/widgetbook.dart' as _i1;
import 'package:widgetbook_workspace/column.dart' as _i5;
import 'package:widgetbook_workspace/container.dart' as _i6;
import 'package:widgetbook_workspace/cool_button.dart' as _i3;
import 'package:widgetbook_workspace/decorated_box.dart' as _i7;
import 'package:widgetbook_workspace/directionality.dart' as _i8;
import 'package:widgetbook_workspace/flex.dart' as _i9;
import 'package:widgetbook_workspace/range_slider.dart' as _i4;
import 'package:widgetbook_workspace/row.dart' as _i10;
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
        name: 'Column',
        useCase: _i1.WidgetbookUseCase(
          name: 'Column',
          builder: _i5.column,
        ),
      ),
      _i1.WidgetbookLeafComponent(
        name: 'Container',
        useCase: _i1.WidgetbookUseCase(
          name: 'Container',
          builder: _i6.container,
        ),
      ),
      _i1.WidgetbookLeafComponent(
        name: 'DecoratedBox',
        useCase: _i1.WidgetbookUseCase(
          name: 'DecoratedBox',
          builder: _i7.decoratedBox,
        ),
      ),
      _i1.WidgetbookLeafComponent(
        name: 'Directionality',
        useCase: _i1.WidgetbookUseCase(
          name: 'Directionality',
          builder: _i8.directionality,
        ),
      ),
      _i1.WidgetbookLeafComponent(
        name: 'Flex',
        useCase: _i1.WidgetbookUseCase(
          name: 'Flex',
          builder: _i9.flex,
        ),
      ),
      _i1.WidgetbookLeafComponent(
        name: 'Row',
        useCase: _i1.WidgetbookUseCase(
          name: 'Row',
          builder: _i10.row,
        ),
      ),
    ],
  ),
];
