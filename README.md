การรันโปรเจคนี้เบื้องต้น
1.รันคำสั่ง dart run build_runner build --delete-conflicting-outputs เพื่อสร้างไฟล์ Model
2.ในไฟล์ที่ชื่อว่า url_config.dart ของ Path lib\api\url_config.dart แก้ไขชื่อตัวแปร clientId และ clientSecret ตามที่เราลงทะเบียน
3.เมื่อเปิดแอปมา จะมีให้ login เฉพาะของ Spotify SDK หลัง Login จะสามารถเข้าใช้งานแอปได้ตามปกติ

รายละเอียดแอป
Design pattern : MVVM
state managment : GetX
