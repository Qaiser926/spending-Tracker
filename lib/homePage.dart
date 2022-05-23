import 'package:flutter/material.dart';

class homePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      appBar:
      AppBar(elevation: 0, backgroundColor: Colors.amberAccent, actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            radius: 30.0,
            backgroundImage: NetworkImage(
                'https://images.unsplash.com/photo-1567446537708-ac4aa75c9c28?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387'),
            backgroundColor: Colors.transparent,
          ),
        )
      ]),
      body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text('Welcome Back to ',
                        style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Text('Flutter King',
                        textAlign: TextAlign.start,
                        style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  ),
                ),
                SizedBox(
                  height: 14,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Spending Today',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "\$1000.0",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      width: MediaQuery.of(context).size.width * 0.6,
                      height: MediaQuery.of(context).size.height * 0.1,
                    ),
                    Container(
                      child: Icon(
                        Icons.calendar_today,
                        color: Colors.white,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      width: MediaQuery.of(context).size.width * 0.2,
                      height: MediaQuery.of(context).size.height * 0.1,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  title: TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.white60,
                        ),
                        filled: true,
                        fillColor: Colors.grey.withOpacity(0.4),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        hintText: 'Search your spending ...',
                        hintStyle: TextStyle(color: Colors.white.withOpacity(0.6))),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                _mainContainer(context, 'Grocery', '\$40',
                    "https://images.unsplash.com/photo-1605371924599-2d0365da1ae0?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870"),
                SizedBox(
                  height: 10,
                ),
                _mainContainer(context, 'Food', '\$50',
                    "https://images.unsplash.com/photo-1555939594-58d7cb561ad1?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387"),
                SizedBox(
                  height: 10,
                ),
                _mainContainer(context, 'Beauty', '\$70',
                    "https://images.unsplash.com/photo-1650199903668-b9889c714361?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435"),
                SizedBox(
                  height: 10,
                ),
                _mainContainer(context, 'Animale', '\$100',
                    "https://images.unsplash.com/photo-1606206900864-0c24a85c59ea?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387"),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          )),
    );
  }

  Stack _mainContainer(
      BuildContext context, String title, String rat, var image) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Container(
            child: Center(child: Text(title)),
            decoration: BoxDecoration(
                color: Colors.amber.shade900,
                borderRadius: BorderRadius.circular(15)),
            width: 80,
            height: 25,
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.9,
          height: MediaQuery.of(context).size.height * 0.12,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(width: 1, color: Colors.grey),
            color: Colors.grey.withOpacity(0.4),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: CircleAvatar(backgroundImage: NetworkImage(image)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Text(
                  rat,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.white60,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Container(
                  child: Row(
                    children: [
                      CircleAvatar(
                        maxRadius: 15,
                        child: Icon(Icons.upload),
                      ),
                      SizedBox(width: 8),
                      CircleAvatar(
                        maxRadius: 15,
                        child: Icon(
                          Icons.folder,
                          size: 15,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
