import 'package:cari_hotel/theme.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/detail.png'),
          Positioned(
            left: 20,
            top: 40,
            child: Container(
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(200),
                color: Colors.white.withOpacity(0.25),
              ),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.chevron_left, size: 18),
              ),
            ),
          ),
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Padding(
              padding: EdgeInsets.only(top: 250),
              child: Container(
                height: 530,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20),
                      Text(
                        'Villa Imah Seniman',
                        style: header2.copyWith(fontSize: 22),
                      ),
                      SizedBox(height: 2),
                      Text('Jl Kolonel Masturi No. 8, Bandung'),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Icon(Icons.star_rounded, size: 16, color: starColor),
                          Icon(Icons.star_rounded, size: 16, color: starColor),
                          Icon(Icons.star_rounded, size: 16, color: starColor),
                          Icon(Icons.star_rounded, size: 16, color: starColor),
                          Icon(Icons.star_rounded, size: 16, color: greyColor),
                        ],
                      ),
                      SizedBox(height: 20),
                      Text('Listing Aget', style: header2),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Image.asset(
                            'assets/list_agent1.png',
                            width: 50,
                          ),
                          SizedBox(width: 12),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Kezia'),
                              Text('Receptionist', style: subTitle1),
                            ],
                          ),
                          Spacer(),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.message),
                            color: primaryColor,
                            iconSize: 20,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.call),
                            color: primaryColor,
                            iconSize: 20,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.room),
                            color: primaryColor,
                            iconSize: 20,
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Text('Facilities & Overview', style: header2),
                      SizedBox(height: 10),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        child: Row(
                          children: [
                            FacilitiesCard(
                              image: 'assets/facilities1.png',
                              text: 'Ballroom',
                            ),
                            FacilitiesCard(
                              image: 'assets/facilities2.png',
                              text: 'Ballroom',
                            ),
                            FacilitiesCard(
                              image: 'assets/facilities3.png',
                              text: 'Ballroom',
                            ),
                            FacilitiesCard(
                              image: 'assets/facilities1.png',
                              text: 'Ballroom',
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Text('Description', style: header2),
                      SizedBox(height: 10),
                      ExpandableText(
                        'Imah Seniman is the perfect place for the ultimate vacation experience ever. with us here with our Resort & Villa, Cafe & Resto, Outbound, 20 minutes by driving to Kampung Gajah Recreation Park, Kampung Daun, Farm House, De Ranch, Dusun Bambu, Begonia Flower Garden & Lembang Tofu Milk',
                        style: TextStyle(color: Color(0xff666666)),
                        expandText: 'Show more',
                        collapseText: 'Show less',
                        linkColor: primaryColor,
                        collapseOnTextTap: true,
                        maxLines: 3,
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Start From',
                                style: TextStyle(
                                  color: Color(0xff333333),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                'Rp. 567.000',
                                style: TextStyle(
                                  fontSize: 24,
                                  color: primaryColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Container(
                            width: 160,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Text('Book Now'),
                              style: ElevatedButton.styleFrom(
                                primary: primaryColor,
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FacilitiesCard extends StatelessWidget {
  final String image, text;
  const FacilitiesCard({
    Key key,
    this.image,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      width: 100,
      height: 110,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.06),
            offset: Offset(3, 3),
            blurRadius: 5,
          )
        ],
      ),
      child: Column(
        children: [
          Image.asset(image),
          SizedBox(height: 5),
          Text(
            text,
          )
        ],
      ),
    );
  }
}
