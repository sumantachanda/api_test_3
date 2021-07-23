import 'package:api_test_3/api/api_call.dart';
import 'package:api_test_3/models/1st_model_news.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'package:api_test_3/api/api_call.dart';

class home_page extends StatefulWidget {
  @override
  _home_pageState createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {

  Future<News>_homepageModel;

  @override
  void initState(){
    _homepageModel = API_caller().getApi();
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: const Color(0xffe0e0e0),
      body: SafeArea(
        child:Container(
          child: Column(

            children: [
                Expanded(child: Container(
                  child: FutureBuilder<News>(





                    future: _homepageModel,
                    builder: (context,snapshot){
                if(snapshot.hasData) {
                  return ListView.builder(
                    itemCount:snapshot.data.articles.length ,
                      itemBuilder: (context, index) {
                      var newarticle=snapshot.data.articles[index];





                      return Container(
                      child: Column(

                        children: [
                          Container(
                      margin: const EdgeInsets.all(10.0),
                      padding: const EdgeInsets.all(2.0),
                      width: double.infinity,
                      height: 215,

                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30.0),

                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 1.0, // soften the shadow
                            spreadRadius: 1.0, //extend the shadow
                            offset: Offset(
                              1.0, // Move to right 10  horizontally
                              1.0, // Move to bottom 10 Vertically
                            ),
                          ),



                        ],
                      ),
                            child:
                                Column(
                                  children:[
                            Text('order status',
                              style: TextStyle(
                                fontSize: 22,
                                color: Colors.redAccent,
                              ),
                            ),

                          SizedBox(height: 5,),
                          Column(
                          children:[
                          Row(
                          children: [
                          Column(
                          children:[
                          Container(



                          padding: const EdgeInsets.all(2.0),
                          margin: const EdgeInsets.all(6.0),
                          width: 55.0,
                          height:55.0 ,
                          decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(60.0),
                          topRight: Radius.circular(60.0),
                          bottomLeft: Radius.circular(60.0),
                          bottomRight: Radius.circular(60.0),
                          ),
                    color: Colors.redAccent,

                    ),
                            child: Card(

                                clipBehavior: Clip.antiAlias,
                                shape: RoundedRectangleBorder(

                              borderRadius: BorderRadius.only(

                                topLeft: Radius.circular(60.0),
                                topRight: Radius.circular(60.0),
                                bottomLeft: Radius.circular(60.0),
                                bottomRight: Radius.circular(60.0),
                              ),
                            ), child: AspectRatio(aspectRatio:1,
                              child:Image.network(newarticle.urlToImage,fit: BoxFit.cover,),))
                    ),
                    SizedBox(height: 5.0),
                    Text('Qty',
                    style: TextStyle(
                    fontSize: 20,
                    ),),

                    ]
                    ),
                    Container(


                    width: 260.0,
                    height:100.0 ,
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25.0),
                    topRight: Radius.circular(25.0),
                    bottomLeft: Radius.circular(25.0),

                    ),
                    color: const Color(0xffffffff),
                    border: Border.all(width: 2.0, color: Colors.redAccent,),
                    ),

                    child:Column(
                    children: [
                    Text(newarticle.title,
                    maxLines: 1,
                    style: TextStyle(
                    fontSize: 20,
                    ),),

                    Flexible(
                      child: Text(newarticle.description,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                      fontSize: 15,


                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,),
                    ),
                    Text('prise',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                    fontSize: 15,
                    ),),
                    ],
                    ),
                    )
                    ],
                    ),
                    SizedBox(height: 7,),
                    Row(
                    children: [

                                                  Container(


                                                  width: 155.0,
                                                  height:40.0 ,
                                                  decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(25.0),
                                                  topRight: Radius.circular(25.0),
                                                  bottomLeft: Radius.circular(25.0),

                                                  ),
                                                  color: const Color(0xffffffff),
                                                  border: Border.all(width: 2.0, color: Colors.greenAccent,),
                                                  ),
                                                  child: FlatButton(onPressed:(){ print('acceepted');},
                                                  child: Text('accept' ,style: TextStyle(fontSize:20,letterSpacing: 1,))),
                                                  ),


                                                  Container(
                                                  margin: const EdgeInsets.all(9.0),

                                                  width: 155.0,
                                                  height:40.0 ,
                                                  decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(25.0),
                                                  topRight: Radius.circular(25.0),
                                                  bottomRight: Radius.circular(25.0),

                                                  ),
                                                  color: const Color(0xffffffff),
                                                  border: Border.all(width: 2.0, color: Colors.redAccent,),
                                                  ),
                                                  child: FlatButton(onPressed:(){ print('Reject');}, child: Text('reject',
                                                  style: TextStyle(fontSize:20,letterSpacing: 1,),)),
                                                  ),
                                                  ],
                                                  )




                                                  ]
                                                  ),





]

),

                    ),
]
                                                    )




);

                  });
                }
                else return


                  Center(
                    child: SpinKitChasingDots(
                      color: Colors.yellowAccent,
                      size: 150.0,
                    ),
                  );



                                  }
                  ),

                  
                ))

            ],),





            ),
            ),

            );
  }
}
