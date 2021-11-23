import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({ Key? key }) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  List<String> _kelas = ["1" , "2" , "3" , "4" , "5"];
  List<String> _tahunAjaran = ["2018/2019" , "2019/2020" , "2020/2021"];
  //late String _selectedKelas;
  Widget build(BuildContext context) {
    return  Scaffold(
     
      body: SingleChildScrollView(
        child: Column(children: <Widget> [
          SizedBox(height: 100,),
         Container(
              child: Text("Pendaftaran Akun" , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold ),),
            ),
            SizedBox( height:10 ,),
            Container(
              child: Text("Membuat Akun Baru" , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.w300),),
            ),
            SizedBox(height: 30,),
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Text("Nama Depan" , style: TextStyle(fontWeight: FontWeight.w500 , fontSize: 15)),
                      Padding(
                        padding: const EdgeInsets.only(left : 20 , right: 8),
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            hintStyle: TextStyle(color: Colors.grey[800]),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text("Nama Belakang " , style: TextStyle(fontSize: 15 , fontWeight: FontWeight.w500),),
                      Padding(
                        padding: const EdgeInsets.only(left: 8 , right:20 ),
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            hintStyle: TextStyle(color: Colors.grey[800]),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
             SizedBox(height: 10,),
             Text("Email" , style: TextStyle(fontSize: 15 , fontWeight: FontWeight.w500),),
            Padding(
              padding: const EdgeInsets.only(left: 20 , right: 20),
              child: TextField(
                decoration: InputDecoration(
                  border:
                      OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
                  hintStyle: TextStyle(color: Colors.grey[800]),
                ),
                  
              ),
            ),
            SizedBox(height: 10,),
            Text("Password" , style: TextStyle(fontSize: 15 , fontWeight: FontWeight.w500),),
          
            Padding(
              padding: const EdgeInsets.only(left: 20 , right: 20),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border:
                      OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
                  hintStyle: TextStyle(color: Colors.grey[800]),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Text("Kelas" , style: TextStyle(fontSize: 15 , fontWeight: FontWeight.w500),),
                      Padding(
                        padding: const EdgeInsets.only(left: 20 , right: 8),
                        child: DropdownButton<String>(
                          hint : Text("Please choose"),
                          //value: _selectedKelas,
                          items: _kelas.map((e) {
                            return DropdownMenuItem(
                              child: new Text(e),

                              value: e,
                            );
                          }).toList(),
                          onChanged: (_){},


                        )
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text("Tahun Ajaran" , style: TextStyle(fontWeight: FontWeight.w500 , fontSize: 15),),
                      Padding(
                        padding: const EdgeInsets.only(left: 20 , right: 8),
                        child: DropdownButton<String>(
                          hint : Text("Please choose"),
                          //value: _selectedKelas,
                          items: _tahunAjaran.map((e) {
                            return DropdownMenuItem(
                              child: new Text(e),

                              value: e,
                            );
                          }).toList(),
                          onChanged: (_){},


                        )
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 30,),
            ElevatedButton(
              onPressed: (){}, 
              child: Text("Daftar")
              ),
          
            Padding(
              padding: const EdgeInsets.only(left: 95),
              child: Row(
                children: [
                  Text("Sudah Memiliki Akun"),
                  TextButton(onPressed: (){}, child: Text("Silahkan Masuk"))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
