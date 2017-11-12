import 'package:angular/angular.dart';

@Component(
  selector: 'SMUIMessage',
  templateUrl: 'message_component.html',
  styleUrls: const['message_component.css'],

)
class MessageComponent{
  @Input()
  @HostBinding('class.owned')
  bool owner;
  @Input()
  String name;
  @Input()
  String payload;
  @Input()
  String time;
}