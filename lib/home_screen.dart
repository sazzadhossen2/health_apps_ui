import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'details_screen.dart';
import 'model/model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(Icons.menu),
              Image.asset(
                "Images/profile.png",
                height: 40,
                width: 40,
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Choose your Doctor",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 4,
            ),
            const Text(
              "100+ Available",
              style: TextStyle(fontSize: 15, color: Colors.black45),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(30),
              ),
              child: TextFormField(
                decoration: const InputDecoration(
                    hintText: "search",
                    prefixIcon: Icon(Icons.search),
                    border: InputBorder.none),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Category",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    const Text(
                      "Children",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 25,
                      width: 60,
                      decoration: BoxDecoration(
                          color: Colors.blue[200],
                          borderRadius: BorderRadius.circular(30)),
                      child: const Center(
                          child: Text(
                        "Category",
                        style: TextStyle(fontSize: 12),
                      )),
                    )
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: doctorItems.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        child: Column(
                          children: [
                            Container(
                              height: 130,
                              width: 160,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        doctorItems[index].categoryImage),
                                    fit: BoxFit.cover),
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    bottomLeft: Radius.circular(20)),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              doctorItems[index].drCategory,
                              style: const TextStyle(fontSize: 15),
                            ),
                            Text(
                              "${doctorItems[index].noOfDoctor.toString()} Doctor",
                              style: const TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Choose your Doctor",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: ListView.builder(

                  //  scrollDirection: Axis.horizontal,
                  itemCount: doctorItems.length,
                  itemBuilder: (context, index) {
                    final doctor = doctorItems[index];
                    return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: (){
                            Get.to(()=>DetailsScreen(detail: doctor,));
                          },
                          child: Material(
                            elevation: 5,
                            color: doctor.containerColor,
                            borderRadius: BorderRadius.circular(40),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage(doctorItems[index].image),
                                    radius: 40,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              doctor.drName,
                                              style: const TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            const Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                            ),
                                            const Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                            ),
                                            const Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                            ),
                                            const Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                            ),

                                            // Text(doctor)
                                          ],
                                        ),
                                        Text(doctor.drCategory),
                                        Row(
                                          //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                                "${doctor.time1.toString()}.00"),
                                            const SizedBox(
                                              width: 30,
                                            ),
                                            Text(
                                                "${doctor.time2.toString()}.00"),
                                            const SizedBox(
                                              width: 30,
                                            ),
                                            Text(
                                                "${doctor.time3.toString()}.00"),
                                            const SizedBox(width: 40),
                                            Material(
                                              color: doctor.color,
                                              borderRadius: const BorderRadius.only(
                                                topLeft: Radius.circular(20),
                                                bottomRight:
                                                    Radius.circular(40),
                                              ),
                                              child: const Padding(
                                                padding:
                                                    EdgeInsets.all(15),
                                                child: Icon(
                                                  Icons.arrow_forward,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ));
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
