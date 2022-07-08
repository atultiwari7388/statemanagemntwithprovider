import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/favorite_provider.dart';

class MyFavScreen extends StatefulWidget {
  const MyFavScreen({Key? key}) : super(key: key);

  @override
  State<MyFavScreen> createState() => _MyFavScreenState();
}

class _MyFavScreenState extends State<MyFavScreen> {
  @override
  Widget build(BuildContext context) {
    final favoriteProvider = Provider.of<FavoriteItemProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("My Fav List"),
        centerTitle: true,
        elevation: 1.0,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: favoriteProvider.selectedItems.length,
              itemBuilder: (context, index) {
                return Consumer<FavoriteItemProvider>(
                  builder: (_, favoriteItemProviderValue, child) {
                    return ListTile(
                      onTap: () {
                        if (favoriteItemProviderValue.selectedItems
                            .contains(index)) {
                          favoriteItemProviderValue.removeItems(index);
                        } else {
                          favoriteItemProviderValue.addItems(index);
                        }
                      },
                      title: Text("Item $index"),
                      trailing: Icon(
                        favoriteItemProviderValue.selectedItems.contains(index)
                            ? Icons.check_circle
                            : Icons.check_circle_outline,
                      ),
                    );
                  },
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
