import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class devil extends StatefulWidget {
  const devil({super.key});
  @override
  State<devil> createState() => _devilState();
}
class _devilState extends State<devil> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  final loginKey = GlobalKey<FormState>();
  String name = '', password = '';

  bool _passwordVisible = true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
          backgroundColor: Colors.black,
          child:
          Column(children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 0),
              child: TextFormField(
                style: const TextStyle(color: Colors.yellowAccent, fontSize: 12),
                decoration: const InputDecoration(
                    label: Text('DEVIL'),
                    labelStyle: TextStyle(fontSize: 12, color: Colors.red, backgroundColor: Colors.transparent),
                    suffixText: 'here',
                    suffixStyle: TextStyle(fontSize: 12, color: Colors.blue),
                    focusedErrorBorder:OutlineInputBorder(
                      borderRadius: BorderRadius.horizontal(),
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.vertical(),
                    )
                ),
                cursorColor: Colors.blueAccent,
              ),
            ),
            TextFormField(
              style: const TextStyle(color: Colors.yellowAccent, fontSize: 12),
              decoration: const InputDecoration(
                  label: Text('1'),
                  labelStyle: TextStyle(fontSize: 12, color: Colors.red, backgroundColor: Colors.transparent),
                  suffixText: 'write here',
                  suffixStyle: TextStyle(fontSize: 12, color: Colors.blue),
                  focusedErrorBorder:OutlineInputBorder(
                    borderRadius: BorderRadius.horizontal(),
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                    borderRadius: BorderRadius.vertical(),
                  )
              ),
              cursorColor: Colors.blueAccent,),
            TextFormField(
              style: const TextStyle(color: Colors.yellowAccent, fontSize: 12),
              decoration: const InputDecoration(
                  label: Text('2'),
                  labelStyle: TextStyle(fontSize: 12, color: Colors.red, backgroundColor: Colors.transparent),
                  suffixText: 'write here',
                  suffixStyle: TextStyle(fontSize: 12, color: Colors.blue),
                  focusedErrorBorder:OutlineInputBorder(
                    borderRadius: BorderRadius.horizontal(),
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                    borderRadius: BorderRadius.vertical(),
                  )
              ),
              cursorColor: Colors.blueAccent,),
            TextFormField(
              style: const TextStyle(color: Colors.yellowAccent, fontSize: 12),
              decoration: const InputDecoration(
                  label: Text('3'),
                  labelStyle: TextStyle(fontSize: 12, color: Colors.red, backgroundColor: Colors.transparent),
                  suffixText: 'write here',
                  suffixStyle: TextStyle(fontSize: 12, color: Colors.blue),
                  focusedErrorBorder:OutlineInputBorder(
                    borderRadius: BorderRadius.horizontal(),
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                    borderRadius: BorderRadius.vertical(),
                  )
              ),
              cursorColor: Colors.blueAccent,),
            TextFormField(
              style: const TextStyle(color: Colors.yellowAccent, fontSize: 12),
              decoration: const InputDecoration(
                  label: Text('4'),
                  labelStyle: TextStyle(fontSize: 12, color: Colors.red, backgroundColor: Colors.transparent),
                  suffixText: 'write here',
                  suffixStyle: TextStyle(fontSize: 12, color: Colors.blue),
                  focusedErrorBorder:OutlineInputBorder(
                    borderRadius: BorderRadius.horizontal(),
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                    borderRadius: BorderRadius.vertical(),
                  )
              ),
              cursorColor: Colors.blueAccent,),
            TextFormField(
              style: const TextStyle(color: Colors.yellowAccent, fontSize: 12),
              decoration: const InputDecoration(
                  label: Text('5'),
                  labelStyle: TextStyle(fontSize: 12, color: Colors.red, backgroundColor: Colors.transparent),
                  suffixText: 'write here',
                  suffixStyle: TextStyle(fontSize: 12, color: Colors.blue),
                  focusedErrorBorder:OutlineInputBorder(
                    borderRadius: BorderRadius.horizontal(),
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                    borderRadius: BorderRadius.vertical(),
                  )
              ),
              cursorColor: Colors.blueAccent,),
            TextFormField(
              style: const TextStyle(color: Colors.yellowAccent, fontSize: 12),
              decoration: const InputDecoration(
                  label: Text('6'),
                  labelStyle: TextStyle(fontSize: 12, color: Colors.red, backgroundColor: Colors.transparent),
                  suffixText: 'write here',
                  suffixStyle: TextStyle(fontSize: 12, color: Colors.blue),
                  focusedErrorBorder:OutlineInputBorder(
                    borderRadius: BorderRadius.horizontal(),
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                    borderRadius: BorderRadius.vertical(),
                  )
              ),
              cursorColor: Colors.blueAccent,),
            TextFormField(
              style: const TextStyle(color: Colors.yellowAccent, fontSize: 12),
              decoration: const InputDecoration(
                  label: Text('7'),
                  labelStyle: TextStyle(fontSize: 12, color: Colors.red, backgroundColor: Colors.transparent),
                  suffixText: 'write here',
                  suffixStyle: TextStyle(fontSize: 12, color: Colors.blue),
                  focusedErrorBorder:OutlineInputBorder(
                    borderRadius: BorderRadius.horizontal(),
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                    borderRadius: BorderRadius.vertical(),
                  )
              ),
              cursorColor: Colors.blueAccent,),
            TextFormField(
              style: const TextStyle(color: Colors.yellowAccent, fontSize: 12),
              decoration: const InputDecoration(
                  label: Text('8'),
                  labelStyle: TextStyle(fontSize: 12, color: Colors.red, backgroundColor: Colors.transparent),
                  suffixText: 'write here',
                  suffixStyle: TextStyle(fontSize: 12, color: Colors.blue),
                  focusedErrorBorder:OutlineInputBorder(
                    borderRadius: BorderRadius.horizontal(),
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                    borderRadius: BorderRadius.vertical(),
                  )
              ),
              cursorColor: Colors.blueAccent,),
            TextFormField(
                style: const TextStyle(color: Colors.yellowAccent, fontSize: 12),
                decoration: const InputDecoration(
                    label: Text('9'),
                    labelStyle: TextStyle(fontSize: 12, color: Colors.red, backgroundColor: Colors.transparent),
                    suffixText: 'write here',
                    suffixStyle: TextStyle(fontSize: 12, color: Colors.blue),
                    focusedErrorBorder:OutlineInputBorder(
                      borderRadius: BorderRadius.horizontal(),
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.vertical(),
                    )
                ),
                cursorColor: Colors.blueAccent),
            TextFormField(
                style: const TextStyle(color: Colors.yellowAccent, fontSize: 12),
                decoration: const InputDecoration(
                    label: Text('10'),
                    labelStyle: TextStyle(fontSize: 12, color: Colors.red, backgroundColor: Colors.transparent),
                    suffixText: 'write here',
                    suffixStyle: TextStyle(fontSize: 12, color: Colors.blue),
                    focusedErrorBorder:OutlineInputBorder(
                      borderRadius: BorderRadius.horizontal(),
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.vertical(),
                    )
                ),
                cursorColor: Colors.blueAccent),
            TextFormField(
                style: const TextStyle(color: Colors.yellowAccent, fontSize: 12),
                decoration: const InputDecoration(
                    label: Text('11'),
                    labelStyle: TextStyle(fontSize: 12, color: Colors.red, backgroundColor: Colors.transparent),
                    suffixText: 'write here',
                    suffixStyle: TextStyle(fontSize: 12, color: Colors.blue),
                    focusedErrorBorder:OutlineInputBorder(
                      borderRadius: BorderRadius.horizontal(),
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.vertical(),
                    )
                ),
                cursorColor: Colors.blueAccent),
            TextFormField(
                style: const TextStyle(color: Colors.yellowAccent, fontSize: 12),
                decoration: const InputDecoration(
                    label: Text('12'),
                    labelStyle: TextStyle(fontSize: 12, color: Colors.red, backgroundColor: Colors.transparent),
                    suffixText: 'write here',
                    suffixStyle: TextStyle(fontSize: 12, color: Colors.blue),
                    focusedErrorBorder:OutlineInputBorder(
                      borderRadius: BorderRadius.horizontal(),
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.vertical(),
                    )
                ),
                cursorColor: Colors.blueAccent),
            TextFormField(
                style: const TextStyle(color: Colors.yellowAccent, fontSize: 12),
                decoration: const InputDecoration(
                    label: Text('13'),
                    labelStyle: TextStyle(fontSize: 12, color: Colors.red, backgroundColor: Colors.transparent),
                    suffixText: 'write here',
                    suffixStyle: TextStyle(fontSize: 12, color: Colors.blue),
                    focusedErrorBorder:OutlineInputBorder(
                      borderRadius: BorderRadius.horizontal(),
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.vertical(),
                    )
                ),
                cursorColor: Colors.blueAccent),
          ],)

        /* ListView.separated(
            itemBuilder: (context, index){
               return Text('');
            },
            separatorBuilder: (context, int index) {
              return ListTile(title: Text(''),);
            },
            itemCount: 5)*/

      ),
      backgroundColor: Colors.transparent,
      appBar: AppBar(title:
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 0),
        child:
        Text("DEVIL'S PAGE", style: TextStyle(fontSize: 30, color: Colors.red),),
      ),),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 25),
            child: InkWell(
                onLongPress: (){
                  Navigator.pushNamed(context, '/allNews');
                },
                child: const Text('Login ', style: TextStyle(fontSize: 25, color: Colors.blueAccent),)),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 20),
                child: TextFormField(

                  style: const TextStyle(color: Colors.red, ),
                  decoration:
                  InputDecoration(labelText:'Username',
                      labelStyle: const TextStyle(fontSize: 12, color: Colors.yellowAccent),
                      icon: const Icon(Icons.account_balance),
                      iconColor: CupertinoColors.systemPink,
                      counterText: 'keep typing',
                      counterStyle: const TextStyle(fontSize: 12, color: Colors.greenAccent),
                      suffixStyle: const TextStyle(fontSize:12, color: Colors.yellowAccent),
                      fillColor: Colors.blueAccent,
                      suffix: const Text('hey'),
                      errorText: "Don't Know?",
                      errorStyle: const TextStyle(fontSize: 12, color: Colors.purpleAccent),
                      errorBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(100)
                      ),
                      focusedErrorBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.horizontal(),
                        borderSide:  BorderSide(color: Colors.blueAccent),
                      )
                  ),
                  onChanged: (value){
                    print('Username: $value');
                  },
                  validator: (value){
                    if (value == null || value.isEmpty){
                      return 'Please enter your username';
                    }
                    return null;
                  },

                  cursorColor: Colors.blueAccent,
                ),
              ),
              const SizedBox(height: 32,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                child: TextFormField(
                  key: loginKey,
                  style: const TextStyle(color: Colors.blueAccent , ),
                  obscureText: _passwordVisible,
                  decoration: InputDecoration(
                      suffixIconColor: Colors.pink,
                      labelText: 'Password',
                      labelStyle: const TextStyle(fontSize: 12, color: Colors.greenAccent),
                      icon: const Icon(Icons.adb_outlined),
                      iconColor: Colors.indigoAccent,

                      suffix: GestureDetector(
                        onTap: () {
                          setState((){
                            _passwordVisible = !_passwordVisible;
                          });
                        },
                        child: Icon(
                          _passwordVisible ? Icons.visibility : Icons.visibility_off,
                          color: Colors.blueAccent,
                        ),
                      ),

                      errorText: "Do you?",
                      errorStyle: const TextStyle(fontSize: 12, color: Colors.purpleAccent),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide: const BorderSide(color: Colors.white),
                      ),
                      focusedErrorBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blueAccent),
                        borderRadius: BorderRadius.horizontal(),
                      )
                  ),
                  onChanged: (value){
                    print('Password: $value');
                    password = value;
                  },
                  validator: (value){
                    if (value == null || value.isEmpty){
                      return 'Please enter your password';
                    }
                    return null;
                  },
                ),
              ),
              ElevatedButton(
                  onPressed: (){
                    if (loginKey.currentState!.validate()){
                      print('Name: $name');
                      print('Password: $password');
                    }
                  },

                  child: Text('Submit'))
            ],
          )
        ],
      ),
    );
  }
}