import 'package:bmii/Provider/data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'home_ui_page_02.dart';


class Home extends StatelessWidget {
     Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF101428),
      appBar: AppBar(
        title: const Center(child: Text("BMI  CALCULATOR")),
        backgroundColor: const Color((0xFF101428),

        ),
        elevation: 0,
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            Consumer<Dataprovider>(builder: (context,provider,child){
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                          provider.setGender(true);
                      },
                      child: Container(
                        height: 150,
                        decoration: BoxDecoration(

                          color: provider.Gender ?  Color(0xFF232336) : Color(0xFFFF1D1E33),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.male,
                              size: 50,
                              color: Colors.white,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text("MALE",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap:(){
              provider.setGender(false);
              },
                      child: Container(
                        height: 150,
                        decoration: BoxDecoration(
                            color:provider.Gender ?  Color(0xFF1D1E33) : Color(0xFF232336) ,
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.female,
                              size: 50,
                              color: Colors.white,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text("FEMALE",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              );
            }),

            const SizedBox(
              height: 20,
            ),
            Container(
              height: 210,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xFF232336),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //  SizedBox(height: 10,),
                  const Text("HEIGHT",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Consumer<Dataprovider>(builder: (context,provider,child){
                        return Text(provider.Hight.toString(),
                          style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),

                        );
                      }),

                      const SizedBox(
                        width: 3,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Text("CM",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,

                          ),
                        ),
                      ),

                    ],
                  ),
                  Consumer<Dataprovider>(builder: (context,provider,child){
                    return Slider(
                        activeColor: Color(0xFFca1b53) ,
                        inactiveColor:Colors.white,
                        value:  provider.Hight.toDouble(),
                        min: provider.kminSliderHight,
                        max: provider.kmaxSliderHight,
                        onChanged: (double value){
                          provider.setHight(value.round());
                        });
                  }),


                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Container(
                    height: 150,
                    decoration: BoxDecoration(
                      color: const Color(0xFF232336),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        const Text("WEIGHT",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        Consumer<Dataprovider>(builder: (context,provider,child){
                          return  Text(provider.Weight.toString(),
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                            ),
                          );
                        }),
                        Consumer<Dataprovider>(builder: (context,provider,child){
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: (){
                                  provider.setWeight(provider.Weight+1);
                                 // print(provider.Weight.toString());
                                },
                                child: const CircleAvatar(
                                  child: Icon(Icons.add,
                                    color: Colors.green,
                                  ),
                                ),
                              ) ,
                              const SizedBox(
                                width: 20,
                              ),
                              GestureDetector(
                                onTap: (){
                                  provider.setWeight(provider.Weight-1);
                                },
                                child: const CircleAvatar(
                                  child: Icon(Icons.remove,
                                    color: Colors.yellowAccent,
                                  ),
                                  backgroundColor: Colors.grey,
                                ),
                              )
                            ],
                          );
                        }),

                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Container(
                    height: 150,
                    decoration: BoxDecoration(
                        color:const Color(0xFF232336),
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        const Text("AGE",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        Consumer<Dataprovider>(builder: (context,provider,child){
                          return Text(provider.Age.toString(),
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                            ),
                          );
                        }),
                        Consumer<Dataprovider>(builder: (context,provider,child){
                         return Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: (){
                                  provider.setAge(provider.Age+1);
                                },
                                child: const CircleAvatar(
                                  child: Icon(Icons.add,
                                    color: Colors.green,
                                  ),
                                ),
                              ) ,
                              const SizedBox(
                                width: 20,
                              ),
                              GestureDetector(
                                onTap: (){
                                  provider.setAge(provider.Age-1);
                                },
                                child: const CircleAvatar(
                                  child: Icon(Icons.remove,
                                    color: Colors.yellowAccent,
                                  ),
                                  backgroundColor: Colors.grey,
                                ),
                              )
                            ],
                          );
                        }),

                      ],
                    ),

                  ),
                )
              ],
            ),
            const SizedBox(height:70,)
          ],
        ),
      ),
      bottomSheet: GestureDetector(
        onTap: (){
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => page_02(),)
          );
        },
        child: Container(
          height: 50,
          decoration:  BoxDecoration(
            color:Color(0xFFca1b53),
          ),
          alignment: Alignment.center,
          child: const Text("CALCULATE",
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
