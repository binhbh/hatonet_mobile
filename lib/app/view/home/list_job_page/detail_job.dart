import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hatonet_mobile/app/model/list_job.dart';
import 'package:hatonet_mobile/app/view/home/bottom/bottom_bar.dart';
import 'package:hatonet_mobile/app/view/home/list_job_page/fake_data_list_job.dart';
import 'package:hatonet_mobile/app/view/home/list_job_page/item_list_job.dart';
class DetailJobPage extends StatefulWidget {
  DetailJobPage({Key? key}) : super(key: key);

  @override
  State<DetailJobPage> createState() => _DetailJobPageState();
}

class _DetailJobPageState extends State<DetailJobPage> {
  bool _isBluetoothOn = false;
  bool _isBluetoothhOn = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF5F5F5),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10,top: 20),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Image.asset('assets/images/logo hatonet-06.png',height: 60,width:60),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'widget.item.tittle',
                            style: TextStyle(color: Color(0xFF000000), fontSize: 15,fontWeight:FontWeight.w500, ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 130,top:5),
                            child: Row(
                              children: [
                                SvgPicture.asset(
                                  'assets/icons/ic_simple_calendar.svg',
                                  height: 13.18,
                                  width: 13.25,
                                  color: Colors.black,
                                ),
                                RichText(
                                  text: TextSpan(
                                    text: ' Kinh nghiệm: ',
                                    style: TextStyle(color: Color(0xFF000000), fontSize: 12,fontWeight:FontWeight.w300, ),
                                    children: <TextSpan>[
                                      TextSpan(text: 'widget.item.date', style: TextStyle(color: Color(0xFF000000), fontSize: 12,fontWeight:FontWeight.w300, ),),
                                      TextSpan(text:' năm', style: TextStyle(color: Color(0xFF000000), fontSize: 12,fontWeight:FontWeight.w300, ),),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 37,top:5),
                            child: Row(
                              children: [
                                SvgPicture.asset(
                                  'assets/icons/ic_building_line.svg',
                                  height: 13.18,
                                  width: 13.25,
                                  color: Colors.black,
                                ),
                                Text(
                                  'widget.item.company',
                                  style: TextStyle(color: Color(0xFF808080), fontSize: 12,fontWeight:FontWeight.w500,),
                                ),
                                SvgPicture.asset(
                                  'assets/icons/ic_location.svg',
                                  height: 13.18,
                                  width: 13.25,
                                  color: Colors.black,
                                ),
                                Text('widget.item.city',
                                  style: TextStyle(color: Color(0xFF808080), fontSize: 12,fontWeight:FontWeight.w500,),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: SingleChildScrollView(
                    child: ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: FAKE_LIST_JOB.length,
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int index) => ItemListJob(item: FAKE_LIST_JOB[index], onClickItem: (){})),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
