import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:authentication/features/authentication/presentation/bloc/authentication/auth_bloc.dart';
import 'package:authentication/features/authentication/presentation/pages/auth/sign_up_page.dart';
import 'package:authentication/features/authentication/presentation/pages/home_page.dart';

class RootPage extends StatelessWidget {
  const RootPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        if (state is SignedInPageState) {
          return const HomePage();
        } else {
          return const SignUp();
        }
      },
    );
  }
}
