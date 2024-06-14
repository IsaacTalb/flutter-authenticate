import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:authentication/features/authentication/presentation/pages/auth/sign_in_page.dart';
import 'package:flutter-authenticate/components/my_bottom_nav_bar.dart';
import 'package:flutter-authenticate/screens/home/components/body.dart';

import '../bloc/authentication/auth_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: BlocListener<AuthBloc, AuthState>(
            listener: (context, state) {
              if (state is LoggedOutState) {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const SignIn()));
              }
            },
            child: Scaffold(
              appBar: buildAppBar(),
              body: Body(),
              bottomNavigationBar: MyBottomNavBar(),
            )));
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/menu.svg"),
        onPressed: () {},
      ),
    );
  }
}

// TextButton(
//   child: const Text('Log out',
//       style: TextStyle(
//           color: Color.fromARGB(255, 12, 109, 139))),
//   onPressed: () {
//     BlocProvider.of<AuthBloc>(context).add(LogOutEvent());
//   },
// )
// (do not delete this line; for the logout option)
