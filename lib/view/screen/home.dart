import 'package:day2/util/app_color.dart';
import 'package:day2/util/app_size.dart';
import 'package:day2/view/widgets/user_card.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          child: Column(
            children: const [
              UserAccountsDrawerHeader(
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Colors.yellow,
                    child: Text(
                      "Y",
                      style: TextStyle(fontSize: 20.0, color: Colors.grey),
                    ),
                  ),
                  accountName: Text("Yunesh Shrestha"),
                  accountEmail: Text("yuneshshrestha24@gmail.com")),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Settings"),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: const Text("Cards"),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.notifications))
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: AppSize.marginX, vertical: AppSize.marginY),
            child: Column(children: [
              cardImages(context,
                  "https://images.pexels.com/photos/167699/pexels-photo-167699.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
              gap(),
              cardImages(context,
                  "https://images.pexels.com/photos/2662116/pexels-photo-2662116.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
              gap(),
              cardImages(context,
                  "https://images.pexels.com/photos/2662116/pexels-photo-2662116.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
              gap(),
              cardImages(context,
                  "https://images.pexels.com/photos/2662116/pexels-photo-2662116.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),

              // Card(
              //   child: ListTile(
              //     contentPadding: EdgeInsets.all(AppSize.listPadding),
              //     title: Text("Hello World"),
              //     subtitle: Text("Its me yunesh."),
              //   ),
              // ),
              // Card(
              //   child: ListTile(
              //     contentPadding: EdgeInsets.all(AppSize.listPadding),
              //     title: Text("Hello World"),
              //     subtitle: Text("Its me yunesh."),
              //   ),
              // ),
            ]),
          ),
        ),
      ),
    );
  }

  SizedBox gap() {
    return const SizedBox(
      height: 10.0,
    );
  }

  Container cardImages(BuildContext context, String image) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: AppSize.cardHeight,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSize.cardBorderRadius),
          border: Border.all(color: AppColor.secondaryColor),
          image: DecorationImage(fit: BoxFit.cover, image: NetworkImage(image)),
          boxShadow: const [
            BoxShadow(
                color: AppColor.primaryColor,
                offset: Offset(0, 0),
                blurRadius: AppSize.cardBorderRadius,
                spreadRadius: 0.5)
          ]),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSize.cardBorderRadius),
          color: Colors.black.withOpacity(0.8),
        ),
        child: const Center(
            child: Text(
          "Hello",
          style: TextStyle(color: Colors.white),
          textScaleFactor: 2.0,
        )),
      ),
    );
  }

  Row btnList(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ElevatedButton(
          onPressed: () {
            // Navigator.push(
            //     context, MaterialPageRoute(builder: (context) => const Home()));
          },
          child: const Text("Home"),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, "/dog");
          },
          child: const Text("Dog"),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, "/about");
          },
          child: const Text("About"),
        ),
      ],
    );
  }

  SizedBox imageBox(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 100,
      child: Image.network(
        "https://images.pexels.com/photos/3244513/pexels-photo-3244513.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        fit: BoxFit.cover,
      ),
    );
  }

  Column cardList() {
    return Column(
      children: const [
        UserCard(name: "Hello 1", des: "Description 1", icon: Icons.call),
        UserCard(name: "Hello 2", des: "Description 2", icon: Icons.message),
        UserCard(
            name: "Hello 3", des: "Description 2", icon: Icons.data_saver_off),
      ],
    );
  }
}
