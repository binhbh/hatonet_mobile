import 'package:flutter/material.dart';
import 'package:hatonet_mobile/app/view/home/list_job_page/box_list_job/page_one/fake_data_page_one_box_list_job.dart';
import 'package:hatonet_mobile/app/view/home/list_job_page/box_list_job/page_one/item_box_list_job.dart';
import 'package:hatonet_mobile/app/view/home/list_job_page/box_list_job/page_two/fake_data_page_two_box_list_job.dart';
import 'package:hatonet_mobile/app/view/home/list_job_page/box_list_job/page_two/item_box_page_list_job.dart';
import 'package:toggle_switch/toggle_switch.dart';

const double borderRadius = 25.0;

class CustomSwitchState extends StatefulWidget {
  @override
  _CustomSwitchStateState createState() => _CustomSwitchStateState();
}

class _CustomSwitchStateState extends State<CustomSwitchState> with SingleTickerProviderStateMixin {

  late PageController _pageController;
  int activePageIndex = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        body: SafeArea(
          child: GestureDetector(
            onTap: () {
              FocusScope.of(context).requestFocus(FocusNode());
            },
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        // Image.asset('assets/images/hatonetlogi.png', height: 30,width: 65),
                        Spacer(flex: 1,),
                        Container(
                          width: 200.0,
                          height: 30.0,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Expanded(
                                child: InkWell(
                                  borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
                                  onTap: _onPlaceBidButtonPress,
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    padding: EdgeInsets.symmetric(vertical: 5),
                                    alignment: Alignment.center,
                                    decoration: (activePageIndex == 0) ? const BoxDecoration(
                                      color: Colors.amber,
                                      borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
                                    ) : null,
                                    child: Text(
                                      "L???ch s??? l??u",
                                      style: (activePageIndex == 0) ? TextStyle(color: Colors.white) : TextStyle(color: Colors.black),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: InkWell(
                                  borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
                                  onTap: _onBuyNowButtonPress,
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    padding: EdgeInsets.symmetric(vertical: 5),
                                    alignment: Alignment.center,
                                    decoration: (activePageIndex == 1) ? const BoxDecoration(
                                      color: Colors.amber,
                                      borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
                                    ) : null,
                                    child: Text(
                                      "???? l??u",
                                      style: (activePageIndex == 1) ? TextStyle(color: Colors.white) : TextStyle(color: Colors.black),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: PageView(
                      controller: _pageController,
                      physics: const ClampingScrollPhysics(),
                      onPageChanged: (int i) {
                        FocusScope.of(context).requestFocus(FocusNode());
                        setState(() {
                          activePageIndex = i;
                        });
                      },
                      children: <Widget>[
                        ConstrainedBox(
                          constraints: const BoxConstraints.expand(),
                          child: SafeArea(
                            child: Stack(
                              children: <Widget>[
                                Column(
                                  children: [
                                    Expanded(
                                      child: SingleChildScrollView(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(left: 10),
                                              child: Text('H??m nay - th??? 3 13 th??ng 9,2022', style: TextStyle(fontSize: 14.0, color: Colors.black),),
                                            ),
                                            ListView.builder(
                                                physics: NeverScrollableScrollPhysics(),
                                                itemCount: FAKE_BOX_LIST_JOB.length,
                                                shrinkWrap: true,
                                                itemBuilder: (BuildContext context, int index) =>
                                                    Padding(
                                                      padding: const EdgeInsets.all(8.0),
                                                      child: ItemBoxListJob(
                                                          item: FAKE_BOX_LIST_JOB[index],
                                                          onClickItem: () {}),
                                                    )),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 10),
                                              child: Text('H??m qua - th??? 2 12 th??ng 9,2022', style: TextStyle(fontSize: 14.0, color: Colors.black),),
                                            ),
                                            ListView.builder(
                                                physics: NeverScrollableScrollPhysics(),
                                                itemCount: FAKE_BOX_LIST_JOB.length,
                                                shrinkWrap: true,
                                                itemBuilder: (BuildContext context, int index) =>
                                                    Padding(
                                                      padding: const EdgeInsets.all(8.0),
                                                      child: ItemBoxListJob(
                                                          item: FAKE_BOX_LIST_JOB[index],
                                                          onClickItem: () {}),
                                                    )),
                                            Center(child: Text('...', style: TextStyle(fontSize: 20.0, color: Colors.black),)),
                                            SizedBox(height: 20,),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],),
                          ),
                        ),
                        ConstrainedBox(
                          constraints: const BoxConstraints.expand(),
                          child:  SafeArea(
                            child: Stack(
                              children: <Widget>[
                                Container(
                                    width: MediaQuery
                                        .of(context)
                                        .size
                                        .width,
                                    height: MediaQuery
                                        .of(context)
                                        .size
                                        .height,
                                    child:Container(
                                      height: 100,
                                      width: 100,
                                      // decoration: new BoxDecoration(
                                      //   image: new DecorationImage(
                                      //     // image: new AssetImage('assets/images/logo hatonet-031.png'),
                                      //     fit: BoxFit.scaleDown,
                                      //   ),
                                      // ),
                                      child: Column(
                                        children: [
                                          Expanded(
                                            child: SingleChildScrollView(
                                              child: ListView.builder(
                                                  physics: NeverScrollableScrollPhysics(),
                                                  itemCount: FAKE_BOX_PAGE_TWO_LIST_JOB.length,
                                                  shrinkWrap: true,
                                                  itemBuilder: (BuildContext context, int index) =>
                                                      Padding(
                                                        padding: const EdgeInsets.all(8.0),
                                                        child: ItemBoxListPageJob(
                                                            item: FAKE_BOX_PAGE_TWO_LIST_JOB[index],
                                                            onClickItem: () {}),
                                                      )),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                ),
                              ],),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }

  void _onPlaceBidButtonPress() {
    _pageController.animateToPage(0,
        duration: const Duration(milliseconds: 500), curve: Curves.decelerate);
  }

  void _onBuyNowButtonPress() {
    _pageController.animateToPage(1,
        duration: const Duration(milliseconds: 500), curve: Curves.decelerate);
  }

}