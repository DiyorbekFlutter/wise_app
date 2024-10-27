import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wise_app/core/style/svg_icons.dart';

import '../view_model/main_vm.dart';
import 'cutom_bottom_navigation_bar.dart';

class Main extends ConsumerWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final MainVM watch = ref.watch(mainVM);
    final MainVM read = ref.read(mainVM);

    return Scaffold(
      body: read.pages[watch.currantIndex],
      bottomNavigationBar: CustomBottomNavigationBar(
        currantIndex: watch.currantIndex,
        onChanged: read.onChangeIndex,
        items: [
          CustomBottomNavigationBarItem(label: "Home", icon: SvgIcons.home),
          CustomBottomNavigationBarItem(label: "Card", icon: SvgIcons.card),
          CustomBottomNavigationBarItem(label: "Send", icon: SvgIcons.arrowUp),
          CustomBottomNavigationBarItem(label: "Recipients", icon: SvgIcons.users),
          CustomBottomNavigationBarItem(label: "Manage", icon: SvgIcons.layout),
        ],
      )
    );
  }
}
