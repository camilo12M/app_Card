import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {

  static const String name = 'ButtonsScreen';
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar : AppBar(
        title: const Text ('Buttons Screen'),
      ),
     body: const _ButtonsView(),
     floatingActionButton: FloatingActionButton(
      child: const Icon( Icons.arrow_back_ios_new_rounded),
      onPressed: () {
        context.pop();
      },
     ),
    );
 }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child:Padding(
       padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      child: Wrap(
        spacing: 10,
        crossAxisAlignment: WrapCrossAlignment.center,
        alignment: WrapAlignment.center,
        children:[
          ElevatedButton(onPressed: (){},
          child: const Text('Elevated Button'),
          ), ElevatedButton(onPressed: (){},
          child: const Text('Elevated Disabled'),
          ),
          ElevatedButton.icon(onPressed: (){}, 
          icon: const Icon(Icons.access_alarm_rounded), 
          label: Text('Elevate iCon')),

          FilledButton(onPressed: (){}, child:const Text('Flled') ),
          FilledButton.icon(onPressed: (){},
           icon: const Icon (Icons.accessibility_new),
           label: const Text('Filled Icon'),
           ),
           OutlinedButton(onPressed: (){},
            child: const Text('outlined Button'),
            ),
            OutlinedButton.icon(onPressed: (){},
            label: const Text('Outlined Icon'),
            icon: const Icon(Icons.accessibility_new),
            ),
            TextButton(onPressed: (){},
             child: const Text('Text Button'),
             ),
            TextButton.icon(onPressed: (){},
             icon:const Icon(Icons.account_box_outlined), 
             label: const Text('Text Icon'),
             ),
             

              const CustomButton(),
             IconButton(onPressed: (){}, icon:const  Icon(Icons.app_registration_rounded)),
             IconButton(
              onPressed: (){},
              icon:const  Icon(Icons.app_registration_rounded),
               style:  ButtonStyle(
               backgroundColor: MaterialStateProperty.all(Colors.red),
               padding: MaterialStateProperty.all(const EdgeInsets.all(10)),
               shape: MaterialStateProperty.all(const CircleBorder()),
              ),

             ),
        ],
      )
    ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
     final Colors = Theme.of(context).colorScheme;
   
    return  ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color:const Color.fromARGB(255, 10, 11, 12),
        child:  InkWell(
          
          onTap: (){} ,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
              child:   Text('hola mundo', style: TextStyle(color: Colors.onPrimary),),
          ),
        ),
      ),
    );
  }
}