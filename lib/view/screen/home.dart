import 'package:day2/view/widgets/user_card.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cards"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(children: [
            cardList(),
            imageBox(context),
            btnList(context),
          ]),
        ),
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
            // Navigator.pushNamed(context, "/");
          },
          child: const Text("Contact"),
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
