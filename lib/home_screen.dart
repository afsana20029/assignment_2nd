import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController _glassNoTEController =
  TextEditingController(text: ' 1');
  List<WaterTrack> waterTrackList = [];

  @override
  Widget build(BuildContext context) {
    return _biuildWaterTrackerColumn();
  }

  Widget _biuildWaterTrackerColumn() {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Water Tracker'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            getTotalGlassCount().toString(),
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
          ),
          const Text(
            'Glass/s',
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  width: 50,
                  child: TextField(
                    controller: _glassNoTEController,
                    keyboardType: TextInputType.number,
                  )),
              TextButton(
                  onPressed:_onTapAddWaterTrack, child: const Text('Add')),
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          _buildWaterTrackListView()
        ],
      ),
    );
  }

  Widget _buildWaterTrackListView() {
    return Expanded(
        child: ListView.separated(
          itemCount: waterTrackList.length,
          itemBuilder: (context, index) {
            final WaterTrack waterTrack = waterTrackList[index];
            return _buildWaterTrackListTile(waterTrack, index);
          },
          separatorBuilder: (context, index) {
            return Divider();
          },
        ));
  }

  ListTile _buildWaterTrackListTile(WaterTrack waterTrack, int index) {
    return ListTile(
      title: Text('${waterTrack.dateTime.hour}:${waterTrack.dateTime.minute}'),
      subtitle: Text(
          '${waterTrack.dateTime.day}/${waterTrack.dateTime.month}//${waterTrack
              .dateTime.year}'),
      leading: CircleAvatar(child: Text('${waterTrack.noOfGlasses}')),
      trailing: IconButton(

        onPressed: () => _onTapDeleteButton(index),
        icon: Icon(Icons.delete),
      ),
    );
  }


  int getTotalGlassCount() {
    int counter = 0;
    for (WaterTrack t in waterTrackList) {
      counter += t.noOfGlasses;
    }
    return counter;
  }
  void _onTapAddWaterTrack() {
    if (_glassNoTEController.text.isEmpty) {
      _glassNoTEController.text = '1';
    }
    final int noOfGlasses = int.tryParse(_glassNoTEController.text) ?? 1;
    WaterTrack waterTrack = WaterTrack(
      noOfGlasses: noOfGlasses,
      dateTime: DateTime.now(),
    );
    waterTrackList.add(waterTrack);
    setState(() {});
  }

  void _onTapDeleteButton(int index) {
    waterTrackList.removeAt(index);
    setState(() {});
  }

  @override
  void dispose() {
    _glassNoTEController.dispose();
    super.dispose();
  }
}
class WaterTrack {
  final int noOfGlasses;
  final DateTime dateTime;

  WaterTrack({required this.noOfGlasses, required this.dateTime});
}