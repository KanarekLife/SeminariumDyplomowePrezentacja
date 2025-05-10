#import "@preview/typslides:1.2.5": *

// Project configuration
#show: typslides.with(
  ratio: "16-9",
  theme: "dusky",
)

#set document(
  title: "Seminarium Dyplomowe Inżynierskie - ResearchCruiseApp",
  author: ("Stanisław Nieradko 193044", "Bartłomiej Krawisz 193319", "Paweł Pstrągowski 193473")
)

#set text(
  font: "Raleway",
  size: 10pt
)

// The front slide is the first slide of your presentation
#front-slide(
  title: "Seminarium Dyplomowe Inżynierskie",
  subtitle: [Rozwój portalu wspierającego obsługę rejsów dla biura Armatora Wydział Oceanografii i Geografii UG],
  authors: list(
    [Bartłomiej Krawisz 193319],
    [Paweł Pstrągowski 193473],
    [Stanisław Nieradko 193044]
  )
)

#table-of-contents(title: "Agenda")

#title-slide[
  Informacje o pracy inżynierskiej
]

#slide(title: "Informacje o pracy inżynierskiej")[
  *Temat*: Rozwój portalu wspierającego obsługę rejsów dla biura Armatora Wydział Oceanografii i Geografii UG

  *Promotor*: dr inż. Krzysztof Manuszewski

  *Skład zespołu*: #list(
    [Bartłomiej Krawisz 193319],
    [Paweł Pstrągowski 193473],
    [Stanisław Nieradko 193044]
  )
]

#title-slide[
  Cel i Zakres pracy
]

#slide(title: "Cel pracy")[
  #grid(
    columns: (1fr, 1fr),
    gutter: 20pt,
    [
      #set text(size: 18pt)
      - Celem projektu inżynierskiego jest naprawa, rozszerzenie oraz implementacja funkcjonalnych wymagań związanych z realizacją portalu dla Biura Armatora UG nazywanego później "ResearchCruiseApp".
  - Sama aplikacja powstała w ramach ubiegłorocznego projektu grupowego oraz następnie kontynuowana jako praca inżynierska. Wersja 1.1 będąca wynikiem tych prac została wdrożona na środowisko produkcyjne w grudniu 2024.
  - Kontynuacja prac została podjęta przez nas zespoł początkowo w ramach projektu grupowego oraz będzie kontynuowana jako praca inżynierska.
  ],
    image("imgs/bg.png")
  )
]

#slide(title: "Cel pracy")[
  Do najważniejszych zadań należących do naszego zespołu należą:
  - Implementacja Formularza C
  - Implementacja testów automatycznych umożliwiających łatwiejsze testowanie początkowo warstwy frontend, a docelowo pełnego systemu
  - Naprawa lub rozszerzanie aktualnie zaimplementowanych funkcjonalności: większe możliwości zarządzania użytkownikami platformy, naprawa modułu uwierzytelniania, naprawa komunikacji z warstwą API w przypadku utraty połączenia z internetem
  - Refaktoryzacja warstwy frontend polegająca na ulepszeniu zarówno User Experience (UX) jak i Development Experience (DX)
  - Implementacja nowych funkcjonalności zgodnie z wymaganiami zebranymi od użytkowników platformy
]

#slide(title: "Cel pracy - Formularz C")[
  - W ramach aplikacji istnieje koncept formularzy wypełnianych przez naukowców starających się o rejs w ramach Biura Armatora. Formularz C był ostatnim z formularzy wymaganych w aplikacji i, z uwagi na ograniczenia czasowe, nie był zaimplementowany przed wdrożeniem aplikacji przez poprzedni zespół deweloperski.

  #image("imgs/formularz_c (1).png")
  #image("imgs/formularz_c (2).png")
  #image("imgs/formularz_c (3).png")
  #image("imgs/formularz_c (4).png")
  #image("imgs/formularz_c (5).png")
  #image("imgs/formularz_c (6).png")
]

