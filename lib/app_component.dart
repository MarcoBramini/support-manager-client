import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';

import 'package:support_manager_client/SMUI/organism/SMUIChat/chat_component.dart';
import 'package:support_manager_client/SMUI/organism/SMUITicketNav/ticketnav_component.dart';
import 'package:support_manager_client/services/clientRPC.dart';


// AngularDart info: https://webdev.dartlang.org/angular
// Components info: https://webdev.dartlang.org/components

@Component(
  selector: 'my-app',
  styleUrls: const ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: const [materialDirectives, ChatComponent, TicketNavComponent],
  providers: const [materialProviders],
)
class AppComponent {
  ClientRPC server = new ClientRPC()..doLogin("test@test.it", "test");

  List<Message> messages = new List<Message>()
    ..add(new Message()
      ..owner = true
      ..name = "Marco"
      ..payload = "Ciao sono Marco."
      ..time = "01:03")..add(new Message()
      ..owner = false
      ..name = "Mario"
      ..payload = '''
      Buongiorno,<br/>
- si è ripresentato<br/>
- è sparito il calendario<br/>
- molti utenti stanno riscontrando<br/>
- rinnovo la richiesta di direzioni<br/>
      '''
      ..time = "01:04")..add(new Message()
      ..owner = true
      ..name = "Marco"
      ..payload = "Ah ok."
      ..time = "01:05");

  List<Ticket> tickets = new List<Ticket>()
    ..add(new Ticket()
      ..id = "1"
      ..name = "Mario"
      ..timeStart = "01:03")
    ..add(new Ticket()
      ..id = "2"
      ..name = "Marco"
      ..timeStart = "01:04");
}