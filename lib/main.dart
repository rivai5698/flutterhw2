import 'package:flutter/material.dart';
import 'package:untitled1/data/post_dto.dart';
import 'package:untitled1/data/user_dto.dart';

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
  Widget build(BuildContext context) {
    String text1="",text2="",text3="";
    var user = User(123, "thang", "02/02/2022", "05/06/1998", "/myava-123.png", "0859685545", "Ha Noi", "thangth@gmail.com", "123456");
    var post = <Post>[Post(12357, "Đôi bạn học rủ nhau góp tiền ‘khởi nghiệp’ bán ma túy", "26/08/2022", "content", ["imgUrl"], "postStatus", user.userId),Post(12368, "Cán cân sức mạnh Nga - Ukraine sau 6 tháng xung đột", "26/08/2022", "content", ["imgUrl"], "postStatus", user.userId),Post(12369, "Jordi Cruyff: 'Có Lewandowski, Barca sẽ đá sòng phẳng với Bayern'", "26/08/2022", "content", ["imgUrl"], "postStatus", user.userId)];
    for(Post post in post){
      print("Post url ${post.postId}: ${post.getUrl()} ");
    }
    text1 = "Post url ${post[0].postId}: ${post[0].getUrl()}";
    text2 = "Post url ${post[1].postId}: ${post[1].getUrl()}";
    text3 = "Post url ${post[2].postId}: ${post[2].getUrl()}";



    return  MaterialApp(
          home: Scaffold(
            appBar: AppBar(
              title: const Text("Flutter HW2"),
            ),
            body: SingleChildScrollView(
                  child: Center(
                      widthFactor: 300,
                      child: Column(
                        children: [
                          Text(
                            text1,
                            style: const TextStyle(
                              color: Colors.cyanAccent,
                              fontSize: 50,
                            ),
                          ),
                          const SizedBox(width: 20,),
                          Text(
                            text2,
                            style: const TextStyle(
                              color: Colors.green,
                              fontSize: 50,
                            ),
                          ),
                          const SizedBox(width: 20,),
                          Text(
                            text3,
                            style: const TextStyle(
                              color: Colors.yellowAccent,
                              fontSize: 50,
                            ),
                          ),
                        ],
                      )

                  ),
            )
          ),
    );
  }
}

String idGenerator() {
  final now = DateTime.now();
  return now.microsecondsSinceEpoch.toString();
}