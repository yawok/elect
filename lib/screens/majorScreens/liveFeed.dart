import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import '../../models/voteCategories.dart';
import '../../services/voteList.dart';
import '../../state/vote.dart';
import '../../widgets/loading.dart';



class Results extends StatelessWidget {
  const Results({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    retrieveActiveVoteData(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor('#732424'),
        title: const Text("Live Feed"),
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/home');
          },
          icon: const Icon(Icons.home_outlined),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(3),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 20,
            child: resultsWidget(context)),
      ),
    );
  }

  Widget resultsWidget(BuildContext context) {
    return Consumer(
      builder: (context, voteState, child) {
        return charts.BarChart(
          retrieveVoteResults(context),
          animate: true,
        );
      },
    );
  }

  List<charts.Series<VoteData, String>> retrieveVoteResults(
      BuildContext context) {
    VoteCategory? activeVote = Provider.of<VoteState>(context).activeVote;

    /// Instance of VoteData Class
    List<VoteData> data = <VoteData>[];

    /// check if activeVote is not empty
    if (activeVote != null) {
      /// Loop trough the activeVotes
      for (var candidate in activeVote.candidates!) {
        candidate.forEach((key, value) {
          data.add(VoteData(key, value));
        });
      }
    } else {
      /// if activeVote isEmpty display the Loading Screen
      const Loading();
    }
    return [
      charts.Series<VoteData, String>(
          id: "Results",
          colorFn: (_, pos) {
            ///Display green if position of the bar is even
            if (pos! % 2 == 0) {
              return charts.MaterialPalette.green.shadeDefault;
            }

            ///Display blue if position of the bar is even
            else {
              return charts.MaterialPalette.blue.shadeDefault;
            }
          },

          /// Set X and Y Values
          domainFn: (VoteData vote, _) => vote.candidate,
          measureFn: (VoteData vote, _) => vote.total,
          data: data)
    ];
  }

  /// Retrieves Live Feed data from CloudFirestore
  /// Not Working @ the moment
  void retrieveActiveVoteData(BuildContext context) {
    final voteId = Provider.of<VoteState>(context, listen: false)
        .activeVote
        ?.voteCategoryId;
    retrieveMarkedVoteFromFirestore(voteId: voteId, context: context);
  }
}
