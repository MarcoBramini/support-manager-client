import 'package:angular/angular.dart';

@Component(
  selector: 'SMUITicket',
  templateUrl: 'ticket_component.html',
  styleUrls: const['ticket_component.css'],
)
class TicketComponent{
  @Input()
  String id;
  @Input()
  String name;
  @Input()
  String timeStart;
}