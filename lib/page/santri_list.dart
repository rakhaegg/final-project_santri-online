import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:santri_online/platform.dart';
import 'package:santri_online/provider/santri_provider.dart';
import 'package:santri_online/service/api_service.dart';

class SantriList extends StatefulWidget {
  const SantriList({Key? key}) : super(key: key);

  @override
  _SantriListState createState() => _SantriListState();
}

class _SantriListState extends State<SantriList> {
  Widget _buildList(BuildContext context) {
    return Consumer<SantriProvider>(
      builder: (context, state, _) {
        if (state.state == ResultState.Loading) {
          return Container(
            margin: EdgeInsets.only(top: 200),
            child: Column(
              children: [
                Center(child: CircularProgressIndicator()),
                Text("Please Wait")
              ],
            ),
          );
        } else if (state.state == ResultState.HasData) {
          return ListView.builder(
            shrinkWrap: true,
            itemCount: state.result.data.length,
            itemBuilder: (context, index) {
              var santri = state.result.data[index];
              // return ListTile(
              //   leading: Text(santri.name),

              // );
              return Dismissible(
                key: UniqueKey(),
                onDismissed: (direction) {
                  
                  setState(() {
                    ApiService().deleteSantri(santri.id);
                    Provider.of<SantriProvider>(context);
                  });
                },
                background: Container(
                  color: Colors.red,
                ),
                child: ListTile(
                  title: Text(santri.name),
                ),
              );
            },
          );
        } else if (state.state == ResultState.NoData) {
          return Center(child: Text(state.message));
        } else if (state.state == ResultState.Error) {
          return Center(child: Text(state.message));
        } else {
          return Center(child: Text(''));
        }
      },
    );
  }

  handlreDismiess(DismissDirection direction, int index) {


  }
  Widget _buildAndroid(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News App'),
      ),
      body: _buildList(context),
    );
  }

  Widget _buildIos(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('News App'),
        transitionBetweenRoutes: false,
      ),
      child: _buildList(context),
    );
  }

  @override
  Widget build(BuildContext context) {
    return PlatformWidget(
      androidBuilder: _buildAndroid,
      iosBuilder: _buildIos,
    );
  }
}
