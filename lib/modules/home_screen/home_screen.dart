import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool buttonOne = true;
  bool buttonTwo = false;
  bool buttonThree = false;
  bool buttonFour = false;
  int noOfItem = 1;
  double i = double.infinity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Container(
          alignment: Alignment.center,
          child:const Image(
              image: AssetImage('assets/images/splashScreen.png'),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    width: double.infinity,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.grey[200],
                    ),
                      child: TextFormField(
                        decoration:const InputDecoration(
                          prefixIcon: Icon(
                            Icons.search,
                          ),
                          hintText: 'Search',

                        ),
                      ),
                  ),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Container(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  color: Colors.green,
                  ),
                  child: IconButton(
                    onPressed: (){},
                    icon: const Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25.0,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                   decoration: BoxDecoration(
                     border: Border.all(
                       color: selectedItemColor(buttonOne),
                     ),
                     color: Colors.grey[200],
                     borderRadius: BorderRadius.circular(10.0,),
                   ),
                   child: TextButton(onPressed: (){
                     setState(() {
                       buttonOne = true;
                       buttonTwo = false;
                       buttonThree = false;
                       buttonFour = false;

                     });
                   } , child :const Text('All')),
                   ),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color:selectedItemColor(buttonTwo),
                      ),
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10.0,),
                    ),
                    child: TextButton(onPressed: (){
                      setState(() {
                        buttonOne = false;
                        buttonTwo = true;
                        buttonThree = false;
                        buttonFour  = false;
                      });
                    } , child :const Text('Plants')
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color:selectedItemColor(buttonThree),
                      ),
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10.0,),
                    ),
                    child: TextButton(onPressed: (){
                      setState(() {
                        buttonOne = false;
                        buttonTwo = false;
                        buttonThree = true;
                        buttonFour = false;
                      });
                    } , child :const Text('Seeds')),
                  ),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color:  selectedItemColor(buttonFour),
                      ),
                      color: Colors.grey[200] ,
                      borderRadius: BorderRadius.circular(10.0,),
                    ),
                    child: TextButton(onPressed: (){
                      setState(() {
                        buttonOne = false;
                        buttonTwo = false;
                        buttonThree = false;
                        buttonFour = true;
                      });
                    } , child :const Text('Tools')),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25.0,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Expanded(
                child: Row(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 200.0,
                      decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.circular(10.0)
                      ),
                      child:  Row(
                        children: [
                          const Image(
                            height: 120,
                            image:
                            AssetImage('assets/images/Background - 2022-08-09T145931 3.png'),),
                          IconButton(onPressed: (){}, icon: const Icon(Icons.add), ),
                          Text('1'),
                          IconButton(onPressed: (){}, icon: const  Icon(Icons.add)),

                        ],
                      ),

                    ),
                    Container(
                      width:double.infinity,
                      height: 200.0,
                      decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.circular(10.0)
                      ),
                      child:  Row(
                        children: [
                          const Image(
                            height: 120,
                            image:
                            AssetImage('assets/images/Background - 2022-08-09T145931 3.png'),),
                          IconButton(onPressed: (){}, icon: const Icon(Icons.add), ),
                          Text('1'),
                          IconButton(onPressed: (){}, icon: const  Icon(Icons.add)),

                        ],
                      ),

                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  Color  selectedItemColor(bool item){
    if(item == true) {
      return Colors.green;
    }
    else {
      return Colors.grey;
    }
  }
}
