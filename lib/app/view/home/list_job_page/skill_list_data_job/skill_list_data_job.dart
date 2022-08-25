import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hatonet_mobile/app/model/list_job.dart';
import 'package:hatonet_mobile/app/model/skill_list_job.dart';
import 'package:hatonet_mobile/app/view/home/intro/optimal_page.dart';
import 'package:hatonet_mobile/app/view/home/list_job_page/skill_list_data_job/fake_data_skill_list_job.dart';

class SkillItemListJob extends StatefulWidget {
  SkillListJob item;
  VoidCallback onClickItem;

  SkillItemListJob({Key? key, required this.item, required this.onClickItem})
      : super(key: key);

  @override
  State<SkillItemListJob> createState() => _SkillItemListJobState();
}

class _SkillItemListJobState extends State<SkillItemListJob> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 10),
      child: Container(
        height: 25.0,
        width: 80,
        decoration: BoxDecoration(
          color: Color(0xFFFFD2C4),
          border: Border.all(
            color: Color(0xFFFF5400),
            width: 0.3,
          ),
          borderRadius: BorderRadius.circular(3),
        ),
        child: Center(child: Text( widget.item.name, style: TextStyle(fontSize: 12.0, color: Color(0xFFFF5400)),),),
      ),
    );
  }
}


