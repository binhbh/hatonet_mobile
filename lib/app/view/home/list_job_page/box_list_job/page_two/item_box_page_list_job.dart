import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hatonet_mobile/app/model/list_box_item_job.dart';
import 'package:hatonet_mobile/app/model/list_item_box_page_two.dart';
import 'package:hatonet_mobile/app/model/list_job.dart';
import 'package:hatonet_mobile/app/view/home/list_job_page/detail_job.dart';
import 'package:hatonet_mobile/app/view/home/list_job_page/skill_list_data_job/fake_data_skill_list_job.dart';
import 'package:hatonet_mobile/app/view/home/list_job_page/skill_list_data_job/skill_list_data_job.dart';
import 'package:toggle_switch/toggle_switch.dart';

class ItemBoxListPageJob extends StatefulWidget {
  ListItemPageBoxJob item;
  VoidCallback onClickItem;

  ItemBoxListPageJob({Key? key, required this.item, required this.onClickItem})
      : super(key: key);

  @override
  State<ItemBoxListPageJob> createState() => _ItemBoxListPageJobState();
}

class _ItemBoxListPageJobState extends State<ItemBoxListPageJob> {
  bool _isBluetoothOn = false;
  bool _isBluetoothhOn = true;
  bool _isBluetoothhhOn = true;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      dragStartBehavior: DragStartBehavior.down ,
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DetailJobPage()),
        );
      },
      onLongPress: (){

      },
      child: Padding(
        padding: EdgeInsets.only(top: 10),
        child: Container(
          height: 290,
          color: Colors.white,
          width: double.infinity,
          child:Material(
            elevation: 1,
            shadowColor: Color(0xFFFFD2C4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex:9,
                  child: Padding(
                    padding: EdgeInsets.only(left: 10,),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Container(
                            height: 70,
                            child: Material(
                                elevation: 3,
                                shadowColor:Color(0xFFFF5400).withAlpha(35),
                                child: Image.asset('assets/images/logo hatonet-06.png',height: 84,width:70,)
                            ),
                          ),
                        ),
                        SizedBox(width: 10,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 15,),
                            Text(
                              widget.item.tittle,
                              style: TextStyle(color: Color(0xFF000000), fontSize: 15,fontWeight:FontWeight.w300, ),
                            ),
                            SizedBox(height: 7,),
                            Row(
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
                                    style: TextStyle(color: Color(0xFF000000), fontSize: 14,fontWeight:FontWeight.w300, ),
                                    children: <TextSpan>[
                                      TextSpan(text: widget.item.date, style: TextStyle(color: Color(0xFF000000), fontSize: 14,fontWeight:FontWeight.w300, ),),
                                      TextSpan(text:' năm', style: TextStyle(color: Color(0xFF000000), fontSize: 14,fontWeight:FontWeight.w300, ),),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 7,),
                            Row(
                              children: [
                                SvgPicture.asset(
                                  'assets/icons/ic_building_line.svg',
                                  height: 13.18,
                                  width: 13.25,
                                  color: Colors.black,
                                ),
                                Text(
                                  widget.item.company,
                                  style: TextStyle(color: Color(0xFF808080), fontSize: 12,fontWeight:FontWeight.w500,),
                                ),
                                SizedBox(width: 10,),
                                SvgPicture.asset(
                                  'assets/icons/ic_location.svg',
                                  height: 13.18,
                                  width: 13.25,
                                  color: Colors.black,
                                ),
                                Text(widget.item.city,
                                  style: TextStyle(color: Color(0xFF808080), fontSize: 12,fontWeight:FontWeight.w500,),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: EdgeInsets.only(left: 10,right: 10),
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: FAKE_SKILL_LIST_JOB.length,
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int index) => SkillItemListJob(item: FAKE_SKILL_LIST_JOB[index], onClickItem: (){})),
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Padding(
                    padding: EdgeInsets.only(left: 10,right: 10),
                    child: Row(
                      children: [
                        RichText(
                          text: TextSpan(
                            text: 'Còn ',
                            style: TextStyle(color: Color(0xFF808080), fontSize: 14,fontWeight:FontWeight.w400),
                            children: <TextSpan>[
                              TextSpan(text: widget.item.day, style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16,color: Color(0xFFFF5400))),
                              TextSpan(text: ' ngày ứng tuyển',style: TextStyle( fontSize: 14,fontWeight:FontWeight.w400,),),
                            ],
                          ),
                        ),
                        Spacer(),
                        RichText(
                          text: TextSpan(
                            text: widget.item.money,
                            style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w500,color: Color(0xE4FF4600)),
                            children: <TextSpan>[ TextSpan(text: ' triệu ứng viên/tháng', style:   TextStyle(fontSize: 12.0, color: Colors.black,fontWeight: FontWeight.w400),),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Padding(
                    padding: EdgeInsets.only(left: 10,right: 10),
                    child: Text(widget.item.deatailjob, maxLines: 3,overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 14.0, color: Colors.grey),),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10,right: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              widget.item.image,
                              height: 16,
                              width: 16,
                            ),
                            Text(widget.item.status, style: TextStyle(fontSize: 12.0, color: Colors.black),),
                            SizedBox(width: 10,),
                            SvgPicture.asset(
                              widget.item.checkimage,
                              height: 16,
                              width: 16,
                            ),
                            Text(widget.item.time, style: TextStyle(fontSize: 12.0, color: Colors.black),),
                          ],
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Row(
                          children: [
                            InkWell(
                              onTap: (){
                                setState(() {
                                  _isBluetoothhhOn = !_isBluetoothhhOn;
                                });
                              },
                              child: Icon(
                                _isBluetoothhhOn ? Icons.turned_in_rounded:Icons.turned_in_not  ,
                                color: Colors.yellow,
                                size: 26,
                              ),
                            ),
                            InkWell(
                              onTap: (){
                                setState(() {
                                  _isBluetoothOn = !_isBluetoothOn;
                                });
                              },
                              child: Icon(
                                _isBluetoothOn ?  Icons.download_rounded : Icons.download_outlined,
                                color: Color(0xE4FF4600),
                                size: 27,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );;
  }
}


