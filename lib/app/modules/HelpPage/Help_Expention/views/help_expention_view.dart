import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:get/get.dart';

import '../../../../../Custom_widget/container_heigh.dart';
import '../controllers/help_expention_controller.dart';

class HelpExpentionView extends GetView<HelpExpentionController> {
  const HelpExpentionView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: (BoxDecoration(color: Colors.black)),
                height: getMediaQueryHeight(context: context, value: 150),
                width: getMediaQueryWidth(
                    context: context, value: double.infinity),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Help Center",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      Container(
                        width: double.infinity,
                        height:
                            getMediaQueryHeight(context: context, value: 40),
                        decoration: BoxDecoration(
                            color: Color(0xffF6F5F6),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.5),
                                spreadRadius: 0.05,
                                blurRadius: 1,
                              )
                            ],
                            borderRadius: BorderRadius.circular(9)),
                        child: Row(
                          children: [
                            SizedBox(
                              width: getMediaQueryWidth(
                                  context: context, value: 10),
                            ),
                            Icon(Icons.search),
                            Expanded(
                              flex: 3,
                              child: Padding(
                                padding: EdgeInsets.only(left: 15, top: 17),
                                child: TextFormField(
                                  keyboardType: TextInputType.text,
                                  decoration: InputDecoration(
                                    // hintStyle: GoogleFonts.poppins(
                                    //     color: Color(0xff707070),
                                    //     fontSize: 14,
                                    //     fontWeight: FontWeight.normal),
                                    border: InputBorder.none,
                                    hintText: "Order Number",
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Frequently Asked Questions",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 5,
                separatorBuilder: (context, index) => SizedBox(),
                itemBuilder: ((context, index) {
                  return Card(
                    child: ExpansionTile(
                      textColor: Colors.red,
                      iconColor: Colors.red,
                      title: Text("DEAL ZONE"),
                      childrenPadding: EdgeInsets.zero,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 12.0, right: 12.0, bottom: 12),
                          child: Text(
                            textAlign: TextAlign.justify,
                            "We currently deliver in Aanamalai, Agra, Ahmedabad, Alappuzha, Aler, Alibaug, Alwar, Ambarnath, Amtala, Anand, Anikorai, Ankleshwar, Arnala, Asansol, Athikunna, Athipalli, Aurangabad, Avanshi, Badlapur, Bahadurgarh, Bangalore, Bangarpet, Bawal, Bellevue, Bharuch, Bhiwadi, Bhongir, Bhuj, Boisar, Burdwan, Changodar, Chengalpattu, Chennai, Cherambadi, Cherambadi Tea division, Cherumulli, Chikkaballapura, Chikkatirupati, Chittoor, Coimbatore, Dharuhera, Diamond Harbour, Dindigul, Durgapur, Ernakulam, Erode, Faridabad, Gandhidham, Gandhinagar, Ghatkesar, Ghaziabad, Goa, Gobichettipalayam, Greater Noida, Gurgaon, Gwalior, Halishahar, Halol, Hassan, Himatnagar, Hindupur, Hooghly, Hoskote, Hosur, Howrah, Hyderabad, Ichhapur, Idukki, Jamnagar, Jangam, Jhajjar, Jhansi, Kalyan, Kamshet, Kanchipuram, Kankinara, Karad, Karjat, Karnal, Karur, Khandewla, Kil Kotagiri bazaar, Kochi, Kolar, Kolhapur, Kolkata, Kottayam, Kozhikode, Lavasa, Lonavla, Madurai, Mahabaleshwar, Mahabalipuram, Mandya, Manesar, Mathura, Meerut, Mehsana, Moradabad, Mulbagal, Mumbai, Munnar, Mysuru, Nadia, Nadiad, Naihati, Namakkal, Nashik, Navi Mumbai, Neemrana, Nellore, New Delhi, Noida, Ooty, Palakkad, Palamner, Palani, Palta, Palwal, Panchagani, Panipat, Pataudi, Pen, Pocharam, Pondicherry, Pune, Rajkot, Ramanagara, Rewari, Rohtak, Salem, Sanand, Sangagiri, Sangli, Satara, Sathyamangalam, Secunderabad, Shidlaghatta, Shyamnagar, Sohna, Sonipat, Station Ghanpur, Surendranagar, Tapukara, Thane, Tharapuram, Thirchgode, Thiruvananthapuram, Thrissur, Tiruppur, Tumkur, Udumalaipet, Uran, Vadodara, Vallparai, Vellore, Virar, Warangal, Yadagirigutta, and Yercaud.",
                            style: TextStyle(
                              letterSpacing: 0.5,
                              wordSpacing: 0.5,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
