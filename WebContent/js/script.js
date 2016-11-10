 $(document).ready(function() {
		$("#register").validate({
			messages : {
				firstname:{
					required: 'Imie wymagane'
				},
				lastname:{
					required: 'Nazwisko wymagane'
				},
				login:{
					required: 'Login wymagany'
				},
				password:{
					required: 'Haslo wymagane'
				},
				pesel:{
					required: 'Pesel wymagany',
					digits: 'Wpisz tylko cyfry',
					minlength: 'Wprowadz 11 cyfr'
				},
				email:{
					required: 'Email wymagany',
					email: 'Wpisz poprawny adres email'
				},
				street:{
					required: 'Nazwa ulicy wymagana'
				},
				house:{
					required: 'Numer domu wymagany',
					digits: 'Wpisz tylko cyfry'
				},
				flat:{
					digits: 'Wpisz tylko cyfry'
				},
				zip:{
					required: 'Kod pocztowy wymagany',
					digits: 'Wpisz tylko cyfry',
					minlength: 'Wprowadz 2 cyfry'
				},
				zip2:{
					required: 'Kod pocztowy wymagany',
					digits: 'Wpisz tylko cyfry',
					minlength: 'Wprowadz 3 cyfry'
				},
				city:{
					required: 'Miasto wymagane'
				},
				phone:{
					required: 'Numer telefonu wymagany',
					digits: 'Wpisz tylko cyfry',
					minlength: 'Wprowadz 9 cyfr'
				},
				born_date:{
					required: 'Data urodzenia wymagana',
					date: 'Wprowadz poprawna date'
				},
			}
		});
	});
 
 $(document).ready(function() {
		$("#new_card").validate({
			messages : {
				street:{
					required: 'Nazwa ulicy wymagana'
				},
				house:{
					required: 'Numer domu wymagany',
					digits: 'Wpisz tylko cyfry'
				},
				flat:{
					digits: 'Wpisz tylko cyfry'
				},
				zip:{
					required: 'Kod pocztowy wymagany',
					digits: 'Wpisz tylko cyfry',
					minlength: 'Wprowadz 2 cyfry'
				},
				zip2:{
					required: 'Kod pocztowy wymagany',
					digits: 'Wpisz tylko cyfry',
					minlength: 'Wprowadz 3 cyfry'
				},
				city:{
					required: 'Miasto wymagane'
				}
			}
		});
	});

