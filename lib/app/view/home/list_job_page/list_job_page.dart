import 'dart:convert';
import 'dart:math';

import 'package:autocomplete_textfield/autocomplete_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hatonet_mobile/app/model/tittle_list_job.dart';
import 'package:hatonet_mobile/app/view/home/list_job_page/box_list_job/box_empty_list_job_page.dart';
import 'package:hatonet_mobile/app/view/home/list_job_page/box_list_job/box_list_job_page.dart';
import 'package:hatonet_mobile/app/view/home/list_job_page/fake_data_list_job.dart';
import 'package:hatonet_mobile/app/view/home/list_job_page/fake_data_title_list_job.dart';
import 'package:hatonet_mobile/app/view/home/list_job_page/item_list_job.dart';
import 'package:hatonet_mobile/app/view/home/list_job_page/item_tittle_list_job.dart';

class ListJobPage extends StatefulWidget {
  ListJobPage({Key? key}) : super(key: key);

  @override
  State<ListJobPage> createState() => _ListJobPageState();
}

int toggle = 0;
class _ListJobPageState extends State<ListJobPage> with SingleTickerProviderStateMixin {
  late AnimationController _con;
  bool _isBluetoothhOn = true;
  bool isLoading = false;

  late List<String> autoCompleteData;

  late TextEditingController controller;

