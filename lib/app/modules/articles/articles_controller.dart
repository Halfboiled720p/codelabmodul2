class ArticlesController extends GetxController {
  var articles = [].obs;

  @override
  void onInit() {
    super.onInit();
    fetchArticles();
  }

  void fetchArticles() {
    var data = {
      "status": {"status": "ok"},
      "articles": [
        {
          "id": 1,
          "author": "Lauren Forristal",
          "title": "Bye-bye bots: Altera's game-playing AI agents get backing from Eric Schmidt",
          "description": "Autonomous, AI-based players are coming to a gaming experience near you, and a new startup",
          "url": "https://techcrunch.com/2024/05/08/bye-bye-bots-alteras-game-playing-ai-agents-get-backing-from-eric-schmidt/",
          "urlToImage": "https://techcrunch.com/wp-content/uploads/2024/05/Minecraft-keyart.jpg?resize=1200,720",
          "publishedAt": "2024-05-08T15:14:57Z",
          "content": "Autonomous, AI-based players are coming to a gaming experience near you."
        },
        {
          "id": 2,
          "author": "Alex Wilhelm and Theresa Loconsolo",
          "title": "450M for Noname, two billion-dollar rounds, and good news for crypto startups",
          "description": "This morning on Equity, not only do we have good news for crypto founders.",
          "url": "https://techcrunch.com/2024/05/08/450m-for-noname-two-billion-dollar-rounds-and-good-news-for-crypto-startups/",
          "urlToImage": "https://techcrunch.com/wp-content/uploads/2023/07/GettyImages-942480316.jpg?resize=1200,835",
          "publishedAt": "2024-05-08T15:01:51Z",
          "content": "Good news, crypto founders: Venture capital activity is picking up."
        },
        {
          "id": 3,
          "author": "Kwi Ki Angie",
          "title": "Rekayasa Perangkat Lunak: Pengertian, Contoh, dan Penerapannya",
          "description": "Artikel tentang rekayasa perangkat lunak dan penerapannya.",
          "url": "https://kwikkiangie.ac.id/2023/09/19/rekayasa-perangkat-lunak-pengertian-contoh-dan-penerapannya/",
          "urlToImage": "https://kwikkiangie.ac.id/wp-content/uploads/2023/09/rekayasa-perangkat-lunak.jpg",
          "publishedAt": "2023-09-19T10:00:00Z",
          "content": "Rekayasa perangkat lunak adalah disiplin ilmu yang..."
        }
      ]
    };
    articles.value = data['articles'];
  }
}
