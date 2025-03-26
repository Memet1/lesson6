import 'dart:ffi';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

Widget ProductCard(String imageURL, String name, Double price) {
  return Container(
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(color: Color.fromRGBO(243, 243, 243, 1)),
    child: Column(
      children: <Widget>[
        Image.network(
          imageURL,
        ),
        Text(
          name,
          style: GoogleFonts.inter(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        SizedBox(height: 25),
        Text(
          '\$$price',
          style: GoogleFonts.inter(
            color: Color.fromRGBO(47, 123, 178, 1),
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(0, 15, 0, 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFD9D9D9),
                ),
                child: Text(
                  'MORE INFO',
                  style: GoogleFonts.inter(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF2F7BB2),
                ),
                child: Text(
                  'BUY NOW',
                  style: GoogleFonts.inter(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