#slide(title: "Cel pracy - Testy Automatyczne")[
  - Z uwagi na duże zmiany po stronie frontendu aplikacji podjęta była decyzja o potrzebie zdefiniowana oraz rozpisania testów automatycznych umożliwiających ochronę przed regresjami w procesie deweloperskim.
  - Testy realizowane są przy użyciu technologii `Playwright` w języku `TypeScript`.
  - W początkowej wersji zakładamy powstanie jedynie testów pokrywających warstwę frontend aplikacji oraz zastosowanie mocków w celu symulowania konkretnych odpowiedzi od strony backend'u.
  - Po zakończeniu implementacji, planowane jest rozszerzenie metodologii testowania o testy E2E umożliwiającego jednoczesne uruchamianie i testowanie zarówno backendu jak i frontendu.

  #align(center, image("imgs/testy_auto.png"))
]

#slide(title: "Cel pracy - naprawa i rozszerzenie istniejących funkcjonalności")[
  - Zwiększenie możliwości modyfikacji istniejących użytkowników z poziomu aplikacji
  #align(center, image("imgs/user_crud.png", height: 80%))

  - Rozbudowanie możliwości filtrowania oraz sortowania wyświetlanych danych w aplikacji
  #align(center, image("imgs/table_helpers.png", height: 80%))

  - Rozbudowa aplikacji o informacje o statusie połączenia z warstwą API oraz możliwość automatycznego ponownego połączenia i kontynuowania pracy w razie problemów z łącznością
  #align(center, image("imgs/network_detection.png", height: 70%))
]

#slide(title: "Cel pracy - usprawnienia UX / DX")[
  #align(center, image("imgs/ux_1.png"))
  #align(center, image("imgs/ux_2.png"))
  #align(center, image("imgs/ux_3.png"))
  #align(center, image("imgs/ux_4.png"))
  #align(center, image("imgs/ux_5.png"))
  #align(center, image("imgs/ux_6.png"))
  #align(center, image("imgs/ux_7.png"))
]

#slide(title: "Cel pracy - nowe funkcjonalności")[
  Przykładowe funkcjonalności czekające na implementację:

  - Możliwość zarządzania i łatwego dostępu do zadań SPUB
  - Konto statku umozliwiające odczyt istotnych danych z punktu widzenia załogi
  - Możliwość dołączania precyzyjnych koordynatów GPS do formularza umożliwiających załodze lepsze planowanie rejsu
  - Zwiększenie uprawnień Biura Armatora co do modyfikacji i zarządzania formularzami oraz rejsami w programie

  i inne...

  #align(center, image("imgs/gh_issues.png"))
]

#title-slide[
  Harmonogram prac
]

#slide(title: "Harmonogram prac")[
  #table(
    columns: (1fr, 1fr),
    table.header(
      [*Termin*], [*Zadanie*],
      [teraz - koniec maja 2025], [Zakończenie prac nad refaktorem aplikacji, wdrożenie nowej wersji na środowisko produkcyjne],
      [koniec czerwca 2025], [Wprowadzenie testów automatycznych do projektu],
      [czerwiec 2025 - październik 2025], [Implementacja nowych funkcjonalności (wg. kolejności ustalonej z klientami) oraz naprawa znajdywanych błędów],
      [listopad 2025 - grudzień 2025], [Wdrożenie nowej wersji aplikacji oraz ew. naprawa krytycznych błędów]
    ),
  )

  Równolegle zaplanowane są regularne konsulatcje z promotorem oraz klientami w interwałach odpowiednio 2 tygodni oraz miesiąca.
]

#title-slide[
  Aktualny stan pracy
]

#slide(title: "Aktualny stan pracy")[
  - Większość prac związanych z refaktorem frontendu dopiega końca i powinna być zakończona do końca miesiąca.
  - Testy automatyczne zgodnie z planem powinny gotowe do końca czerwca tego roku.
  - Aktualnie implementujemy funkcjonalność drukowania formularza, moduł z zadaniami SPUB oraz zwiększenie możliwości Biura Armatora w kwestii zarządzania istniejącymi rejsami
]

#blank-slide[
  == Dziękujemy za uwagę!
]