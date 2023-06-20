import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class FaceBook extends StatefulWidget {
  const FaceBook({super.key});

  @override
  State<FaceBook> createState() => _FaceBookState();
}

class _FaceBookState extends State<FaceBook> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    List<Widget> tabItems = const [
      Icon(
        Icons.home,
      ),
      Icon(
        Icons.people_alt,
      ),
      Icon(
        Icons.youtube_searched_for,
      ),
      Icon(
        Icons.shop_2_outlined,
      ),
      Icon(
        Icons.notifications_none_outlined,
      ),
      Icon(
        Icons.horizontal_split,
      ),
    ];
    List<Widget> tabBarViewItem = [
      Container(
        child: Center(
          child: Column(
            children: [
              Container(
                color: Colors.grey[200],
                height: height * 0.1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Menu',
                            style: TextStyle(
                                fontSize: height * 0.03,
                                fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.search,
                              ),
                              SizedBox(
                                width: width * 0.02,
                              ),
                              const Icon(
                                Icons.settings,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  child: ListView(
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(
                              50,
                            ),
                            child: Image.asset(
                              'images/aizal.png',
                            ),
                          ),
                        ),
                        title: const Text('Aizal Malik'),
                        subtitle: const Text(
                          'See your profile',
                          style: TextStyle(
                            color: Color.fromARGB(
                              255,
                              135,
                              129,
                              129,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text('Yor shortcuts'),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Image.asset(
                            'images/facebook.png',
                            height: 50,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          'Soul M a t e ',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(
                          left: 10,
                        ),
                        child: Text(
                          'All shortcuts',
                        ),
                      ),
                      Card(
                        child: SizedBox(
                          height: height * 0.2,
                          child: Center(child: Text('Elevated Card')),
                        ),
                      ),
                      Card(
                        child: SizedBox(
                          height: height * 0.2,
                          child: Center(child: Align(alignment: Alignment.centerLeft,
                            child: Column(children: [Icon(Icons.group,),
                            const Text('Groups',),],),
                          ),),
                        ),
                      ),
                      Card(
                        child: SizedBox(
                          height: height * 0.2,
                          child: Center(child: Text('Elevated Card')),
                        ),
                      ),
                      Card(
                        child: SizedBox(
                          height: height * 0.2,
                          child: Center(child: Text('Elevated Card')),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      Container(
        child: Center(
          child: Card(
            child: SizedBox(
              width: 300,
              height: 100,
              child: Center(child: Text('Elevated Card')),
            ),
          ),
        ),
      ),
      Container(
        child: Center(child: Text('First Tab')),
      ),
      Container(
        child: Center(child: Text('Second Tab')),
      ),
      Container(
        child: Center(child: Text('First Tab')),
      ),
      Container(
        child: Center(child: Text('Second Tab')),
      ),
    ];

    return DefaultTabController(
      length: tabItems.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Facebook',
            style: TextStyle(
              fontSize: height * 0.04,
              fontWeight: FontWeight.bold,
            ),
          ),
          bottom: TabBar(
            tabs: tabItems,

            //  indicator: const BoxDecoration(color: Colors.amber),
          ),
        ),
        body: TabBarView(children: tabBarViewItem),
      ),
    );
  }
}
