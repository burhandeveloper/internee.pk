import 'package:flutter/material.dart';

import '../api_services/api_services.dart';
import '../model/multi_data_model.dart';

class ScreenWithModel extends StatefulWidget {
  const ScreenWithModel({Key? key}) : super(key: key);

  @override
  State<ScreenWithModel> createState() => _ScreenWithModelState();
}

class _ScreenWithModelState extends State<ScreenWithModel> {

  MultiData multiData=MultiData();
  bool isReady=false;
  _getPost(){
    isReady=true;
    ApiServices().getMultiDataWithModel().then((value) {
      setState(() {
        multiData=value!;
        isReady=false;
      });
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getPost();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text('Data Comes From Api'),),
      body: isReady==true?Center(child: CircularProgressIndicator(),): Column(
        children: [
         //  Text(multiData.page.toString()),
         //  Text(multiData.total.toString()),
         //  Text(multiData.totalPages.toString()),
         // Text(multiData.support!.text.toString()),

          Expanded(
              child: ListView.builder(
              itemCount: multiData.data!.length,
              itemBuilder: (context,index){
            return Card(
              color: Colors.black12,
              child: ListTile(
                title: Text(multiData.data![index].name.toString(),),
                subtitle: Text(multiData.data![index].pantoneValue.toString()),
                leading: Text(multiData.data![index].id.toString()),
              ),
            );
          }))
        ],
      ),
    );
  }
}
