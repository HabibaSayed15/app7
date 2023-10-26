import 'package:flutter/material.dart';
import 'package:flutter1/color.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Center(child: Text("Find your News")),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 45,
              child: TextFormField(
                style: const TextStyle(color: Colors.white),
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  errorBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(15)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(15)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(15)),
                  filled: true,
                  fillColor: const Color.fromARGB(255, 59, 58, 58),
                  label: Text("saerch", style: TextStyle(color: Appco.text)),
                  prefixIcon: Icon(Icons.search_sharp, color: Appco.text),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                "total results : 10",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return ListTile(
                      tileColor: const Color.fromARGB(255, 59, 58, 58),
                      leading: ClipRRect(
                        child: Image.asset(
                          "assets/download.jpg",
                          height: 150,
                          width: 120,
                          fit: BoxFit.cover,
                        ),
                      ),
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "plastaien stay perfect",
                            style: TextStyle(color: Colors.white),
                          ),
                          const Text(
                            "abu obaida",
                            style: TextStyle(color: Colors.white),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.menu,
                                    color: Colors.white,
                                  )),
                              const Text(
                                "Read",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          )
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      height: 20,
                    );
                  },
                  itemCount: 4),
            )
          ],
        ),
      ),
    ));
  }
}
