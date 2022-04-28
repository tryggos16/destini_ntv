import 'story.dart';

class StoryBrain {
  final List<Story> _data = [
    Story(
        'Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: "Need a ride, boy?".',
        'I\'ll hop in. Thanks for the help!',
         'Better ask him if he\'s a murderer first.'),
    Story(
        'He nods slowly, unphased by the question.',
        'At least he\'s honest. I\'ll climb in.',
        'Wait, I know how to change a tire.'),
    Story(

        'As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.',
        'I love Elton John! Hand him the cassette tape.',
        'It\'s him or me! You take the knife and stab him.'),
    Story(

        'What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?',
        'Restart',
         ''),
    Story(

        'As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.',
        'Restart',
         ''),
    Story(

        'You bond with the murderer while crooning verses of "Can you feel the love tonight". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: "Try the pier".',
        'Restart',
        '')
  ];
  int _storyNum = 0;

  String getStory() {
    return _data[_storyNum].storyTitle;
  }

  String getChoice1() {
    return _data[_storyNum].choice1;
  }

  String getChoice2() {
    return _data[_storyNum].choice2;
  }

  void nextStory(int choice) {
    if (choice != 1 && choice != 2) {
      throw new Exception('Invalid choice. Expected 1 or 2.');
    }

    switch (_storyNum) {
      case 0:
        _storyNum = choice == 1 ? 2 : 1;
        break;
      case 1:
        _storyNum = choice == 1 ? 2 : 3;
        break;
      case 2:
        _storyNum = choice == 1 ? 5 : 4;
        break;
      case 3:
      case 4:
      case 5:
        restart();
        break;
      default:
        throw new Exception('Invalid story number.');
    }
  }

  void restart() {
    _storyNum = 0;
  }

  bool shouldBeVisible() {
    return _storyNum >= 0 && _storyNum < 3;
  }
}