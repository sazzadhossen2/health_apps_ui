import 'package:flutter/material.dart';

import 'model/model.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.detail});

  final DoctorDetail detail;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: MediaQuery.of(context).size.height * 0.45,
            child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  detail.image,
                  fit: BoxFit.cover,
                )),
          ),
          Positioned(
              top: MediaQuery.of(context).padding.top,
              left: 15,
              child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(Icons.arrow_back))),
          Positioned(
            top: MediaQuery.of(context).size.height * .4,
            left: 0,
            right: 0,
            height: MediaQuery.of(context).size.height * 0.69,
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40),
                      topLeft: Radius.circular(40))),
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      detail.drName,
                      style:
                          const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      detail.drCategory,
                      style: const TextStyle(
                          // fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "About Doctor",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      detail.aboutDoctor,
                      style: const TextStyle(
                          // fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Upcoming Schedules",
                      style: TextStyle(
                           fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: detail.containerColor),
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 20,
                            ),
                            Container(
                              height: 80,
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: detail.color),
                              child: Center(child: Text(detail.date,style: const TextStyle(
                                fontSize: 20,color: Colors.white
                              ),)),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(height: 10,),
                                  const Text("Consultation",style: TextStyle(
                                    fontSize: 20,
                                  //  fontWeight: FontWeight.bold
                                  ),),
                                  Text(detail.consultainTime,style: const TextStyle(
                                    color: Colors.black54
                                  ),)
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
