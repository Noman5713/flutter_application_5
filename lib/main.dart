import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Lab06());
}

class Lab06 extends StatelessWidget {
  const Lab06({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Advanced UI',
      home: Scaffold(
          appBar: AppBar(
            title: Text("Advance UI"),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                CachedNetworkImage(
                  imageUrl: "http://via.placeholder.com/350x150",
                  placeholder: (context, url) => CircularProgressIndicator(),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                ),
                Image.network(
                    "https://images.unsplash.com/photo-1635805737707-575885ab0820?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                Image.network(
                    "https://images.unsplash.com/photo-1635805739892-ab7b431400f7?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                Image.network(
                    "https://images.unsplash.com/photo-1635805739892-ab7b431400f7?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
              ],
            ),
          )),
    );
  }
}
