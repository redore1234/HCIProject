import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//Create Presentation Class
class Service {
  String title;
  String images;
  bool value;
  String price;
  Service(this.title, this.images, this.value, this.price);
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
      : service = service,
        super(key: new ObjectKey(service));
  @override
  _ServiceItemListState createState() => _ServiceItemListState(service);
}

class _ServiceItemListState extends State<ServiceItemList> {
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            height: 35,
            child:
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(child: Text(service.title)),
                SizedBox(height: 4,),
                Expanded(child: Text(service.price)),
              ],
            ),
          ),
          Container(
            child: Checkbox(
              value: service.value,
              onChanged: (bool value) {
                setState(() {
                  service.value = value;
                });
              }),
          ),
        ],
      ),
    );
  }
}

//Create Listview
class ServiceList extends StatefulWidget {
  ServiceList({Key key, this.service}) : super(key: key);
  List<Service> service;
  @override
  _ServiceListState createState() => _ServiceListState();
}

class _ServiceListState extends State<ServiceList> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        Container(
          child: Container(
            // width: size.width,
            // height: size.height,
            child: Column(
              children: <Widget>[
                Container(
                    // padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 15),
                    // width: double.infinity,
                    child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: widget.service.map((Service service) {
                    return new ServiceItemList(service);
                  }).toList(),
                )),
                SizedBox(
                  height: 50,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
