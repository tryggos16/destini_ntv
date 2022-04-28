import 'story.dart';

class StoryBrain {

   List<Story> storydata = [
    Story(
      'you come home from work',
      'play games',
      'home work'
    ),
    Story(
      'you are to lazy to do your home work, what should you do instead?',
      'watch the stuff you are trying to learn on youtube',
      'something that involves my butt '
    ),
    Story(
        'you start up the pc',
        'do your home work?',
        'bail'),
    Story(
        '''you done this so many times that your butt has grown too strong and you tear through the sofa 
                
                    6 feet under''',
        'Restart',
         ''),
    Story(
        'you thought about your choices',
        'Restart',
         ''),
    Story(
        "you didn't do your home work, but you watch some... ",
        'Restart',
        '')


  ];

   int storyNum = 0;

   String getStory() {
     return storydata[storyNum].storyTitle;
   }

  String getstuff1(){
    return storydata[storyNum].storyTitle;
  }

  String getChoice1() {
    return storydata[storyNum].choice1;
  }

  String getChoice2() {
    return storydata[storyNum].choice2;
  }

  void nextStory(int choice) {
    if (choice != 1 && choice != 2) {
      throw Exception('Invalid choice. Expected 1 or 2.');
    }

    switch (storyNum) {
      case 0:
        storyNum = choice == 1 ? 2 : 1;
        break;
      case 1:
        storyNum = choice == 1 ? 2 : 3;
        break;
      case 2:
        storyNum = choice == 1 ? 5 : 4;
        break;
      case 3:
      case 4:
      case 5:
        restart();
        break;
      default:
        throw Exception('Invalid story number.');
    }
  }

  void restart() {
    storyNum = 0;
  }

  bool shouldBeVisible() {
    return storyNum >= 0 && storyNum < 3;
  }
}