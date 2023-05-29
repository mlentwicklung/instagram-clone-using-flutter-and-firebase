import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone1/utils/colors.dart';
import 'package:instagram_clone1/widgets/post_card.dart';

class FeedScreen extends StatefulWidget {
  const FeedScreen({Key? key});

  @override
  State<FeedScreen> createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  void signUserOut() async {
    // final GoogleSignIn googleSignIn = GoogleSignIn();
    await FirebaseAuth.instance.signOut();
    // await googleSignIn.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mobileBackgroundColor,
        centerTitle: false,
        title: SvgPicture.asset(
          'assets/images/instagram.svg',
          color: blackColor,
          height: 50,
        ),
        actions: [
          IconButton(
            onPressed: () {
              signUserOut();
            },
            icon: Icon(
              Icons.messenger_outline,
              color: blackColor,
            ),
          )
        ],
      ),
      body: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
        stream: FirebaseFirestore.instance
            .collection('posts')
            .orderBy('datePublished', descending: true)
            .snapshots(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
            // Display a message or widget when there are no posts available.
            return Center(
              child: Text('No posts available'),
            );
          } else {
            return ListView.builder(
              itemCount: snapshot.data!.docs.length,
              itemBuilder: (context, index) =>
                  PostCard(snap: snapshot.data!.docs[index].data()),
            );
          }
        },
      ),
    );
  }
}


// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:instagram_clone1/utils/colors.dart';
// import 'package:instagram_clone1/widgets/post_card.dart';

// class FeedScreen extends StatefulWidget {
//   const FeedScreen({super.key});

//   @override
//   State<FeedScreen> createState() => _FeedScreenState();
// }

// class _FeedScreenState extends State<FeedScreen> {
//   void signUserOut() async {
//     // final GoogleSignIn googleSignIn = GoogleSignIn();
//     await FirebaseAuth.instance.signOut();
//     // await googleSignIn.signOut();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: mobileBackgroundColor,
//           centerTitle: false,
//           title: SvgPicture.asset(
//             'assets/images/instagram.svg',
//             color: blackColor,
//             height: 50,
//           ),
//           actions: [
//             IconButton(
//                 onPressed: () {
//                   signUserOut();
//                 },
//                 icon: Icon(
//                   Icons.messenger_outline,
//                   color: blackColor,
//                 ))
//           ],
//         ),
//         body: StreamBuilder(
//             stream: FirebaseFirestore.instance
//                 .collection('posts')
//                 .orderBy('datePublished', descending: true)
//                 .snapshots(),
//             builder: (context,
//                 AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot) {
//               if (snapshot.connectionState == ConnectionState.waiting) {
//                 return const Center(
//                   child: CircularProgressIndicator(),
//                 );
//               }
//               return ListView.builder(
//                 itemCount: snapshot.data!.docs.length,
//                 itemBuilder: (context, index) =>
//                     PostCard(snap: snapshot.data!.docs[index].data()),
//               );
//             }));
//   }
// }
