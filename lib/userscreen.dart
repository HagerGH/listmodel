import 'package:flutter/material.dart';
class Model{
  final int id;
  final String name;
  final String phone;

  Model({
    required this.id,
   required this.name,
   required this.phone,
});
}
class UserScreen extends StatelessWidget{
  List<Model>Users=[
    Model(id: 2, name: 'hager', phone:'0112333'),
    Model(id: 3, name: 'Ali', phone:'0114433'),
    Model(id: 4, name: 'osama', phone:'0112333'),
    Model(id: 5, name: 'Aya', phone:'0166333'),
    Model(id: 6, name: 'anas', phone:'0142333'),

  ];
  @override
 Widget  build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'users'

        ),
      ),
      body: ListView.separated(
          itemBuilder: (context ,index)=>buildUserItem(Users[index]) ,
          separatorBuilder: (context ,index)=>Container(
            width: double.infinity,
            height: 1.0,
            color: Colors.grey[300],
          ),
          itemCount: Users.length ,),

    );
  }
  Widget buildUserItem(Model userModel)=>Padding(
    padding: const EdgeInsets.all(20.0),
    child: Row(
      children: [
        CircleAvatar(
          radius: 20.0,
          child: Text(
            '${userModel.id}',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          width: 20.0,
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              '${userModel.name}',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text('${userModel.phone}',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}