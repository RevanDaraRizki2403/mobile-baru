import 'package:flutter/material.dart';

class Pertemuan6 extends StatelessWidget {
  const Pertemuan6({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3, 
    child: Scaffold(
      appBar: AppBar(
        title:Text('pertemuan6 membuat List View'),
        bottom: TabBar(tabs: [
          Tab(text: 'List View',),
          Tab(text: 'List View.builder',),
          Tab(text: 'List View.separated',),

        ]),
      ),
      body:TabBarView(children:[
        ContohListView(),
        ContohListViewBuilder(),
        ContohListViewSeparated(),

      ]),
     
    ),
    );
  }
}
class ContohListView extends StatelessWidget {
  final List<int>numberList =[1,2,3,4,5,6,7];
   ContohListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children:numberList.map((int number){
        return Container(
          height: 250,
          decoration: BoxDecoration(
            color: Colors.blue,
            border:Border.all(color:Colors.white)
          ),
          child:Center(
            child:Text('$number',
            style: TextStyle(fontSize:50),
            ),

          ),
        );
      }).toList(),
    );
  }
}

class ContohListViewBuilder extends StatelessWidget {
  final List<int>numberList =[1,2,3,4,5,6,7];
  ContohListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder
    (itemCount: numberList.length,
    itemBuilder: (BuildContext context, int index){
      return Container (
        height: 250,
          decoration: BoxDecoration(
            color: Colors.yellow,
            border:Border.all(color:Colors.white)
          ),
          child:Center(
            child:Text(
              '${numberList[index]}',
              style: TextStyle(fontSize:50),
              ),
            ),
      );
    });
  }
}

class ContohListViewSeparated extends StatelessWidget {
   final List<int>numberList =[1,2,3,4,5,6,7];
  ContohListViewSeparated({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(itemBuilder: (BuildContext context, int index){
      return Container (
        height: 250,
          decoration: BoxDecoration(
            color: Colors.purple,
            border:Border.all(color:Colors.white)
          ),
          child:Center(
            child:Text(
              '${numberList[index]}',
              style: TextStyle(fontSize:50),
              ),
            ),
      );
    }, separatorBuilder: (BuildContext context, int index){
      return Container(
        height:15,
        color: Colors.red,
      );
    },
     itemCount: numberList.length);
  }
}
