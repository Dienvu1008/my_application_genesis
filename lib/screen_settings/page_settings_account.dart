import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_application_genesis/screen_settings/auth/authentication_repository.dart';
import 'package:my_application_genesis/screen_settings/auth/bloc_account_page.dart';

import 'auth/login/view/login_page.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({
    required AuthenticationRepository authenticationRepository,
    super.key,
  }) : _authenticationRepository = authenticationRepository;

  final AuthenticationRepository _authenticationRepository;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: _authenticationRepository,
      child: BlocProvider(
        create: (_) => AccountPageBloc(
          authenticationRepository: _authenticationRepository,
        ),
        child: const AccountPageView(),
      ),
    );
  }
}

class AccountPageView extends StatelessWidget {
  const AccountPageView({Key? key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FlowBuilder<AccountStatus>(
        state: context.select((AccountPageBloc bloc) => bloc.state.status),
        onGeneratePages: onGenerateAppViewPages,
      ),
    );
  }
}

List<Page<dynamic>> onGenerateAppViewPages(
  AccountStatus state,
  List<Page<dynamic>> pages,
) {
  switch (state) {
    case AccountStatus.authenticated:
      return [HomePage.page()];
    case AccountStatus.unauthenticated:
      return [LoginPage.page()];
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static Page<void> page() => const MaterialPage<void>(child: HomePage());

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final user = context.select((AccountPageBloc bloc) => bloc.state.user);
    return Align(
      alignment: const Alignment(0, -1 / 3),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Avatar(photo: user.photo),
          const SizedBox(height: 4),
          Text(user.email ?? '', style: textTheme.titleLarge),
          const SizedBox(height: 4),
          Text(user.name ?? '', style: textTheme.headlineSmall),
          IconButton(
            key: const Key('homePage_logout_iconButton'),
            icon: const Icon(Icons.exit_to_app),
            onPressed: () {
              context.read<AccountPageBloc>().add(const AppLogoutRequested());
            },
          )
        ],
      ),
    );
  }
}

const _avatarSize = 48.0;

class Avatar extends StatelessWidget {
  const Avatar({super.key, this.photo});

  final String? photo;

  @override
  Widget build(BuildContext context) {
    final photo = this.photo;
    return CircleAvatar(
      radius: _avatarSize,
      backgroundImage: photo != null ? NetworkImage(photo) : null,
      child: photo == null
          ? const Icon(Icons.person_outline, size: _avatarSize)
          : null,
    );
  }
}
