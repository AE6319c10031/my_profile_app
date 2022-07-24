import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class YourAboutUI extends StatefulWidget {
  const YourAboutUI({Key? key}) : super(key: key);

  @override
  State<YourAboutUI> createState() => _YourAboutUIState();
}

class _YourAboutUIState extends State<YourAboutUI> {
  TextEditingController aboutCtrl = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[800],
        title: Text(
          'Add/Edit About',
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 50.0,
            ),
            Text(
              'ป้อนเกี่ยวกับของคุณ',
              style: GoogleFonts.taviraj(
                fontSize: 30.0,
                color: Colors.green[700],
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 50.0,
                right: 50.0,
              ),
              child: TextField(
                controller: aboutCtrl,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'ป้อนเกี่ยวกับคุณ',
                  hintStyle: TextStyle(
                    color: Colors.grey[400],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            ElevatedButton(
              onPressed: () {
                //เขียนโค้ดตรวจสอบว่าได้ป้อนหรือยัง
                if (aboutCtrl.text.trim().length == 0) {
                  //แสดง Alert เตือนให้ผู้ใช้ป้อนข้อความ
                  showDialog(
                      context: context,
                      builder: (builder) {
                        return AlertDialog(
                          title: Text(
                            'คำเตือน',
                          ),
                          content: Text(
                            'ป้อนเกี่ยวกับคุณด้วย',
                          ),
                          actions: [
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text(
                                'ตกลง',
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.green[700],
                              ),
                            ),
                          ],
                        );
                      });
                } else {
                  //บันทึกสิ่งที่ป้อนลง ShaerPreference แล้วกลับไปหน้า HomeUI

                }
              },
              child: Text(
                'บันทึก',
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(
                  MediaQuery.of(context).size.width * 0.7,
                  50.0,
                ),
                primary: Colors.green[700],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
