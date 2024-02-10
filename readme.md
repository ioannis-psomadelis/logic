# Έμπειρο Σύστημα Προτάσεων Διασκέδασης

## Περιγραφή

Το Σύστημα Προτάσεων Εστιατορίων και Διασκέδασης σε Prolog παρέχει ένα περιβάλλον για την αναζήτηση εστιατορίων και κέντρων διασκέδασης με βάση τις προτιμήσεις του χρήστη και την τοποθεσία του. Χρησιμοποιώντας τη γλώσσα προγραμματισμού Prolog, το σύστημα εκτελεί λογικές προτάσεις βασισμένες σε κανόνες που ορίζουν τις συνθήκες για κάθε είδος επιχείρησης και τοποθεσία.

## Υλοποίηση και Περιεχόμενα εργασίας

### Περιεχόμενα

restaurant-suggestion-system.pl: Το κύριο αρχείο του συστήματος, περιέχει τους κανόνες για την κατηγοριοποίηση των εστιατορίων και των τοποθεσιών, καθώς και τους κανόνες για την αναζήτηση προτάσεων βάσει των προτιμήσεων του χρήστη.

README.md: Το παρόν αρχείο, περιέχει πληροφορίες σχετικά με το σύστημα και τη χρήση του.

Output_example.png: Ένα παράδειγμα χρήσης του συστήματος

### Ανάλυση απαιτήσεων

Ερωτήσεις στον Χρήστη:

Το σύστημα θα ζητήσει από τον χρήστη να ορίσει τις προτιμήσεις του σχετικά με το είδος διασκέδασης, το κόστος, τη βαθμολογία, την περιοχή που μένει και την περιοχή που θέλει να επισκεφτεί, καθώς και το είδος των μεταφορικών μέσων που προτιμά.

Παρουσίαση Προτάσεων:

Το σύστημα θα επιστρέψει μια λίστα από επιλογές εστιατορίων και διασκέδασης που ταιριάζουν με τις προτιμήσεις του χρήστη, καθώς και πληροφορίες για τις διαθέσιμες επιλογές μεταφοράς προς αυτά τα μέρη.

### Ανάλυση κώδικα

Στο αρχείο restaurant-suggestion-system.pl βρίσκεται η λογική του συστήματος μας, εκεί βρίσκεται η βάση γνώσης αποτελούμενη από τις περιοχές και τα εστιατόρια με τις επιμέρους πληροφορίες του καθενός.

## Πώς να Χρησιμοποιήσετε το Σύστημα

### Παράδειγμα χρήσης.

Με inputs : greek, none, none, marousi, pagrati

```prolog
What type of entertainment are you interested in?
(e.g., greek, bar, restaurant, seafood): greek.

Suggested Cost (low, medium, high, or none): none.

Do you have any rating preferences?
(1 to 5 or none): none.

Where are you staying?
(e.g., pagrati, piraeus, marousi, monastiraki): marousi.

Where do you want to visit?
(e.g., pagrati, piraeus, marousi, monastiraki): pagrati.

What type of transportation do you prefer?
(e.g., metro, bus, taxi): metro.

Recommended restaurants:
1. Marousi Grill & Bar - Greek - Rating: 4 - Cost: medium - Location: Marousi
2. Mediterranean Delights - Seafood - Rating: 4 - Cost: medium - Location: Marousi
3. Marousi Café Express - Cafe - Rating: 3 - Cost: low - Location: Marousi

Transport options:
Mode: metro - Distance: 30 km - Time: 15 mins
Mode: bus - Distance: 45 km - Time: 30 mins
Mode: taxi - Distance: 35 km - Time: 20 mins

Other options in the same area:
1. Marousi Grill & Bar - Greek - Rating: 4 - Cost: medium - Location: Marousi
```

## Contributing

Pull requests are welcome. For major changes, please open an issue first
to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License

[MIT](https://choosealicense.com/licenses/mit/)
