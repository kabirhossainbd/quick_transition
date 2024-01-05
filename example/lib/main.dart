import 'package:flutter/material.dart';
import 'package:quick_transition/quick_transition.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('QuickTransition'),
        ),
        body: const AnotherScreen()
      ),
    );
  }
}


class AnotherScreen extends StatelessWidget {
  const AnotherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child: Center(
          child: Row(
            children: [

              const SizedBox(width: 10,),

              /// Left to right
              GestureDetector(
                  onTap: (){
                    Navigator.push(context,QuickTransitionRoute(mode: TransitionMode.leftToRight,child: const NewScreen()));
                  },
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.blue, width: 2),
                    ),
                    child: const CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage('https://imgupscaler.com/images/samples/animal-after.webp'),
                    ),
                  )),
              const SizedBox(width: 10,),

              /// Right to left
              GestureDetector(
                  onTap: (){
                    Navigator.push(context,QuickTransitionRoute(mode: TransitionMode.rightToLeft,child: const NewScreen()));
                  },
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.blue, width: 2),
                    ),
                    child: const CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage('https://imgupscaler.com/images/samples/animal-after.webp'),
                    ),
                  )),
              const SizedBox(width: 10,),

              /// zoom
              GestureDetector(
                  onTap: (){
                    Navigator.push(context,QuickTransitionRoute(mode: TransitionMode.zoom,child: const NewScreen()));
                  },
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.blue, width: 2),
                    ),
                    child: const CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage('https://imgupscaler.com/images/samples/animal-after.webp'),
                    ),
                  )),
              const SizedBox(width: 10,),

              /// Top to bottom
              GestureDetector(
                  onTap: (){
                    Navigator.push(context,QuickTransitionRoute(mode: TransitionMode.topToBottom,child: const NewScreen()));
                  },
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.blue, width: 2),
                    ),
                    child: const CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage('https://imgupscaler.com/images/samples/animal-after.webp'),
                    ),
                  )),
              const SizedBox(width: 10,),

              /// bottom to top
              GestureDetector(
                  onTap: (){
                    Navigator.push(context,QuickTransitionRoute(mode: TransitionMode.bottomToTop,child: const NewScreen()));
                  },
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.blue, width: 2),
                    ),
                    child: const CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage('https://imgupscaler.com/images/samples/animal-after.webp'),
                    ),
                  )),
              const SizedBox(width: 10,),
            ],
          ),
        ),
    );
  }
}

class NewScreen extends StatelessWidget {
  const NewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black38,
      body:  SafeArea(
        child: Container(
          padding: const EdgeInsets.all(10),
          alignment: Alignment.topRight,
            height: double.infinity,
            width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(image: NetworkImage('https://imgupscaler.com/images/samples/animal-after.webp'), fit: BoxFit.cover)
          ),
          child: IconButton(
            onPressed: ()=> Navigator.pop(context),
            icon: const Icon(Icons.close, color: Colors.white, size: 25,),
          )
        )
      ),
    );
  }
}

