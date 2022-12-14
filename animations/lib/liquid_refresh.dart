import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

class LiquidRefresh extends StatefulWidget {
  const LiquidRefresh({super.key});

  @override
  _LiquidRefreshState createState() => _LiquidRefreshState();
}

class _LiquidRefreshState extends State<LiquidRefresh> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final GlobalKey<LiquidPullToRefreshState> _refreshIndicatorKey =
      GlobalKey<LiquidPullToRefreshState>();

  static int refreshNum = 10;
  Stream<int> counterStream =
      Stream<int>.periodic(const Duration(seconds: 3), (x) => refreshNum);

  ScrollController? _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  static final List<String> _items = <String>[
    'A',
    'B',
    'C',
    'D',
    'E',
    'F',
    'G',
    'H',
    'I',
    'J',
    'K',
    'L',
    'M',
    'N',
    'O',
    'P',
    'Q',
    'R',
    'S',
    'T',
    'U',
    'V',
    'W',
    'X',
    'Y',
    'Z'
  ];
  Future<void> _handleRefresh() {
    final Completer<void> completer = Completer<void>();
    Timer(const Duration(seconds: 3), () {
      completer.complete();
    });
    setState(() {
      refreshNum = Random().nextInt(100);
    });
    return completer.future.then<void>((_) {
      ScaffoldMessenger.of(_scaffoldKey.currentState!.context)
          .showSnackBar(SnackBar(
        content: const Text('refresh complete'),
        action: SnackBarAction(
          label: 'retry',
          onPressed: () {
            _refreshIndicatorKey.currentState!.show();
          },
        ),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          title: Stack(
            children: <Widget>[
              const Align(
                alignment: Alignment(-1.0, 0.0),
                child: Icon(Icons.reorder),
              ),
              Align(
                alignment: const Alignment(-0.3, 0.0),
                child: Text('liquid refresh'),
              )
            ],
          ),
        ),
        body: LiquidPullToRefresh(
            key: _refreshIndicatorKey,
            onRefresh: _handleRefresh,
            showChildOpacityTransition: false,
            child: StreamBuilder<int>(
                stream: counterStream,
                builder: (context, snapshot) {
                  return ListView.builder(
                    padding: kMaterialListPadding,
                    itemCount: _items.length,
                    controller: _scrollController,
                    itemBuilder: (BuildContext context, int index) {
                      final String item = _items[index];
                      return ListTile(
                        isThreeLine: true,
                        leading: CircleAvatar(child: Text(item)),
                        title: Text('this item represents $item.'),
                        subtitle: Text(
                            'even more additional list item information appears on line three. ${snapshot.data}'),
                      );
                    },
                  );
                })));
  }
}
