import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hatonet_mobile/app/view/home/list_job_page/fake_data_list_job.dart';
import 'package:hatonet_mobile/app/view/home/list_job_page/item_list_job.dart';
import 'package:hatonet_mobile/app/view/home/list_job_page/skill_list_data_job/fake_data_skill_list_job.dart';
import 'package:hatonet_mobile/app/view/home/list_job_page/skill_list_data_job/skill_list_data_job.dart';
class DetailJobPage extends StatefulWidget {
  DetailJobPage({Key? key}) : super(key: key);

  @override
  State<DetailJobPage> createState() => _DetailJobPageState();
}

class _DetailJobPageState extends State<DetailJobPage> {
  bool _expanded = true;
  bool _expande = true;
  bool _expand = true;
  bool _expan = true;
  bool _expa = false;
  bool _isBluetoothOn = false;
  bool _isBluetoothhOn = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.all(9.0),
          child: Column  (
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                ExpansionPanelList(
                animationDuration: Duration(milliseconds: 1000),
                elevation: 0,
                dividerColor: Color(0xFFFF6600),
                children: [
                  ExpansionPanel(
                    headerBuilder: (context, isExpanded) {
                      return Container(
                        height: 100,
                        child: ListTile(
                          subtitle:  Row(
                            children: [
                              Container(
                                height: 70,
                                width: 70,
                                child: Material(
                                    elevation: 3,
                                    shadowColor:Color(0xFFFF5400).withAlpha(35),
                                    child: Image.asset('assets/images/logo hatonet-06.png',height: 84,width:70,)
                                ),
                              ),
                              SizedBox(width: 5,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 15,),
                                  Text(
                                    'Senior Android Engineer (Java - Kotlin)',
                                    style: TextStyle(color: Color(0xFF000000), fontSize: 14,fontWeight:FontWeight.w300, ),
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
                                          text: ' Kinh nghi???m: ',
                                          style: TextStyle(color: Color(0xFF000000), fontSize: 12,fontWeight:FontWeight.w300, ),
                                          children: <TextSpan>[
                                            TextSpan(text: '2', style: TextStyle(color: Color(0xFF000000), fontSize: 12,fontWeight:FontWeight.w300, ),),
                                            TextSpan(text:' n??m', style: TextStyle(color: Color(0xFF000000), fontSize: 12,fontWeight:FontWeight.w300, ),),
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
                                        style: TextStyle(color: Colors.black, fontSize: 12,fontWeight:FontWeight.w300,),
                                      ),
                                      SizedBox(width: 10,),
                                      SvgPicture.asset(
                                        'assets/icons/ic_location.svg',
                                        height: 13.18,
                                        width: 13.25,
                                        color: Colors.black,
                                      ),
                                      Text(' H?? N???i',
                                        style: TextStyle(color: Colors.black, fontSize: 12,fontWeight:FontWeight.w300,),
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
                                      Text(' ???? ki???m tra', style: TextStyle(fontSize: 12.0, color: Colors.black,fontWeight:FontWeight.w300),),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    body:ListTile(
                      title: Row(
                        children: [
                          Spacer(),
                          InkWell(
                            onTap: (){
                              setState(() {
                                _isBluetoothhOn = !_isBluetoothhOn;
                              });
                            },
                            child: Icon(
                              _isBluetoothhOn ? Icons.turned_in_not : Icons.turned_in_sharp,
                              color: Colors.yellow,
                              size: 25,
                            ),
                          ),
                          SizedBox(width: 10,),
                          InkWell(
                            onTap: (){
                              setState(() {
                                _isBluetoothOn = !_isBluetoothOn;
                              });
                            },
                            child: Icon(
                              _isBluetoothOn ?  Icons.download : Icons.download_outlined,
                              color: Color(0xE4FF4600),
                              size: 25,
                            ),
                          ),
                        ],
                      ),  ),
                    isExpanded: _expa,
                    canTapOnHeader: true,
                  ),
                ],
                expansionCallback: (panelIndex, isExpanded) {
                  _expa = !_expa;
                  setState(() {});
                },
              ),
              SizedBox(height: 10,),
              RichText(
                text: TextSpan(
                  text: '????n gi??:',
                  style: TextStyle(color: Color(0xFF000000), fontSize: 15,fontWeight:FontWeight.w300, ),
                  children: <TextSpan>[
                    TextSpan(text:' 50 - 80', style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w500,color: Color(0xE4FF4600)),),
                    TextSpan(text:' tri???u ?????ng / ???ng vi??n - th??ng', style: TextStyle(color: Color(0xFF000000), fontSize: 14,fontWeight:FontWeight.w300, ),),
                  ],
                ),
              ),
              Text('K??? n??ng:', style: TextStyle(color: Color(0xFF000000), fontSize: 15,fontWeight:FontWeight.w300, ),),
              SizedBox(height: 5,),
              Container(
                width: double.infinity,
                height: 30,
                child: Expanded(
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: FAKE_SKILL_LIST_JOB.length,
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) => SkillItemListJob(item: FAKE_SKILL_LIST_JOB[index], onClickItem: (){})),
                ),
              ),
              SizedBox(height: 10,),
              Expanded(
                flex: 12,
                child: SafeArea(
                  left: true,
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
                                      title: Text('Th??ng tin chi ti???t', style: TextStyle(color: Colors.black ),),
                                    );
                                  },
                                  body: Column(
                                    children: [
                                      ListTile(
                                        title: Row(
                                          children: [
                                            Padding(
                                              padding:EdgeInsets.only(bottom: 5),
                                              child: Icon(FontAwesomeIcons.calendar,size: 18,),
                                            ),
                                            Text(' Kinh nghi???m: 2 n??m',style: TextStyle(color: Colors.black)),
                                          ],
                                        ),
                                      ),
                                      ListTile(
                                        title: Row(
                                          children: [
                                            Icon(FontAwesomeIcons.book,size: 18,),
                                            Text(' Tr??nh ????? h???c v???n: ?????i H???c',style: TextStyle(color: Colors.black)),
                                          ],
                                        ),
                                      ),
                                      ListTile(
                                        title: Row(
                                          children: [
                                            Icon(FontAwesomeIcons.briefcase,size: 18,),
                                            Text(' V??? tr??: Senior',style: TextStyle(color: Colors.black)),
                                          ],
                                        ),
                                      ),
                                      ListTile(
                                        title: Row(
                                          children: [
                                            Icon(FontAwesomeIcons.boxArchive,size: 18,),
                                            Text(' H??nh th???c l??m vi???c: Onsite',style: TextStyle(color: Colors.black)),
                                          ],
                                        ),
                                      ),
                                      ListTile(
                                        title: Row(
                                          children: [
                                            Icon(FontAwesomeIcons.users,size: 15,),
                                            Text('  S??? l?????ng tuy???n:',style: TextStyle(color: Colors.black)),
                                          ],
                                        ),
                                      ),
                                      ListTile(
                                        title: Row(
                                          children: [
                                            Icon(FontAwesomeIcons.clock,size: 18,),
                                            Text(' H???n ???ng tuy???n: C??n 36 ng??y',style: TextStyle(color: Colors.black)),
                                          ],
                                        ),
                                      ),
                                      ListTile(
                                        title: Row(
                                          children: [
                                            Icon(FontAwesomeIcons.solidCalendarMinus,size: 18,),
                                            Text(' Th???i h???n thanh to??n:',style: TextStyle(color: Colors.black)),
                                          ],
                                        ),
                                      ),

                                    ],
                                  ),
                                  isExpanded: _expanded,
                                  canTapOnHeader: true,
                                ),
                              ],
                              dividerColor: Color(0xFFFF6600),
                              expansionCallback: (panelIndex, isExpanded) {
                                _expanded = !_expanded;
                                setState(() {});
                              },
                            ),
                            SizedBox(height: 10,),
                            ExpansionPanelList(
                              animationDuration: Duration(milliseconds: 1000),
                              elevation: 1,
                              dividerColor: Color(0xFFFF6600),
                              children: [
                                ExpansionPanel(
                                  headerBuilder: (context, isExpanded) {
                                    return Padding(
                                      padding:EdgeInsets.symmetric(vertical: 1),
                                      child: ListTile(
                                        title: Text('M?? t??? c??ng vi???c', style: TextStyle(color: Colors.black), ),
                                      ),
                                    );
                                  },
                                  body:ListTile(
                                    title: Text('M??i tr?????ng l??m vi???c chuy??n nghi???p, th??n thi???n, c???i m???. C??c th??nh vi??n trong c??ng ty g???n g??i, g???n b??, quan t??m, gi??p ????? nhau c??ng ph??t tri???n. ???????c tham gia c??c ho???t ?????ng teambuilding h??ng th??ng, du l???ch h??ng n??m. Tham gia c??c ho???t ?????ng ph??t tri???n ti???ng Anh C??ng ty lu??n ?????ng vi??n v?? t???o ??i???u ki???n t???t nh???t cho to??n th??? nh??n vi??n. C??ng ty t??? ch???c c??c bu???i sinh nh???t cho nh??n vi??n h??ng th??ng, t??? ch???c th?????ng v?? k??? ni???m nh???ng ng??y l??? t???t trong n??m. Ho???t ?????ng v??n h??a th??? thao ??a d???ng: c??u l???c b??? b??ng ????, gym, b??i l???i, ...',textAlign:TextAlign.start ,style: TextStyle(color: Colors.black)),
                                  ),
                                  isExpanded: _expande,
                                  canTapOnHeader: true,
                                ),
                              ],
                              expansionCallback: (panelIndex, isExpanded) {
                                _expande = !_expande;
                                setState(() {});
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
                                      title: Text('Y??u c???u c??ng vi???c', style: TextStyle(color: Colors.black),),
                                    );
                                  },
                                  body:ListTile(
                                    title: Text('Tham gia c??c d??? ??n th???c t??? ph??t tri???n ph???n m???m c???a C??ng ty trong qu?? tr??nh ???????c ????o t???o.',style: TextStyle(color: Colors.black)),
                                  ),
                                  isExpanded: _expand,
                                  canTapOnHeader: true,
                                ),
                              ],
                              dividerColor: Color(0xFFFF6600),
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
                                      title: Text('M??i tr?????ng v??n h??a', style: TextStyle(color: Colors.black),),
                                    );
                                  },
                                  body:ListTile(
                                    title: Text('Th?????ng l????ng th??ng 13, l???, t???t. Ngo??i ra, Cty c??n t??? ch???c c??c ng??y l??? ri??ng bi???t: c??c gi???i ?????u b??ng ???? ???????c t??? ch???c ?????u ?????n h??ng tu???n/th??ng, t??? ch???c ng??y t??n vinh c??c ch??ng trai IT, ng??y t??n vinh c??c Ph??? huynh nh??n vi??n Cty, t??? ch???c ho???t ?????ng cho con em nh??n vi??n trg c??c d???p T???t Thi???u nhi, ng??y t??n vinh ch??? em ph??? n???, T???t Trung Thu, Sinh nh???t nh??n vi??n, Team building,???.',style: TextStyle(color: Colors.black)),
                                  ),
                                  isExpanded: _expan,
                                  canTapOnHeader: true,
                                ),
                              ],
                              dividerColor: Color(0xFFFF6600),
                              expansionCallback: (panelIndex, isExpanded) {
                                _expan = !_expan;
                                setState(() {
                                });
                              },
                            ),
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