  Future fetchAutoCompleteData() async {
    setState(() {
      isLoading = true;
    });

    final String stringData = await rootBundle.loadString("assets/data.json");

    final List<dynamic> json = jsonDecode(stringData);

    final List<String> jsonStringData = json.cast<String>();

    setState(() {
      isLoading = false;
      autoCompleteData = jsonStringData;
    });
  }
  late TextEditingController _textEditingController;
  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController();
    fetchAutoCompleteData();
    _con = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 375),
    );
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF5F5F5),
        body:
        // isLoading
        //     ? Center(
        //   child: CircularProgressIndicator(),
        // )
        //     :
        Padding(
          padding: EdgeInsets.all(9.0),
          child: Column(
            children: [
              Row(
                children: [
                  // Image.asset('assets/images/hatonetlogi.png', height: 30,width: 65),
                  // Spacer(flex: 1,),
                  Container(
                    height: 40,
                    color: Color(0xffF2F3F7),
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 375),
                      height: 20.0,
                      width: (toggle == 0) ? 40.0 : 250.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            spreadRadius: -10.0,
                            blurRadius: 5.0,
                            offset: Offset(0.0, 5.0),
                          ),
                        ],
                      ),
                      child: Stack(
                        children: [
                          AnimatedPositioned(
                            duration: Duration(milliseconds: 375),
                            top: 6.0,
                            right: 7.0,
                            child: AnimatedOpacity(
                              opacity: (toggle == 0) ? 0.0 : 1.0,
                              duration: Duration(milliseconds: 200),
                              child: Container(
                                padding: EdgeInsets.all(4.0),
                                decoration: BoxDecoration(
                                  color: Color(0xffF2F3F7),
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: AnimatedBuilder(
                                  child: Icon(
                                    Icons.chevron_right_rounded,
                                    size: 20.0,
                                  ),
                                  builder: (context, widget) {
                                    return Transform.rotate(
                                      angle: _con.value * 2.0 * pi,
                                      child: widget,
                                    );
                                  },
                                  animation: _con,
                                ),
                              ),
                            ),
                          ),
                          AnimatedPositioned(
                            duration: Duration(milliseconds: 375),
                            left: (toggle == 0) ? 10.0 : 40.0,
                            top: 9.0,
                            child: AnimatedOpacity(
                              opacity: (toggle == 0) ? 0.0 : 1.0,
                              duration: Duration(milliseconds: 200),
                              child: Container(
                                height: 23.0,
                                width: 190,
                                child:  Autocomplete(
                                  optionsBuilder: (TextEditingValue textEditingValue) {
                                    if (textEditingValue.text.isEmpty) {
                                      return const Iterable<String>.empty();
                                    } else {
                                      return autoCompleteData.where((word) => word
                                          .toLowerCase()
                                          .contains(textEditingValue.text.toLowerCase()));
                                    }
                                  },
                                  optionsViewBuilder:
                                      (context, Function(String) onSelected, options) {
                                    return  Expanded(
                                      child: SingleChildScrollView(
                                        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
                                        scrollDirection: Axis.vertical,
                                        child: Padding(
                                          padding: const EdgeInsets.only(right: 150),
                                          child: Card(
                                            color: Colors.white,
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(15),
                                            ),
                                            child: Material(
                                              borderRadius: BorderRadius.circular(15),
                                              clipBehavior: Clip.antiAlias,
                                              color: Colors.transparent,
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(top: 5,),
                                                    child: Row(
                                                      children: [
                                                        SizedBox(width: 10,),
                                                        Text(
                                                          'Tìm kiếm thời gian qua',
                                                          style: TextStyle(color: Color(0xFF000000), fontSize: 13,fontWeight:FontWeight.w300, ),
                                                        ),
                                                        Spacer(),
                                                        Text(
                                                          'Chỉnh sửa',
                                                          style: TextStyle(color: Color(0xFF000000), fontSize: 13,fontWeight:FontWeight.w300, ),
                                                        ),
                                                        SizedBox(width: 10,),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(right: 10,left: 10),
                                                    child: Container(height: 1,color: Colors.grey,),
                                                  ),
                                                  ListView.builder(
                                                      physics: NeverScrollableScrollPhysics(),
                                                      itemCount: FAKE_TITTLE_LIST_JOB.length,
                                                      shrinkWrap: true,
                                                      scrollDirection: Axis.vertical,
                                                      itemBuilder: (BuildContext context, int index) =>
                                                          ItemTittleListJob(
                                                              item: FAKE_TITTLE_LIST_JOB[index],
                                                              onClickItem: () {})),
                                                  Padding(
                                                    padding: const EdgeInsets.only(right: 10,left: 10),
                                                    child: Container(height: 1,color: Colors.grey,),
                                                  ),
                                                  Center(
                                                    child: Text(
                                                      'Còn 299 tương tự chờ bạn ứng tuyển ...',
                                                      style: TextStyle(color: Color(0xFF000000), fontSize: 13,fontWeight:FontWeight.w300, ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                  onSelected: (selectedString) {
                                    print(selectedString);
                                  },
                                  fieldViewBuilder:
                                      (context, controller, focusNode, onEditingComplete) {
                                    this.controller = controller;
                                    return  TextField(
                                      controller: controller,
                                      focusNode: focusNode,
                                      cursorRadius: Radius.circular(40.0),
                                      onEditingComplete: onEditingComplete,
                                      decoration: InputDecoration(
                                        floatingLabelBehavior: FloatingLabelBehavior.never,
                                        labelText: 'Search...',
                                        labelStyle: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.w400,
                                        ),
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(50.0),
                                          borderSide: BorderSide.none,
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                          ),
                          IconButton(
                              splashRadius: 19.0,
                              icon: Icon(FontAwesomeIcons.search,size: 14,),
                              onPressed: () {
                                setState(
                                      () {
                                    if (toggle == 0) {
                                      toggle = 1;
                                      _con.forward();
                                    } else {
                                      toggle = 0;
                                      _textEditingController.clear();
                                      _con.reverse();
                                    }
                                  },
                                );
                              },
                            ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          spreadRadius: -10.0,
                          blurRadius: 10.0,
                        ),
                      ],
                    ),
                    child: IconButton(
                      icon: Icon(FontAwesomeIcons.boxArchive),
                      iconSize: 18,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => CustomSwitchState()));
                      },
                      splashRadius: 19,
                      splashColor: Color(0xFFFF5400),
                    ),
                  ),
                ],
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: SingleChildScrollView(
                    child: ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: FAKE_LIST_JOB.length,
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int index) =>
                            ItemListJob(
                                item: FAKE_LIST_JOB[index],
                                onClickItem: () {})),
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
