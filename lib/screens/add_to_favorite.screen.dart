import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management_provider/screens/my_fav_screen.dart';

import '../provider/favorite_provider.dart';

class AddToFavoriteExample extends StatefulWidget {
  const AddToFavoriteExample({Key? key}) : super(key: key);

  @override
  State<AddToFavoriteExample> createState() => _AddToFavoriteExampleState();
}

class _AddToFavoriteExampleState extends State<AddToFavoriteExample> {
  // List<int> selectedItem = [];

  @override
  Widget build(BuildContext context) {
    print("build");
    // final favoriteProvider = Provider.of<FavoriteItemProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("List of Items"),
        elevation: 1.0,
        centerTitle: true,
        actions: [
          InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyFavScreen(),
                  ),
                );
              },
              child: Icon(Icons.favorite)),
          SizedBox(width: 20),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 100,
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
