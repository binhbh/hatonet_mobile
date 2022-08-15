// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hatonet_mobile/app/model/job.dart';

class ItemJob extends StatelessWidget {
  Job item;
  VoidCallback onClickItem;

  ItemJob({Key? key, required this.item, required this.onClickItem})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.black12, borderRadius: BorderRadius.circular(2)),
      padding: EdgeInsets.symmetric(vertical: 1, horizontal: 1),
      child: Container(
        width: double.infinity,
        height: 80,
        color: Colors.white,
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                height: 50,
                width: 50,
                color: Color(0xFFEFEBEB),
                child: SvgPicture.asset(
                  item.image,
                  fit: BoxFit.fill,
                  height: 30,
                  width: 30,
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Column(
                children: [
                  Text(
                    item.name,
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.normal),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    item.date,
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.normal),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
