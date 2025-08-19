import 'dart:async';

import 'package:flutter/material.dart';
import 'package:session_15_flutter/main.dart';

class Stopwatch extends StatefulWidget {
  const Stopwatch({super.key});

  @override
  State<Stopwatch> createState() => _StopwatchState();
}

class _StopwatchState extends State<Stopwatch> {
  bool isTicking = true;
  late int seconds;
  late Timer timer;
  final laps = <int>[];
  int milliseconds = 0;

  void _lap() {
    setState(() {
      laps.add(milliseconds);
      milliseconds = 0;
    });
  }

  void _startTimer() {
    timer = Timer.periodic(const Duration(milliseconds: 100), _onTick);
    setState(() {
      isTicking = true;
    });
    laps.clear();
  }

  void _stopTimer() {
    timer.cancel();
    setState(() {
      isTicking = false;
    });
  }

  Widget _buildLapDisplay() {
    return ListView(
      children: [
        for (int milliseconds in laps)
          ListTile(
              title: Text(_secondsText(milliseconds))
          )
      ],
    );
  }

  @override
  void initState() {
    super.initState();
    seconds = 0;
    timer = Timer.periodic(Duration(seconds: 1), _onTick);
  }

  void _onTick(Timer time) {
    setState(() {
      milliseconds += 100;
    });
  }

  String _secondsText(int milliseconds) {
    final seconds = milliseconds / 1000;
    return '$seconds seconds';
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('StopWatch')),
      body: Column(children: [
        Expanded(child: _buildCounter(context)),
        Expanded(child: _buildLapDisplay()),
      ],),
    );
  }

  Widget _buildCounter(BuildContext context) {
    return Container(
        color: Theme
            .of(context)
            .primaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _secondsText(milliseconds),
              style: Theme
                  .of(context)
                  .textTheme
                  .titleMedium,
            ),
            SizedBox(height: 20),
            _buildControls(),
          ],
        )
    );
  }

  Widget _buildControls() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
          ),
          child: Text('Start'),
          onPressed: isTicking ? null : _startTimer,
        ),
        SizedBox(width: 20),
        TextButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
          ),
          child: Text('Stop'),
          onPressed: isTicking ? _stopTimer : null,
        ),
        SizedBox(width: 20),
        ElevatedButton(style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.yellow)),
          onPressed: isTicking ? _lap : null,
          child: const Text('Lap'),),
        const SizedBox(width: 20,),
      ],
    );
  }
}
