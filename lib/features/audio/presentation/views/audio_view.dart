import 'package:flutter/material.dart';

import 'widgets/audio_view_body.dart';

class AudioView extends StatelessWidget {
  const AudioView({super.key});

  @override
  Widget build(BuildContext context) {
    return const  Scaffold(
      body: SafeArea(
        child: AudioViewBody(),
      ),
    );
  }
}
