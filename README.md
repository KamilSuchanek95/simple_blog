# README
Na tę chwilę działają podstawowe funkcje bloga + ładny wygląd, wydaje mi się trochę wbrew temu sugerowanemu przez Bulmę css, ale tak mi sie podoba. Podstawowy system użytkowników również jest sprawny, wraz z potwierdzeniem rejestracji na pocztę.

Użytkownicy tworzą posty, a komentuje każdy, bez logowania... ma to sens hmm, chociaż chciałem zrobić tak, aby komentarz od osoby zalogowanej był podposywany username, podobnie jak teraz artykuły, natomiast od anonimów, automatycznie (jak teraz) albo to co wpiszą. I podobnie z Artykułami. Jednak strasznie krzyczało o brak obiektu użytkownika przy tworzeniu nowego rekordu posta hmm, nawet utworzenie domyślnego użytkownika nie było do końca skuteczne hm.

Aby to zrobić, można by utworzyć osobne modele dla artykułów/komentarzy od anonimów, ale współdzieląc widoki z formularzami, is_signed_in? decydowałoby o wyświetleniu odpowiednich przycisków, które odpowiadały by za akcje tworzenia w innych kontrolerach. Troche pogmatwane. A przekazywanie parametrów lepiej byłoby zawinąć w kontrolerach, bez zagnieźdżonych form w widokach. Lepiej poszukam czegoś innego do zrobienia.

![preview](/app/assets/images/preview2.png)

* Ruby version
ruby 2.7.0p0
* System dependencies
a tutaj co mogę dać hmm
Rails 6.0.3.5
* Configuration
pliki konfiguracyjne są zamieszczone... Gemfile też...
w app/config/environment/development.rb trzeba uzupelnić swój mail, hasło i ewentualnie inne ustawienia połączenia, aby potwierdzenie rejestracji zadziałało...
w  app/config/initializers/devise.rb również należy podmienić mail
* Database creation and initialization
nie zmieniałem domyślnego sqlite.
$ bundle install
$ rake db:create
$ rake db:migrate
i możemy włączyć
$ rails s
ewentualnie szyny powiadomią nas o potrzebnych polecaniach jak 'yarn install --check-files'
* How to run the test suite
To pewnie okropne, ale nie pisałem testów.
* Deployment instructions
Tutaj problem pewnie będzie tylko z potwierdzeniem mailowym, ale da się zrobić.
