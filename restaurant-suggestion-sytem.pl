%Περιοχές
location(piraeus, athens).
location(pagrati, athens).
location(monastiraki, athens).
location(marousi, athens).

%Εστιατόρια Πειραιά
restaurant('Sailing Seafood', seafood, 4, medium, piraeus).
restaurant('Blue Wave Grill', greek, 4, medium, piraeus).
restaurant('Mediterranean Bliss', bar, 5, high, piraeus).
restaurant('Piraeus Sunset Cafe', cafe, 4, medium, piraeus).
restaurant('Oceanfront Taverna', seafood, 3, low, piraeus).
restaurant('Piraeus Harborview', bar, 4, medium, piraeus).
restaurant('Greek Taverna', greek, 3, low, piraeus).
restaurant('GrillHouse', greek, 5, high, piraeus).
restaurant('Taverna Makis', greek, 4, medium, piraeus).
restaurant('Piraeus Breeze Cafe', cafe, 5, high, piraeus).
restaurant('Anchos End', seafood, 4, medium, piraeus).
restaurant('Piraeus plateia', greek, 5, high, piraeus).
restaurant('Marina', seafood, 3, low, piraeus).
restaurant('Athenian Seafood House', seafood, 4, medium, piraeus).
restaurant('Poseidon Bounty', bar, 5, high, piraeus).
restaurant('Estrella Cafe', cafe, 4, medium, piraeus).
restaurant('Coffie House', cafe, 3, low, piraeus).

%Εστιατόρια Παγκράτι
restaurant('Authentic Greek Eats', greek, 4, medium, pagrati).
restaurant('Pagrati Pita Palace', greek, 3, high, pagrati).
restaurant('Taste of Greece', greek, 5, high, pagrati).
restaurant('Pagrati Lounge', bar, 4, medium, pagrati).
restaurant('Cozy Corner Café', cafe, 3, low, pagrati).
restaurant('Pagrati Delight', greek, 4, medium, pagrati).
restaurant('Gourmet Greek', greek, 3, low, pagrati).
restaurant('Pagrati Seafood Haven', seafood, 5, high, pagrati).
restaurant('Greek Street Food Co.', greek, 4, medium, pagrati).
restaurant('Pagrati Terrace Cafe', cafe, 5, high, pagrati).
restaurant('Mykonos Grill House', greek, 4, medium, pagrati).
restaurant('Olive Tree Taverna', greek, 5, high, pagrati).
restaurant('Mediterranean Taste', greek, 3, medium, pagrati).
restaurant('Pagrati Fish & Chips', seafood, 4, medium, pagrati).
restaurant('Greek Gyros', greek, 1, low, pagrati).
restaurant('Pagrati finest', seafood, 2, medium, pagrati).
restaurant('Gyros', greek, 3, low, pagrati).

%Εστιατόρια Μοναστηράκι
restaurant('Mystic Mediterranean', restaurant, 4, medium, monastiraki).
restaurant('Monastiraki Grill', greek, 3, low, monastiraki).
restaurant('Urban Bar', bar, 5, high, monastiraki).
restaurant('Taverna Souvlaki', greek, 4, medium, monastiraki).
restaurant('Monastiraki Coffee Corner', cafe, 3, low, monastiraki).
restaurant('Acropolis Grill', greek, 4, medium, monastiraki).
restaurant('Athenian Delicacies', greek, 3, medium, monastiraki).
restaurant('Monastiraki Seafood Delight', seafood, 5, high, monastiraki).
restaurant('Terrace', bar, 4, medium, monastiraki).
restaurant('Plaka Taverna', greek, 5, high, monastiraki).
restaurant('Byzantine Bites', greek, 4, medium, monastiraki).
restaurant('Monastiraki Dining Experience', restaurant, 5, high, monastiraki).
restaurant('Athenian Seafood Grill', seafood, 4, medium, monastiraki).
restaurant('Sunset Roof', bar, 5, high, monastiraki).
restaurant('Olive Garden Express', greek, 3, high, monastiraki).
restaurant('Fast food burger', greek, 1, low, monastiraki).
restaurant('Greek House', greek, 2, medium, monastiraki).

%Εστιατόρια Μαρούσι
restaurant('Marousi Grill & Bar', greek, 4, medium, marousi).
restaurant('Mediterranean Delights', seafood, 4, medium, marousi).
restaurant('Marousi Café Express', cafe, 3, low, marousi).
restaurant('Modern Greek Bistro', greek, 5, high, marousi).
restaurant('Marousi Bar', bar, 3, low, marousi).
restaurant('Marousi Seafood Delight', seafood, 4, medium, marousi).
restaurant('Greek Taverna Oasis', greek, 3, low, marousi).
restaurant('Lolitas', bar, 5, high, marousi).
restaurant('Marousi Gourmet Grill', greek, 4, medium, marousi).
restaurant('Athens Brasserie', restaurant, 5, high, marousi).
restaurant('Marousi Street Food', greek, 4, medium, marousi).
restaurant('Mediterranean Coastline', seafood, 5, high, marousi).
restaurant('Marousi Mediterranean Bistro', greek, 4, medium, marousi).
restaurant('Grecian Fish & Chips', seafood, 3, low, marousi).
restaurant('Plateia View', cafe, 4, medium, marousi).
restaurant('Grecian Fish & Chips', cafe, 2, low, marousi).
restaurant('Mediterranean Cuisine', greek, 1, medium, marousi).

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
    write('(e.g., greek, bar, restaurant, seafood): '), read(Type), nl,
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
    write('Recommended Restaurants:'), nl,
    (   Restaurants = []
    ->  write('No Restaurants found matching your preferences.'), nl
    ;   print_destinations(Restaurants),
        nl
    ),
    write('Transport options:'), nl,
    (   TransportOptions = []
    ->  write('No transport options available.'), nl
    ;   print_transport_options(TransportOptions)
    ).

% Helper για εστιατόρια
print_destinations([]).
print_destinations([(Name, Category, R, C, Location)|Restaurants]) :-
    write(Name), write(' - '), write(Category), write(' - Rating: '), write(R), write(' - Cost: '), write(C), write(' - Location: '), write(Location), nl,
    print_destinations(Restaurants).

% Helper για μεθόδους μετακίνησης
print_transport_options([]).
print_transport_options([(Mode, Distance, Time)|TransportOptions]) :-
    write(Mode), write(' - Distance: '), write(Distance), write(' km - Time: '), write(Time), write(' mins'), nl,
    print_transport_options(TransportOptions).
