import 'package:esay_localization_example/lang_setting.dart';
import 'package:esay_localization_example/product.dart';
import 'package:esay_localization_example/ui_card.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class HomeUi extends StatefulWidget {
  const HomeUi({super.key});

  @override
  State<HomeUi> createState() => _HomeUiState();
}

class _HomeUiState extends State<HomeUi> {


  @override
  Widget build(BuildContext context) {
    List<Product> prducts = [
      Product(
        image: 'assets/images/unsplash_salad.jpg',
        name: 'salad'.tr(),
        description: 'fresh_vegtable_saled'.tr(),
        auther: 'shaimaa'.tr(),
        created: '${DateTime.now().toLocal()}',
      ),
      Product(
        image: 'assets/images/unsplash_rice.jpg',
        name: 'Rice'.tr(),
        description: 'fresh_rice'.tr(),
        auther: 'shaimaa'.tr(),
        created: '${DateTime.now().toLocal()}',
      ),
      Product(
        image: 'assets/images/unsplash_eggs.jpg',
        name: 'Eggs'.tr(),
        description: 'white_eggs'.tr(),
        auther: 'shaimaa'.tr(),
        created: '${DateTime.now().toLocal()}',
      )
    ];

    return Scaffold(
      appBar: AppBar(
         title:  Text('Products_list'.tr()),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (_){ return LangSetting () ;})).then((value) {
               setState(() {
               });
            });
          }, icon: Icon(Icons.language))
        ],
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10 , vertical: 20),
          child: ListView.builder(
              itemCount: prducts.length,
              itemBuilder: (BuildContext c, int index) {
                return UiCard(image: prducts[index].image,
                    name: prducts[index].name,
                     description:prducts[index]. description, auther:prducts[index]. auther,
                    created: prducts[index].created);
              })
      ),
    );
  }
}
