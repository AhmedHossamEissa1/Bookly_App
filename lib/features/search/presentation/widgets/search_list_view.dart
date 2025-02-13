import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bookly_app/core/utils/widgets/custom_error_widget.dart';
import 'package:bookly_app/features/home/manager/new_books_cubit/new_books_cubit.dart';
import 'package:bookly_app/features/home/manager/new_books_cubit/new_books_states.dart';
import 'package:bookly_app/features/home/presentation/widgets/best_sellar_list_view_item.dart';

class SearchListView extends StatefulWidget {
  const SearchListView({super.key});

  @override
  _SearchListViewState createState() => _SearchListViewState();
}

class _SearchListViewState extends State<SearchListView> {
  final TextEditingController _searchController = TextEditingController();
  String searchQuery = '';

  void _performSearch() {
    setState(() {
      searchQuery = _searchController.text.toLowerCase();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.8, // Ensures proper layout
      child: Column(
        children: [
          // Search Bar with Button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width *
                      0.7, // ✅ Set width for TextField
                  child: TextField(
                    controller: _searchController,
                    decoration: InputDecoration(
                      hintText: 'Enter book title...',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                  ),
                ),
                SizedBox(
                    width: 8), // ✅ Adds spacing between TextField and button
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: _performSearch,
                ),
              ],
            ),
          ),

          // Books List
          Flexible(
            // ✅ Changed from Expanded to Flexible to prevent height issues
            child: BlocBuilder<NewBooksCubit, NewBooksStates>(
              builder: (context, state) {
                if (state is NewBooksSuccess) {
                  final filteredBooks = state.books
                      .where((book) => book.volumeInfo.title!
                          .toLowerCase()
                          .contains(searchQuery))
                      .toList();

                  return filteredBooks.isNotEmpty
                      ? ListView.builder(
                          padding: EdgeInsets.zero,
                          itemCount: filteredBooks.length,
                          itemBuilder: (context, index) {
                            return BestSellarListViewItem(
                              bookModel: filteredBooks[index],
                            );
                          },
                        )
                      : Center(child: Text('No books found'));
                } else if (state is NewBooksFail) {
                  return CustomErrorWidget(errorMessage: state.errorMessage);
                } else {
                  return Center(child: CircularProgressIndicator());
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }
}
