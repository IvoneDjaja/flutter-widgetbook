import 'package:flutter/material.dart';
import 'package:mocktail/mocktail.dart';
import 'package:flutter_widgetbook/user_tile.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';
import 'package:provider/provider.dart';

class MockUserProvider extends Mock implements UserProvider {}

@UseCase(name: 'Primary', type: UserTile)
Widget buildUserTile(BuildContext context) {
  return ChangeNotifierProvider<UserProvider>(
    create: (_) {
      final provider = MockUserProvider();
      when(() => provider.user).thenReturn('Mocked User');

      return provider;
    },
    child: const UserTile(),
  );
}
