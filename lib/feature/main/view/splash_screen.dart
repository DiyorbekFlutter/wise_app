import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wise_app/core/style/app_colors.dart';
import 'package:wise_app/core/style/app_images.dart';
import 'package:wise_app/core/style/svg_icons.dart';
import 'package:wise_app/feature/main/view/main_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin {
  late AnimationController _heightController;
  late Animation<double> _heightAnimation;

  late AnimationController _widthController;
  late Animation<double> _widthAnimation;

  bool isLoading = true;
  bool showLogo = true;

  @override
  void initState() {
    /// height animation
    _heightController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000)
    );

    _heightAnimation = Tween<double>(begin: 0, end: 1.3.sh).animate(CurvedAnimation(
      parent: _heightController,
      curve: Curves.easeInOut
    ));

    /// width animation
    _widthController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500)
    );

    _widthAnimation = Tween<double>(begin: 100, end: 1.sw).animate(CurvedAnimation(
      parent: _widthController,
      curve: Curves.easeInOut
    ));

    ///
    _heightController.addListener(() {
      if (_heightAnimation.value >= 0.4.sh && !_widthController.isAnimating) {
        _widthController.forward();
      }
    });

    _heightController.addStatusListener((status) {
      showLogo = false;
      if(status == AnimationStatus.completed) {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const Main()), (route) => false
        );
      }
    });

    Future.delayed(const Duration(seconds: 2), () {
      isLoading = false;
      setState(() {});
      _heightController.forward();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.c9FE870,
      body: AnimatedBuilder(
        animation: _heightController,
        builder: (context, child) => AnimatedBuilder(
          animation: _widthAnimation,
          builder: (context, child) => Stack(
            children: [
              Image.asset(
                AppImages.splashImage,
                height: 1.sh,
                width: 1.sw,
                fit: BoxFit.cover,
              ),
              isLoading ? const ColoredBox(
                color: AppColors.c9FE870,
                child: Center(),
              ) : ClipPath(
                clipper: _BottomCenterHoleClipper(
                  width: _widthAnimation.value,
                  height: _heightAnimation.value
                ),
                child: const ColoredBox(
                  color: AppColors.c9FE870,
                  child: Center(),
                ),
              ),
              if (_widthController.isAnimating || _heightController.isAnimating)
                Positioned(
                  left: 0.5.sw - _widthAnimation.value * 0.4,
                  top: 1.sh - _heightAnimation.value + 60.h,
                  child: SizedBox.square(
                    dimension: _widthAnimation.value * 0.4 * 2,
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: SizedBox.square(
                        dimension: .2.sh,
                        child: CircleAvatar(
                          radius: _widthAnimation.value * 0.4,
                          backgroundColor: AppColors.c9FE870,
                          child: SvgIcons.arrowUp.style(
                            dimension: _widthAnimation.value * 0.4,
                            color: AppColors.c21231D
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              if(!_widthController.isAnimating && !_heightController.isAnimating && showLogo) const Center(
                child: SvgIcons.appLogo,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _BottomCenterHoleClipper extends CustomClipper<Path> {
  final double width;
  final double height;

  const _BottomCenterHoleClipper({
    required this.width,
    required this.height,
  });

  @override
  Path getClip(Size size) {
    final path = Path();
    path.addRect(Rect.fromLTWH(0, 0, size.width, size.height));

    final Rect rect = Rect.fromLTWH(
      (size.width / 2) - width / 2,
      size.height - height,
      width,
      height,
    );

    final Path hole = Path()
      ..addRRect(RRect.fromRectAndCorners(
        rect,
        topLeft: const Radius.circular(200),
        topRight: const Radius.circular(200),
      ));

    return Path.combine(PathOperation.difference, path, hole);
  }

  @override
  bool shouldReclip(_BottomCenterHoleClipper oldClipper) =>
      oldClipper.height != height || oldClipper.width != width;
}
