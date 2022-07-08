







// import 'package:flutter/material.dart';
// import 'package:state_management_provider/model/socer_list.model.dart';
// import 'package:state_management_provider/services/remote_service.dart';

// class NotifyListenerStatelessExample extends StatefulWidget {
//   const NotifyListenerStatelessExample({Key? key}) : super(key: key);

//   @override
//   State<NotifyListenerStatelessExample> createState() =>
//       _NotifyListenerStatelessExampleState();
// }

// class _NotifyListenerStatelessExampleState
//     extends State<NotifyListenerStatelessExample> {
//   List<SocerListModel>? socerListData;
//   var isLoading = false;

//   @override
//   void initState() {
//     super.initState();
//     fetchData();
//   }

//   void fetchData() async {
//     socerListData = RemoteService().getSocerListData() as List<SocerListModel>?;
//     if (socerListData != null) {
//       setState(() {
//         isLoading = true;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("NotifyListenerStatelessExample"),
//         centerTitle: true,
//         elevation: 1.0,
//       ),
//       body: ListView.builder(
//         itemCount: socerListData?.length,
//         itemBuilder: (BuildContext context, int index) {
//           var data = socerListData?[index];
//           return ListTile(
//             title: Text(data?.matchName),
//             subtitle: Text(data?.matchTime),
//             trailing: Text(data?.matchStatus),
//           );
//       ),
//     );
//   }
// }
