import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

// Firebase অপশনগুলো এখানে ইম্পোর্ট করতে হবে (যদি প্রয়োজন হয়)
// import 'firebase_options.dart';

void main() async {
  // নিশ্চিত করুন যে Flutter বাইন্ডিং শুরু হয়েছে
  WidgetsFlutterBinding.ensureInitialized();
  
  // Firebase শুরু করুন
  await Firebase.initializeApp(
    // options: DefaultFirebaseOptions.currentPlatform, // যদি firebase_options.dart ব্যবহার করেন
  );
  
  runApp(const OwlAssistantApp());
}

class OwlAssistantApp extends StatelessWidget {
  const OwlAssistantApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Owl Assistant',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const HomePage(),
      debugShowCheckedModeBanner: false, // ডিবাগ ব্যানার বন্ধ করার জন্য
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Owl Assistant'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // অ্যাপের লোগো দেখানোর জন্য
            Image.asset(
              'assets/images/logo.png',
              width: 200, // আপনার প্রয়োজনমতো সাইজ দিন
            ),
            const SizedBox(height: 20),
            const Text(
              'Welcome to Owl Assistant!',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              child: Text(
                'Your smart social posting companion.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
