import 'package:flutter/material.dart';
import 'package:searchfield/searchfield.dart';

class NavigationHeader extends StatelessWidget {
  const NavigationHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64,
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text("Home"),
          const Text("About"),
          const Text("Departments"),
          const Text("News"),
          const Text("events"),
          const Text("explore city"),
          const Text("pages"),
          SizedBox(
            width: 200,
            child: SearchField(
              suggestions: ["x"].map((e) => SearchFieldListItem(e)).toList(),
              suggestionState: Suggestion.expand,
              textInputAction: TextInputAction.next,
              hint: 'Search',
              hasOverlay: false,
              searchStyle: TextStyle(
                fontSize: 15,
                color: Colors.black.withOpacity(0.8),
              ),
              validator: (x) {
                if (!["x"].contains(x) || x!.isEmpty) {
                  return 'Please Enter a valid State';
                }
                return null;
              },
              searchInputDecoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black.withOpacity(0.8),
                  ),
                ),
                border: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                ),
              ),
              maxSuggestionsInViewPort: 6,
              itemHeight: 50,
              onSubmit: (x) {},
            ),
          )
        ],
      ),
    );
  }
}
