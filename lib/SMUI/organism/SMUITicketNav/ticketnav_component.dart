import 'package:angular/angular.dart';
import 'package:support_manager_client/SMUI/molecules/SMUITicket/ticket_component.dart';

@Component(
  selector: 'SMUITicketNav',
  templateUrl: 'ticketnav_component.html',
  styleUrls: const['ticketnav_component.css'],
  directives: const[CORE_DIRECTIVES, TicketComponent],
)
class TicketNavComponent{
  @Input()
  List<Ticket> tickets;
}

class Ticket{
  String id;
  String name;
  String timeStart;
}