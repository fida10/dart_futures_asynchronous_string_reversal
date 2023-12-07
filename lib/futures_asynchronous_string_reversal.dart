/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

export 'src/futures_asynchronous_string_reversal_base.dart';

/*
3 Practice Question: Asynchronous String Reversal

Task: Implement a function reverseStringsAsync that takes a 
list of strings and returns a Future<List<String>>, reversing each string asynchronously.
 */

Future<List<String>> reverseStringsAsync(List<String> input) async {
  List<String> ans = [];
  await for (var indivChunk in Stream.fromIterable(input)) { //async for loop with a stream
    ans.add(indivChunk.split('').reversed.join()); //string reversal
  }

  return ans;
}
