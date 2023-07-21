import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class InfiniteScrollScreen extends StatefulWidget {

  static const String name = 'infinite_screen'; 

  const InfiniteScrollScreen({super.key});

  @override
  State<InfiniteScrollScreen> createState() => _InfiniteScrollScreenState();
}

class _InfiniteScrollScreenState extends State<InfiniteScrollScreen> {

  List<int> imageIds = [1, 2, 3, 4, 5, 6];
  final ScrollController scrollController = ScrollController();
  bool isLoading = false;
  bool isMounted = true;
  
  Future loadNextPage() async{

    if(isLoading) return;
    isLoading = true;
    setState(() {});

    await Future.delayed(const Duration(seconds:2 ));

    addFiveImages();
    isLoading = false;

    if ( !isMounted ) return;

    setState(() {});

    //mover el scroll

  }

  void addFiveImages(){
    final lastId = imageIds.last;
    imageIds.addAll(
      [1, 2, 3, 4, 5, 6].map((e) => lastId + e)
    );
  }

  Future<void> onRefresh() async {
    isLoading = true;
    setState(() {});

    await Future.delayed(const Duration(seconds: 3));
    if ( !isMounted ) return;

    isLoading = false;
    final lastId = imageIds.last;
    imageIds.clear();
    imageIds.add(lastId + 1);
    addFiveImages();

    setState(() {});
  }

  @override
  void initState() {
    super.initState();

    scrollController.addListener(() {
      if( (scrollController.position.pixels + 500) >= scrollController.position.maxScrollExtent){
        //load next page
        loadNextPage();
      }
    });

  }

  @override
  void dispose() {
    scrollController.dispose();
    isMounted = false;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: const Text('Infinite Scroll')),
      backgroundColor: Colors.black,
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        child: RefreshIndicator(
          edgeOffset: 10,
          strokeWidth: 2,
          onRefresh: onRefresh  ,
          child: ListView.builder(
            physics: const BouncingScrollPhysics( ),
            itemCount: imageIds.length,
            controller: scrollController,
            itemBuilder:(context, index) {
              return  FadeInImage(
                width: double.infinity,
                height: 300,
                fit: BoxFit.cover,
                placeholder: const AssetImage('assets/images/jar-loading.gif'),
                image: NetworkImage('https://picsum.photos/id/${ imageIds[index] }/500/300'),
              );
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.pop(),
        // child: const Icon(Icons.arrow_back),
        child: isLoading 
        ? FadeInRight(
          child: SpinPerfect(
            infinite: true,
            child: const Icon(Icons.refresh_rounded),
          ),
        )
        : FadeIn(child: const Icon(Icons.arrow_back_ios_new_outlined)),
      ),
    );
  }
}