import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardWidget extends StatelessWidget {
  final String image;
  final String country;
  final String continent;
  final String language;

  const CardWidget({
    super.key,
    required this.image,
    required this.country,
    required this.continent,
    required this.language,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
      width: MediaQuery.of(context).size.width,
      height: 100,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white, // Changed to white
              border: Border.all(color: const Color(0xCC3B3B3B)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.6),
                  offset: const Offset(
                    0.0,
                    10.0,
                  ),
                  blurRadius: 10.0,
                  spreadRadius: -6.0,
                ),
              ],
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.all(15),
                width: 140,
                decoration: BoxDecoration(
                  color: Colors.white, // Changed to white
                  border: Border.all(color: const Color(0x803B3B3B)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.6),
                      offset: const Offset(
                        0.0,
                        10.0,
                      ),
                      blurRadius: 10.0,
                      spreadRadius: -6.0,
                    ),
                  ],
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                width: 130,
                child: Container(
                  margin: const EdgeInsets.only(top: 20, bottom: 20, right: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        country,
                        style: GoogleFonts.bellota(
                            color: Colors
                                .black, // Adjusted to match the white background
                            fontSize: 15,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        continent,
                        style: GoogleFonts.bellota(
                            color: Colors.black.withOpacity(
                                0.9), // Adjusted to match the white background
                            fontSize: 12,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        language,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.bellota(
                            color: Colors.black.withOpacity(
                                0.9), // Adjusted to match the white background
                            fontSize: 12,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
