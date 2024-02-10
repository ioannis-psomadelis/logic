%Περιοχές
location(piraeus, athens).
location(pagrati, athens).
location(monastiraki, athens).
location(marousi, athens).

%Εστιατόρια Πειραιά
restaurant('Diana', theater, 4, medium, piraeus).
restaurant('Blue Wave Grill', restaurant, 4, medium, piraeus).
restaurant('Mediterranean Bliss', bar, 5, high, piraeus).
restaurant('Piraeus Sunset Cafe', cafe, 4, medium, piraeus).
restaurant('Oceanfront Taverna', restaurant, 3, low, piraeus).
restaurant('Takis Club', club, 1, low, piraeus).
restaurant('Piraeus Harborview', bar, 4, medium, piraeus).
restaurant('Greek Taverna', restaurant, 3, low, piraeus).
restaurant('GrillHouse', restaurant, 5, high, piraeus).
restaurant('Estrella Cafe', club, 4, medium, piraeus).
restaurant('Taverna Makis', restaurant, 4, medium, piraeus).
restaurant('Piraeus Breeze Cafe', cafe, 5, high, piraeus).
restaurant('Anchos End', seafood, 4, medium, piraeus).
restaurant('Piraeus plateia', restaurant, 5, high, piraeus).
restaurant('Marina', seafood, 3, low, piraeus).
restaurant('Athenian Theater', theater, 4, medium, piraeus).
restaurant('Poseidon Bounty', bar, 5, high, piraeus).
restaurant('Estrella Cafe', cafe, 4, medium, piraeus).
restaurant('Coffie House', cafe, 3, low, piraeus).
restaurant('Poseidonio Beach', club, 4, high, piraeus).


%Εστιατόρια Παγκράτι
restaurant('Authentic Greek Eats', restaurant, 4, medium, pagrati).
restaurant('Pagrati Pita Palace', restaurant, 3, high, pagrati).
restaurant('Taste of Greece', restaurant, 5, high, pagrati).
restaurant('Pagrati Lounge', bar, 4, medium, pagrati).
restaurant('Cozy Corner Café', cafe, 3, low, pagrati).
restaurant('Pagrati Delight', restaurant, 4, medium, pagrati).
restaurant('Gourmet Greek', restaurant, 3, low, pagrati).
restaurant('Pagrati finest', club, 2, medium, pagrati).
restaurant('Gyros', club, 3, low, pagrati).
restaurant('Pagrati Seafood Haven', restaurant, 5, high, pagrati).
restaurant('Greek Street Food Co.', restaurant, 4, medium, pagrati).
restaurant('Pagrati Terrace Cafe', cafe, 5, high, pagrati).
restaurant('Mykonos Grill House', restaurant, 4, medium, pagrati).
restaurant('Olive Tree Taverna', restaurant, 5, high, pagrati).
restaurant('Mediterranean Taste', restaurant, 3, medium, pagrati).
restaurant('Pagrati Cinema', theater, 4, medium, pagrati).
restaurant('Greek Gyros', restaurant, 1, low, pagrati).
restaurant('Pagrati finest', theater, 2, medium, pagrati).
restaurant('Gyros', greek, 3, low, pagrati).

%Εστιατόρια Μοναστηράκι
restaurant('Mystic Mediterranean', restaurant, 4, medium, monastiraki).
restaurant('Monastiraki Grill', restaurant, 3, low, monastiraki).
restaurant('Urban Bar', bar, 5, high, monastiraki).
restaurant('Taverna Souvlaki', restaurant, 4, medium, monastiraki).
restaurant('Monastiraki Coffee Corner', cafe, 3, low, monastiraki).
restaurant('Acropolis Grill', restaurant, 4, medium, monastiraki).
restaurant('Athenian Delicacies', restaurant, 3, medium, monastiraki).
restaurant('Monastiraki Delight', theater, 5, high, monastiraki).
restaurant('Terrace', bar, 4, medium, monastiraki).
restaurant('Plaka Taverna', restaurant, 5, high, monastiraki).
restaurant('Byzantine Bites', restaurant, 4, medium, monastiraki).
restaurant('Monastiraki Dining Experience', restaurant, 5, high, monastiraki).
restaurant('Athenian Seafood Grill', restaurant, 4, medium, monastiraki).
restaurant('Sunset Roof', bar, 5, high, monastiraki).
restaurant('Olive Garden Express', restaurant, 3, high, monastiraki).
restaurant('Fast food burger', restaurant, 1, low, monastiraki).
restaurant('Greek House', restaurant, 2, medium, monastiraki).
restaurant('ClubRoom', club, 4, low, monastiraki).
restaurant('Esqape', club, 5, medium, monastiraki).

%Εστιατόρια Μαρούσι
restaurant('Marousi Grill & Bar', restaurant, 4, medium, marousi).
restaurant('Mediterranean Delights', restaurant, 4, medium, marousi).
restaurant('Marousi Café Express', cafe, 3, low, marousi).
restaurant('Modern Greek Bistro', restaurant, 5, high, marousi).
restaurant('Marousi Bar', bar, 3, low, marousi).
restaurant('Thiasos', theater, 4, medium, marousi).
restaurant('Greek Taverna Oasis', restaurant, 3, low, marousi).
restaurant('Lolitas', bar, 5, high, marousi).
restaurant('Marousi Gourmet Grill', restaurant, 4, medium, marousi).
restaurant('Athens Brasserie', restaurant, 5, high, marousi).
restaurant('Marousi Street Food', restaurant, 4, medium, marousi).
restaurant('Mediterranean Coastline', theater, 5, high, marousi).
restaurant('Marousi Mediterranean Bistro', restaurant, 4, medium, marousi).
restaurant('Grecian Fish & Chips', restaurant, 3, low, marousi).
restaurant('Plateia View', cafe, 4, medium, marousi).
restaurant('Grecian Fish & Chips', cafe, 2, low, marousi).
restaurant('Mediterranean Cuisine', restaurant, 1, medium, marousi).
restaurant('Kolasi Club', club, 4, low, monastiraki).
restaurant('Socialista', club, 3, medium, monastiraki).

