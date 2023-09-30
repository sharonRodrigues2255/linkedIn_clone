import 'package:flutter/material.dart';
import 'package:linkedin_clone/utils/contants/colors.dart';
import 'package:linkedin_clone/utils/contants/contant_sizes.dart';
import 'package:linkedin_clone/utils/contants/profile_data.dart';

TextEditingController textEditingController = TextEditingController();

ValueNotifier textnotifier = ValueNotifier("");

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final users = [];
    users.addAll(
      Profile.invitations.map((e) => e["name"]).toList(),
    );

    return Scaffold(
        appBar: AppBar(
          title: Container(
            height: 40,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
            child: TextFormField(
              onChanged: (value) {
                textnotifier.value = textEditingController.text;
              },
              controller: textEditingController,
              autofocus: true,
              decoration: InputDecoration(
                  hintText: "Search",
                  suffixIcon: Icon(
                    Icons.qr_code_scanner_rounded,
                    color: kblack,
                  ),
                  contentPadding: EdgeInsets.all(10),
                  filled: true,
                  fillColor: Color.fromARGB(255, 242, 240, 240),
                  border: OutlineInputBorder(borderSide: BorderSide.none)),
            ),
          ),
        ),
        body: ValueListenableBuilder(
            valueListenable: textnotifier,
            builder: (context, value, _) {
              print(users);
              print(value);
              List names = users
                  .where((element) =>
                      element.toLowerCase().contains(value.toLowerCase()))
                  .toList();
              ;
              return ListView.builder(
                  itemCount: names.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: Row(
                        children: [
                          Icon(
                            Icons.search,
                            size: 15,
                          ),
                          width20,
                          Container(child: Text(names[index])),
                        ],
                      ),
                    );
                  });
            }));
  }
}
