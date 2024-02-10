# Έμπειρο Σύστημα Προτάσεων Διασκέδασης

## Περιγραφή

Το Σύστημα Προτάσεων Εστιατορίων και Διασκέδασης σε Prolog παρέχει ένα περιβάλλον για την αναζήτηση εστιατορίων και κέντρων διασκέδασης με βάση τις προτιμήσεις του χρήστη και την τοποθεσία του. Χρησιμοποιώντας τη γλώσσα προγραμματισμού Prolog, το σύστημα εκτελεί λογικές προτάσεις βασισμένες σε κανόνες που ορίζουν τις συνθήκες για κάθε είδος επιχείρησης και τοποθεσία.

## Υλοποίηση και Περιεχόμενα εργασίας

### Περιεχόμενα

e16163.pl: Το κύριο αρχείο του συστήματος, περιέχει τους κανόνες για την κατηγοριοποίηση των εστιατορίων και των τοποθεσιών, καθώς και τους κανόνες για την αναζήτηση προτάσεων βάσει των προτιμήσεων του χρήστη.

README.md: Το παρόν αρχείο, περιέχει πληροφορίες σχετικά με το σύστημα και τη χρήση του.

Output_example.png: Ένα παράδειγμα χρήσης του συστήματος

### Ανάλυση απαιτήσεων

Ερωτήσεις στον Χρήστη:

Το σύστημα θα ζητήσει από τον χρήστη να ορίσει τις προτιμήσεις του σχετικά με το είδος διασκέδασης, το κόστος, τη βαθμολογία, την περιοχή που μένει και την περιοχή που θέλει να επισκεφτεί, καθώς και το είδος των μεταφορικών μέσων που προτιμά.

Παρουσίαση Προτάσεων:

Το σύστημα θα επιστρέψει μια λίστα από επιλογές εστιατορίων και διασκέδασης που ταιριάζουν με τις προτιμήσεις του χρήστη, καθώς και πληροφορίες για τις διαθέσιμες επιλογές μεταφοράς προς αυτά τα μέρη.

### Ανάλυση κώδικα

Στο αρχείο e16163.pl βρίσκεται η λογική του συστήματος μας, εκεί βρίσκεται η βάση γνώσης αποτελούμενη από τις περιοχές και τα εστιατόρια με τις επιμέρους πληροφορίες του καθενός.

Εντός του κώδικα στο ίδιο αρχείο υπάρχουν οι κανόνες για το user input ( Κατηγορία, Βαθμολογία, Κόστος, Τοποθεσία, Τοποθεσίες, Μέσα μεταφοράς ).

Επίσης εντός υπάρχουν οι κανόνες για την εύρεση εστιατορίων και των μεθόδων μετακίνησης βάση στο User Input ενώ όταν γίνει το φιλτράρισμα γίνεται η εξαγωγή/print\* στην οθόνη με τα αποτελέσματα

\*Οι helpers είναι υπεύθυνοι για την εξαγωγή των δεδομένων/print στην οθόνη με μορφοποίηση.

Όλη η παραπάνω διαδικασία ενεργοποιείται με user Input, μέσω του recommendation.

## Πώς να Χρησιμοποιήσετε το Σύστημα

### Παράδειγμα χρήσης.

Με inputs : restaurant, none, none, marousi, monastiraki

```prolog
What type of entertainment are you interested in?
(e.g., club, bar, restaurant, theater): restaurant.

Suggested Cost (low, medium, high, or none): none.

Do you have any rating preferences? (1 to 5 or none): none.

Where are you staying? (e.g., pagrati, piraeus, marousi, monastiraki): marousi.

Where do you want to visit? (e.g., pagrati, piraeus, marousi, monastiraki): monastiraki.

What type of transportation do you prefer? (e.g., metro, bus, taxi): taxi.

Recommended restaurants:
Athenian Delicacies - restaurant - Rating: 3 - Cost: medium,monastiraki

Transport options:
metro - Distance: 6 km - Time: 30 mins
bus - Distance: 6 km - Time: 45 mins
taxi - Distance: 6 km - Time: 35 mins

Other restaurants in the same area:
Mystic Mediterranean - restaurant - Rating: 4 - Cost: medium
Monastiraki Grill - restaurant - Rating: 3 - Cost: low
Urban Bar - bar - Rating: 5 - Cost: high
Taverna Souvlaki - restaurant - Rating: 4 - Cost: medium
Monastiraki Coffee Corner - cafe - Rating: 3 - Cost: low
Acropolis Grill - restaurant - Rating: 4 - Cost: medium
Monastiraki Delight - theater - Rating: 5 - Cost: high
Terrace - bar - Rating: 4 - Cost: medium
Plaka Taverna - restaurant - Rating: 5 - Cost: high
Byzantine Bites - restaurant - Rating: 4 - Cost: medium
Monastiraki Dining Experience - restaurant - Rating: 5 - Cost: high
Athenian Seafood Grill - restaurant - Rating: 4 - Cost: medium
Sunset Roof - bar - Rating: 5 - Cost: high
Olive Garden Express - restaurant - Rating: 3 - Cost: high
Fast food burger - restaurant - Rating: 1 - Cost: low
Greek House - restaurant - Rating: 2 - Cost: medium
ClubRoom - club - Rating: 4 - Cost: low
Esqape - club - Rating: 5 - Cost: medium
Kolasi Club - club - Rating: 4 - Cost: low
Socialista - club - Rating: 3 - Cost: medium
```
