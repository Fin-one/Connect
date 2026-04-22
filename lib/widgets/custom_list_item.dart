import 'package:flutter/material.dart';
import '../models/item_data.dart';
import '../pages/detail_page.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomListItem extends StatelessWidget {
  final ItemData item;
  const CustomListItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
      child: Container(
        decoration: BoxDecoration(
          color: isDark ? Colors.grey[900] : Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(isDark ? 0.3 : 0.05),
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            borderRadius: BorderRadius.circular(15),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetailPage(item: item)),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                spacing: 10,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          spacing: 10,
                          children: [
                            Text(
                              item.time,
                              style: GoogleFonts.palanquinDark(
                                fontSize: 11,
                                color: isDark
                                    ? Colors.grey[500]
                                    : Colors.grey[700],
                              ),
                            ),
                            Text(
                              'каб. ${item.room}',
                              style: GoogleFonts.palanquinDark(
                                fontSize: 10,
                                color: isDark
                                    ? Colors.grey[500]
                                    : Colors.grey[700],
                              ),
                            ),
                          ],
                        ),

                        Text(
                          item.title,
                          style: GoogleFonts.palanquinDark(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        if (item.homeWork != '')
                          Text(
                            item.homeWork,
                            maxLines: 4,
                            overflow: TextOverflow.ellipsis,
                            style: GoogleFonts.palanquinDark(
                              fontSize: 13,
                              color: isDark
                                  ? Colors.grey[400]
                                  : Colors.grey[600],
                            ),
                          ),
                      ],
                    ),
                  ),
                  if (item.wasNot)
                    Container(
                      width: 48,
                      height: 48,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: isDark
                            ? Color.fromARGB(255, 50, 50, 50)
                            : Colors.grey[200],
                      ),
                      child: Text(
                        "Н",
                        style: GoogleFonts.palanquinDark(
                          fontSize: 23,
                          color: Colors.red[500],
                        ),
                      ),
                    ),

                  if (item.mark != '')
                    Container(
                      width: 48,
                      height: 48,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: isDark
                            ? Color.fromARGB(255, 50, 50, 50)
                            : Colors.grey[200],
                      ),
                      child: Text(
                        item.mark,
                        style: GoogleFonts.roboto(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
