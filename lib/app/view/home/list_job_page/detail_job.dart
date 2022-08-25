import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hatonet_mobile/app/view/home/list_job_page/skill_list_data_job/fake_data_skill_list_job.dart';
import 'package:hatonet_mobile/app/view/home/list_job_page/skill_list_data_job/skill_list_data_job.dart';
class DetailJobPage extends StatefulWidget {
  DetailJobPage({Key? key}) : super(key: key);

  @override
  State<DetailJobPage> createState() => _DetailJobPageState();
}

class _DetailJobPageState extends State<DetailJobPage> {
  bool _expanded = false;
  bool _expande = false;
  bool _expand = false;
  bool _expan = false;
  var _test = "Full Screen";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.all(3.0),
          child: Column  (
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 10,right: 10),
                    child: Container(
                      height: 70,
                      width: 70,
                      child: Material(
                          elevation: 3,
                          shadowColor:Color(0xFFFF5400).withAlpha(35),
                          child: Image.asset('assets/images/logo hatonet-06.png',height: 84,width:70,)
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 6,),
                      Text(
                        'Senior Android Engineer (Java - Kotlin)',
                        style: TextStyle(color: Color(0xFF000000), fontSize: 15,fontWeight:FontWeight.w300, ),
                      ),
                      SizedBox(height: 5,),
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
                              style: TextStyle(color: Color(0xFF000000), fontSize: 12,fontWeight:FontWeight.w300, ),
                              children: <TextSpan>[
                                TextSpan(text: '2', style: TextStyle(color: Color(0xFF000000), fontSize: 12,fontWeight:FontWeight.w300, ),),
                                TextSpan(text:' năm', style: TextStyle(color: Color(0xFF000000), fontSize: 12,fontWeight:FontWeight.w300, ),),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5,),
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/icons/ic_building_line.svg',
                            height: 13.18,
                            width: 13.25,
                            color: Colors.black,
                          ),
                          Text(
                            ' Hachinet JSC',
                            style: TextStyle(color: Color(0xFF808080), fontSize: 12,fontWeight:FontWeight.w300,),
                          ),
                          SizedBox(width: 10,),
                          SvgPicture.asset(
                            'assets/icons/ic_location.svg',
                            height: 13.18,
                            width: 13.25,
                            color: Colors.black,
                          ),
                          Text(' Hà Nội',
                            style: TextStyle(color: Color(0xFF808080), fontSize: 12,fontWeight:FontWeight.w300,),
                          ),
                        ],
                      ),
                      SizedBox(height: 5,),
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/icons/ic_circle_tick.svg',
                            height: 12,
                            width: 12,
                          ),
                          Container(child: Text(' Đã kiểm tra', style: TextStyle(fontSize: 12.0, color: Colors.black,fontWeight:FontWeight.w300),)),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Row(
               crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text('Đơn giá:',
                       style: TextStyle(color: Color(0xFF000000), fontSize: 15,fontWeight:FontWeight.w300, ),),
                     SizedBox(height: 5,),
                     RichText(
                       text: TextSpan(
                         text: '50 - 80',
                         style: TextStyle(color: Color(0xFF000000), fontSize: 20,fontWeight:FontWeight.w300, ),
                         children: <TextSpan>[
                           TextSpan(text:' triệu đồng / ứng viên - tháng', style: TextStyle(color: Color(0xFF000000), fontSize: 14,fontWeight:FontWeight.w300, ),),
                         ],
                       ),
                     ),
                     SizedBox(height: 5,),
                     Text('Kỹ năng:',
                       style: TextStyle(color: Color(0xFF000000), fontSize: 15,fontWeight:FontWeight.w300, ),),
                     SizedBox(height: 5,),
                     Container(
                       width: 270,
                       height: 30,
                       child: Expanded(
                         child: ListView.builder(
                             scrollDirection: Axis.horizontal,
                             itemCount: FAKE_SKILL_LIST_JOB.length,
                             shrinkWrap: true,
                             itemBuilder: (BuildContext context, int index) => SkillItemListJob(item: FAKE_SKILL_LIST_JOB[index], onClickItem: (){})),
                       ),
                     ),
                   ],
                 ),
                 Spacer(),
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Container(
                       height: 40,
                       width: 100,
                       color: Color(0xFFFF6600),
                       child:Center(
                         child: Text('Ứng Tuyển',
                           style: TextStyle(color: Colors.white, fontSize: 15,fontWeight:FontWeight.w300, ),),
                       ),
                     ),
                     SizedBox(height: 5,),
                     Container(
                       height: 40,
                       width: 100,
                       color: Color(0xFF545454),
                       child:Center(
                         child: Text('Yêu thích',
                           style: TextStyle(color: Colors.white, fontSize: 15,fontWeight:FontWeight.w300, ),),
                       ),
                     ),
                     SizedBox(height: 5,),
                     Container(
                       height: 40,
                       width: 100,
                       color: Color(0xFFEDF1F3),
                       child:Center(
                         child: Text('Tải file PDF',
                           style: TextStyle(color: Colors.grey, fontSize: 15,fontWeight:FontWeight.w300, ),),
                       ),
                     ),
                   ],
                 )
               ],
             ),
              Expanded(
                flex: 6,
                child: SafeArea(
                  left: true,
                  minimum: EdgeInsets.all(5),
                  child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(height: 10,),
                            ExpansionPanelList(
                              animationDuration: Duration(milliseconds: 1000),
                              elevation: 1,
                              children: [
                                ExpansionPanel(
                                  headerBuilder: (context, isExpanded) {
                                    return ListTile(
                                      title: Text('Thông tin chi tiết', style: TextStyle(color: Colors.black ),),
                                    );
                                  },
                                  body:
                                  Column(
                                    children: [
                                      ListTile(
                                        title: Row(
                                          children: [
                                            Padding(
                                              padding:EdgeInsets.only(bottom: 5),
                                              child: Icon(FontAwesomeIcons.calendar,size: 18,),
                                            ),
                                            Text(' Kinh nghiệm: 2 năm',style: TextStyle(color: Colors.black)),
                                          ],
                                        ),
                                      ),
                                      ListTile(
                                        title: Row(
                                          children: [
                                            Icon(FontAwesomeIcons.book),
                                            Text(' Trình độ học vấn: Đại Học',style: TextStyle(color: Colors.black)),
                                          ],
                                        ),
                                      ),
                                      ListTile(
                                        title: Row(
                                          children: [
                                            Icon(FontAwesomeIcons.briefcase),
                                            Text(' Vị trí: Junior',style: TextStyle(color: Colors.black)),
                                          ],
                                        ),
                                      ),
                                      ListTile(
                                        title: Row(
                                          children: [
                                            Icon(FontAwesomeIcons.boxArchive),
                                            Text(' Hình thức làm việc: Onsite',style: TextStyle(color: Colors.black)),
                                          ],
                                        ),
                                      ),
                                      ListTile(
                                        title: Row(
                                          children: [
                                            Icon(FontAwesomeIcons.users),
                                            Text(' Số lượng tuyển:',style: TextStyle(color: Colors.black)),
                                          ],
                                        ),
                                      ),
                                      ListTile(
                                        title: Row(
                                          children: [
                                            Icon(FontAwesomeIcons.clock),
                                            Text(' Hạn ứng tuyển: Còn 36 ngày',style: TextStyle(color: Colors.black)),
                                          ],
                                        ),
                                      ),
                                      ListTile(
                                        title: Row(
                                          children: [
                                            Icon(FontAwesomeIcons.solidCalendarMinus),
                                            Text(' Thời hạn thanh toán:',style: TextStyle(color: Colors.black)),
                                          ],
                                        ),
                                      ),

                                    ],
                                  ),
                                  isExpanded: _expanded,
                                  canTapOnHeader: true,
                                ),
                              ],
                              dividerColor: Colors.grey,
                              expansionCallback: (panelIndex, isExpanded) {
                                _expanded = !_expanded;
                                setState(() {

                                });
                              },
                            ),
                            SizedBox(height: 10,),
                            ExpansionPanelList(
                              animationDuration: Duration(milliseconds: 1000),
                              elevation: 1,
                              children: [
                                ExpansionPanel(
                                  headerBuilder: (context, isExpanded) {
                                    return ListTile(
                                      title: Text('Mô tả công việc', style: TextStyle(color: Colors.black),),
                                    );
                                  },
                                  body:ListTile(
                                    title: Text('Môi trường làm việc chuyên nghiệp, thân thiện, cởi mở. Các thành viên trong công ty gần gũi, gắn bó, quan tâm, giúp đỡ nhau cùng phát triển. Được tham gia các hoạt động teambuilding hàng tháng, du lịch hàng năm. Tham gia các hoạt động phát triển tiếng Anh Công ty luôn động viên và tạo điều kiện tốt nhất cho toàn thể nhân viên. Công ty tổ chức các buổi sinh nhật cho nhân viên hàng tháng, tổ chức thưởng và kỉ niệm những ngày lễ tết trong năm. Hoạt động văn hóa thể thao đa dạng: câu lạc bộ bóng đá, gym, bơi lội, ...',style: TextStyle(color: Colors.black)),
                                  ),
                                  isExpanded: _expande,
                                  canTapOnHeader: true,
                                ),
                              ],
                              dividerColor: Colors.grey,
                              expansionCallback: (panelIndex, isExpanded) {
                                _expande = !_expande;
                                setState(() {

                                });
                              },
                            ),
                            SizedBox(height: 10,),
                            ExpansionPanelList(
                              animationDuration: Duration(milliseconds: 1000),
                              elevation: 1,
                              children: [
                                ExpansionPanel(
                                  headerBuilder: (context, isExpanded) {
                                    return ListTile(
                                      title: Text('Yêu cầu công việc', style: TextStyle(color: Colors.black),),
                                    );
                                  },
                                  body:ListTile(
                                    title: Text('Tham gia các dự án thực tế phát triển phần mềm của Công ty trong quá trình được đào tạo.',style: TextStyle(color: Colors.black)),
                                  ),
                                  isExpanded: _expand,
                                  canTapOnHeader: true,
                                ),
                              ],
                              dividerColor: Colors.grey,
                              expansionCallback: (panelIndex, isExpanded) {
                                _expand = !_expand;
                                setState(() {

                                });
                              },
                            ),
                            SizedBox(height: 10,),
                            ExpansionPanelList(
                              animationDuration: Duration(milliseconds: 1000),
                              elevation: 1,
                              children: [
                                ExpansionPanel(
                                  headerBuilder: (context, isExpanded) {
                                    return ListTile(
                                      title: Text('Môi trường văn hóa', style: TextStyle(color: Colors.black),),
                                    );
                                  },
                                  body:ListTile(
                                    title: Text('Thưởng lương tháng 13, lễ, tết. Ngoài ra, Cty còn tổ chức các ngày lễ riêng biệt: các giải đấu bóng đá được tổ chức đều đặn hàng tuần/tháng, tổ chức ngày tôn vinh các chàng trai IT, ngày tôn vinh các Phụ huynh nhân viên Cty, tổ chức hoạt động cho con em nhân viên trg các dịp Tết Thiếu nhi, ngày tôn vinh chị em phụ nữ, Tết Trung Thu, Sinh nhật nhân viên, Team building,….',style: TextStyle(color: Colors.black)),
                                  ),
                                  isExpanded: _expan,
                                  canTapOnHeader: true,
                                ),
                              ],
                              dividerColor: Colors.grey,
                              expansionCallback: (panelIndex, isExpanded) {
                                _expan = !_expan;
                                setState(() {

                                });
                              },
                            ),
                            SizedBox(height: 10,),
                            Text('Yêu cầu khác đang tuyển:', style: TextStyle(color: Colors.black, fontSize: 18,fontWeight:FontWeight.w300, ),),
                          ]
                      )
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
