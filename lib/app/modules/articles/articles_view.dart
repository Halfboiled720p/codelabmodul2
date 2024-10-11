import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'articles_controller.dart';

class ArticlesView extends GetView<ArticlesController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Articles'),
      ),
      body: Obx(() {
        if (controller.articles.isEmpty) {
          return Center(child: CircularProgressIndicator());
        }
        return ListView.builder(
          itemCount: controller.articles.length,
          itemBuilder: (context, index) {
            var article = controller.articles[index];
            return ListTile(
              leading: Image.network(article['urlToImage'], width: 100, fit: BoxFit.cover),
              title: Text(article['title']),
              subtitle: Text(article['author']),
              onTap: () {
                Get.toNamed('/webview', arguments: article['url']);
              },
            );
          },
        );
      }),
    );
  }
}