%Αποστάσεις μεταξύ περιοχών
distance(pagrati, piraeus, 7).
distance(pagrati, monastiraki, 3).
distance(pagrati, marousi, 12).

distance(piraeus, pagrati, 7).
distance(piraeus, monastiraki, 9).
distance(piraeus, marousi, 18).

distance(monastiraki, pagrati, 3).
distance(monastiraki, piraeus, 9).
distance(monastiraki, marousi, 6).

distance(marousi, pagrati, 12).
distance(marousi, piraeus, 18).
distance(marousi, monastiraki, 6).

%Αποστάσεις μεταξύ περιοχών με μεταφορικά μέσα
transport(pagrati, metro, 15).
transport(pagrati, bus, 30).
transport(pagrati, taxi, 20).

transport(piraeus, metro, 25).
transport(piraeus, bus, 40).
transport(piraeus, taxi, 30).

transport(monastiraki, metro, 20).
transport(monastiraki, bus, 35).
transport(monastiraki, taxi, 25).

transport(marousi, metro, 30).
transport(marousi, bus, 45).
transport(marousi, taxi, 35).

% User Input προτιμήσεων
ask_entertainment_preferences(Type, Cost, Rating) :-
    write('What type of entertainment are you interested in? '), nl,
    write('(e.g., club, bar, restaurant, theater): '), read(Type), nl,
    write('Suggested Cost (low, medium, high, or none): '), read(Cost), nl,
    write('Do you have any rating preferences? '), nl,
    write('(1 to 5 or none): '), read(Rating), nl.

% User Input περιοχών
ask_location_preferences(Stay, Visit) :-
    write('Where are you staying? '), nl,
    write('(e.g., pagrati, piraeus, marousi, monastiraki): '), read(Stay), nl,
    write('Where do you want to visit? '), nl,
    write('(e.g., pagrati, piraeus, marousi, monastiraki): '), read(Visit), nl.

% User Input προτίμησης μετακίνησης
ask_transport_preferences(Transport) :-
    write('What type of transportation do you prefer? '), nl,
    write('(e.g., metro, bus, taxi): '), read(Transport), nl.


% Πρόταση εστιατορίων και μεταφορικών μέσων
recommendation :-
    % Δεδομένα
    ask_entertainment_preferences(Type, Cost, Rating),
    ask_location_preferences(Stay, Visit),
    ask_transport_preferences(Transport),

    % Έυρεση των εστιατορίων
    find_restaurants(Type, Cost, Rating, Visit, Restaurants),

    % Έυρεση των μεθόδων μετακίνησης
    find_transport_options(Stay, Visit, TransportOptions),

    % Output
    (   Restaurants = []
    ->  write('No Restaurants found matching your preferences.'), nl
    ;   print_recommendations(Restaurants, TransportOptions)
    ).

% Ευρεση εστιατορίων
find_restaurants(Type, Cost, Rating, Visit, Restaurants) :-
    findall((Name, Category, R, C, Visit),
            (restaurant(Name, Category, R, C, Visit),
             (Type = none ; Category = Type),
             (Cost = none ; C = Cost),
             (Rating = none ; R = Rating)),
            Restaurants).

% Ευρεση μεθόδων μετακίνησης
find_transport_options(Stay, Visit, TransportOptions) :-
    findall((Mode, Distance, Time),
            (distance(Stay, Visit, Distance),
             transport(Stay, Mode, Time)),
            TransportOptions).

% Output
print_recommendations(Restaurants, TransportOptions) :-
    write('Recommended restaurants:'), nl,
    (   Restaurants = []
    ->  write('No restaurants found matching your preferences.'), nl
    ;   print_restaurants(Restaurants),
        nl
    ),
    write('Transport options:'), nl,
    (   TransportOptions = []
    ->  write('No transport options available.'), nl
    ;   print_transport_options(TransportOptions)
    ),
    nl,
    write('Other restaurants in the same area:'), nl,
    print_other_options(Restaurants).

% Helper για εστιατόρια
print_restaurants([]).
print_restaurants([(Name, Category, R, C)|Restaurants]) :-
    write(Name), write(' - '), write(Category), write(' - Rating: '), write(R), write(' - Cost: '), write(C), nl,
    print_restaurants(Restaurants).

% Helper για άλλες επιλογές
print_other_options(Restaurants) :-
    Restaurants = [(Name, _, _, _, Location)|_], 
    findall((OtherName, OtherCategory, OtherRating, OtherCost),
            (restaurant(OtherName, OtherCategory, OtherRating, OtherCost, Location),
             \+ member((OtherName, _, _, _), Restaurants),
             OtherName \= Name), 
            OtherOptions),
    print_restaurants(OtherOptions).
    
% Helper για μεθόδους μετακίνησης
print_transport_options([]).
print_transport_options([(Mode, Distance, Time)|TransportOptions]) :-
    write(Mode), write(' - Distance: '), write(Distance), write(' km - Time: '), write(Time), write(' mins'), nl,
    print_transport_options(TransportOptions).
