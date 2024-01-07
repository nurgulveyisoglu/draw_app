import 'package:draw_app/view_model/main_page_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    MainViewModel viewModel = Provider.of<MainViewModel>(
      context,
      listen: false,
    );
    return Scaffold(
      appBar: AppBar(
        title: Text("Keşfet"),
      ),
      // body: _buildBody(),
      // floatingActionButton: FloatingActionButton(
      //   child: Icon(Icons.add),
      //   onPressed: () {
      //     viewModel.openAddCharacterPage(context);
      //   },
      // ),
    );
  }

  // Widget _buildBody() {
  //   return Consumer<MainViewModel>(
  //     builder: (context, viewModel, child) => ListView.builder(
  //       itemCount: viewModel.characters.length,
  //       itemBuilder: (BuildContext context, int index) {
  //         return ListTile(
  //           title: Text(viewModel.characters[index].name),
  //           subtitle: Text(viewModel.characters[index].gender),
  //         );
  //       },
  //     ),
  //   );
  // }
}
