import 'package:accounting/style/accounting_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.menu,
              size: 20,
              color: AccountingTheme.accentColor,
            ),
            const Text(
              'عام',
            ),
            SvgPicture.asset(
              'assets/images/ic_alarm.svg',
              height: 20,
              width: 20,
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          _buildSearchCard(),
          Expanded(
              child: ListView.builder(
                  itemCount: 0,
                  itemBuilder: (context, index) {
                    return Container();
                  })),
          _buildBottomCard(),
        ],
      ),
    );
  }

  Widget _buildSearchCard() {
    return Container(
      margin: const EdgeInsets.all(10.0),
      padding: const EdgeInsets.all(4.0),
      height: 32,
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(8.0),
          color: Colors.grey.shade300),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.search,
            size: 20,
            color: Colors.grey.shade600,
          ),
          const SizedBox(
            width: 2.0,
          ),
          Expanded(
              child: TextField(
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'بحث',
                hintStyle: TextStyle(
                  color: Colors.grey.shade600,
                  fontSize: 16.0,
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 1),
                isDense: true),
          )),
        ],
      ),
    );
  }

  Widget _buildBottomCard() {
    return Container(
      height: 80,
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          color: Colors.grey.shade300,
          border: Border(
              top: BorderSide(
            width: 0.2,
            color: Colors.grey.shade500,
          ))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(
            'assets/images/ic_squared_arrow.svg',
            height: 20,
            width: 20,
          ),
          Column(
            children: [
              Text('له'),
              Text('عليه'),
            ],
          ),
          Row(
            children: [
              Icon(Icons.arrow_upward_sharp),
              Icon(Icons.arrow_upward_sharp),
            ],
          ),
        ],
      ),
    );
  }
}
