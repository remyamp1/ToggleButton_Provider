import 'package:button_provider/Switch_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class switchButton extends StatefulWidget
{
  @override
  State <switchButton> createState()=> _SwitchButtonState();

}
class _SwitchButtonState extends State<switchButton>{
  @override
  Widget build(BuildContext context){
    final button=Provider.of<SwitchProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          " Toggle Switch Button"
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(button.ison?"ON":"OFF"),
              SizedBox(height: 15),
              ElevatedButton(onPressed: (){
                button.switchbutton();
              }, child: Text(button.ison?"Turn OFF":"Turn ON"))
          
            ],
          ),
        ),
      ),
    );
  }
}