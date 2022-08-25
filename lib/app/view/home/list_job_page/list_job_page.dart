import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hatonet_mobile/app/view/home/list_job_page/detail_job.dart';
import 'package:hatonet_mobile/app/view/home/list_job_page/fake_data_list_job.dart';
import 'package:hatonet_mobile/app/view/home/list_job_page/item_list_job.dart';

class ListJobPage extends StatefulWidget {
  ListJobPage({Key? key}) : super(key: key);

  @override
  State<ListJobPage> createState() => _ListJobPageState();
}

class _ListJobPageState extends State<ListJobPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF5F5F5),
        body: Padding(
          padding: EdgeInsets.all(9.0),
          child: Column(
            children: [
              Row(
                children: [
                  // Image.asset('assets/images/logo hatonet-07 (2).png',
                  //     height: 50),
                  Spacer(),
                  GestureDetector(
                    onTap:() => _showMateriaDialog(context),
                    child: Container(
                      height: 40,
                      child: Material(
                        shape: CircleBorder(),
                        child: IconButton(
                          icon: Icon(FontAwesomeIcons.search),
                          iconSize: 18,
                          onPressed: () {},
                          splashRadius: 19,
                          splashColor: Color(0xFFFF5400),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 40,
                      child: Material(
                        shape: CircleBorder(),
                        child: IconButton(
                          icon: Icon(FontAwesomeIcons.boxArchive),
                          iconSize: 18,
                          onPressed: () {},
                          splashRadius: 19,
                          splashColor: Color(0xFFFF5400),
                        ),
                      ),
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

  void _showMateriaDialog(BuildContext context,) {
    showDialog(
        context: context,
        builder: (context) {
          return SimpleDialog(
            backgroundColor: Colors.grey[200],
            children: [
              Center(
                child: Text(
                  'Share to',
                  style: TextStyle(fontSize: 15.0, color: Colors.black),
                ),
              ),

            ],
          );
        });
  }

  _dismissDialog() {
    Navigator.pop(context);
  }
}
