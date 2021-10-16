import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        //
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[200],
              ),

              height: 230,
              //
              child: Column(
                children: [
                  Expanded(
                    flex: 2, //
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network(
                            "https://www.randomlists.com/img/people/john_bon_jovi.webp",
                            width: 110,
                            height: 110,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  Text("Isep Sopiandani",
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600)
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                ],
                              ),
                              Text(
                                "UI/UX Designer",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.grey[600]),
                              ),
                              Expanded(child: SizedBox()),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 15),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.grey[300],
                                  boxShadow: [
                                    BoxShadow(color: Colors.grey, blurRadius: 4, spreadRadius: 1)
                                  ]



                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("Articles"),
                                        Text("34",
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600,
                                            ))
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text("Followers"),
                                        Text("34",
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600,
                                            ))
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text("Ratings"),
                                        Text("34",
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600,
                                            ))
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1, //
                    child: Row(
                      children: [
                        Expanded(
                          child: OutlineButton(
                            onPressed: () {},
                            child: Text("Chat"),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text("Follow"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
