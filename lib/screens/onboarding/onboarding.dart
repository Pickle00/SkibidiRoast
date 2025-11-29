import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:skibidi_roast/routes/route_names.dart';
import 'package:skibidi_roast/screens/onboarding/widgets/onboarding_widget.dart';
import 'package:skibidi_roast/theme/app_colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController controller = PageController();

  final List<Map<String, String>> pageContent = [
    {
      "title": "Get Roasted by AI 🔥",
      "description":
          "Meet the AI that shows no mercy. Drop a face, get cooked instantly. Zero filter. Zero chill.",
      "file_name": "roast",
    },
    {
      "title": "Upload Your Pic 📸",
      "description":
          "Choose a selfie and step into the kitchen. Don’t worry your dignity was optional anyway.",
      "file_name": "upload",
    },
    {
      "title": "See Your Roast History 🧾💀",
      "description":
          "Revisit all the times you got fried. Save them, cry at them, or flex them to your friends.",
      "file_name": "history",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                itemCount: pageContent.length,
                controller: controller,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: OnBoardingPage(
                      title: pageContent[index]['title']!,
                      description: pageContent[index]['description']!,
                      fileName: pageContent[index]['file_name']!,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 30.0),
        child: Row(
          children: [
            SmoothPageIndicator(
              controller: controller,
              count: pageContent.length,
              effect: const ExpandingDotsEffect(
                activeDotColor: AppColors.primary,
                dotColor: Color.fromARGB(255, 224, 224, 224),
                dotHeight: 10,
              ),
            ),
            const Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(16),
                backgroundColor: AppColors.primary,
              ),
              onPressed: () {
                if (controller.page != null) {
                  if (controller.page! == pageContent.length - 1) {
                    context.pushReplacement(RoutePath.home);
                  } else {
                    int nextPage = (controller.page! + 1).toInt();
                    controller.animateToPage(
                      nextPage,
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  }
                }
              },
              child: const Icon(Icons.arrow_forward, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
