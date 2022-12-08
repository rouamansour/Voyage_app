import '../model/contact.model.dart';
import '../utils/contact.database.dart';

class ContactService {
  Future<List<Contact>> listeContacts() async {
    List<Map<String, dynamic>> contacts = await ContactDatabase.rescuperer();
    return contacts.map((item) => Contact.fromJson(item)).toList();
  }

  //methode d'ajout contact du service permettant d'inserrer un contact
  Future<bool> ajouterContact(Contact c) async {
    int res = await ContactDatabase.inserer(c);
    return res > 0 ? true : false;
  }

  //methode modifier contact du service permettant d'inserrer un contact
  Future<bool> modifierContact(Contact c) async {
    int res = await ContactDatabase.modifier(c);
    return res > 0 ? true : false;
  }

  //methode supprimer contact du service permettant d'inserrer un contact
  Future<bool> supprimerContact(Contact c) async {
    int res = await ContactDatabase.supprimer(c);
    return res > 0 ? true : false;
  }
}
