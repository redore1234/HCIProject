import 'package:clinicbookingapp/views/reserve/reserve_step3.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//Create Presentation Class
class Service{
  String title;
  String images;
  bool value;
  Service(this.title, this.images ,this.value);
  @override
  String toString() {
    // TODO: implement toString
    return '{$title , $value}';
  }
}

//Create List Item
class ServiceItemList extends StatefulWidget {
  final Service service;
  ServiceItemList(Service service)
  : service = service, super(key: new ObjectKey(service));
  @override
  _ServiceItemListState createState() => _ServiceItemListState(service);
}

class _ServiceItemListState extends State<ServiceItemList>{
  final Service service;
  _ServiceItemListState(this.service);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: null,
      leading: GestureDetector(
        child: Image.asset(service.images),
      ),
      title: Row(
        children: <Widget>[
          Expanded(child: Text(service.title)),
          Checkbox(value: service.value, onChanged: (bool value){
            setState(() {
              service.value = value;
            });
          }),
        ],
      ),
    );
  }
}

//Create Listview
class ServiceList extends StatefulWidget{
  ServiceList({Key key, this.service}) : super(key: key);
  List<Service> service;
  @override
  _ServiceListState createState() => _ServiceListState();
}

class _ServiceListState extends State<ServiceList>{

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text("Bước 2"),
        centerTitle: true,
        shadowColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: size.width,
          height: size.height,
          child: Column(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 15),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                children: widget.service.map((Service service){
                  return new ServiceItemList(service);
                }).toList(),
              )),
              Container(
                margin: const EdgeInsets.only(left: 70),
                child: RaisedButton(onPressed: (){
                  for (Service s in widget.service){
                    if(s.value)
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => InfomationScreen(),
                          ),
                      );
                  }
                },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80.0)
                  ),
                  textColor: Colors.white,
                  padding: const EdgeInsets.all(0),
                  child: Container(
                    alignment: Alignment.center,
                    height:50.0,
                    width: size.width * 0.5,
                    decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(80.0),
                        gradient: new LinearGradient(colors: [
                          Color.fromARGB(255, 255, 136, 34),
                          Color.fromARGB(255, 255, 177, 41)
                        ])),
                    padding: const EdgeInsets.all(0),
                    child: Text(
                      "Tiếp theo",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold),),
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

