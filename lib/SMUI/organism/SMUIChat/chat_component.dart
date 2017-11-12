import 'package:angular/angular.dart';
import 'package:support_manager/SMUI/molecules/SMUIMessage/message_component.dart';

@Component(
  selector: 'SMUIChat',
  templateUrl: 'chat_component.html',
  styleUrls: const['chat_component.css',],
  directives: const[MessageComponent, CORE_DIRECTIVES]
)
class ChatComponent{
  @Input()
  List<Message> messages;
}


class Message{
  bool owner;
  String name;
  String payload;
  String time;
}