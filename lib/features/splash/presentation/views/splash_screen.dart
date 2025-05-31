import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task4/core/constants/app_colors.dart';
import 'package:task4/core/constants/dimensions.dart';
import 'package:task4/features/splash/presentation/bloc/splash_bloc.dart';
import 'package:task4/features/splash/presentation/views/entry_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(360, 720));

    return BlocProvider(
      create: (context) => SplashBloc()..add(StartSplashTimer()),
      child: BlocListener<SplashBloc, SplashState>(
        listener: (context, state) {
          if (state is SplashTimerCompleted) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const EntryScreen()),
            );
          }
        },
        child: const SplashContent(),
      ),
    );
  }
}

class SplashContent extends StatelessWidget {
  const SplashContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainBackground,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: Dimensions.splashTopImagePadding),
              Image.asset('1.png'),
              SizedBox(height: Dimensions.splashMiddleImagePadding),
              Image.asset('2.png'),
              SizedBox(height: Dimensions.splashBottomImagePadding),
              Image.asset('3.png'),
              SizedBox(height: Dimensions.splashLastPadding),
            ],
          ),
        ),
      ),
    );
  }
}