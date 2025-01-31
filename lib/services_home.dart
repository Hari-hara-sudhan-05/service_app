import 'package:flutter/material.dart';
import 'package:mkce/widgets/custom_bottom_navbar.dart';
import 'package:mkce/widgets/services_widgets.dart';
import 'give_image_and_name.dart';


class ServicesHome extends StatelessWidget {
  const ServicesHome({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(10),
        child: AppBar(
          backgroundColor: Colors.deepPurple,
        ),

      ),
      bottomNavigationBar: CustomBottomNavbar(),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
            child: Row(
              children: [
                Icon(Icons.location_on_rounded, size: 30),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Nungambakkam",
                      style: TextStyle(fontSize: 22),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: Text(
                        "21/11 Kamarajapuram 1st street, Nungambakkam, Chennai-34.",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: services_usecase.length,
              itemBuilder: (context, index) {
                final service = services_usecase[index];
                return ServicesWidgets(img: service['image']!,service: service['name']!);
              },
            ),
          ),
        ],
      ),
    );
  }
}
