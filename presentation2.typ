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

#front-slide(
  title: "Seminarium Dyplomowe Inżynierskie - Część II",
  subtitle: [Rozwój portalu wspierającego obsługę rejsów dla biura Armatora Wydział Oceanografii i Geografii UG],
  authors: list(
    [Bartłomiej Krawisz 193319],
    [Paweł Pstrągowski 193473],
    [Stanisław Nieradko 193044]
  )
)

#table-of-contents(title: "Agenda")

#title-slide[
  Harmonogram prac
]

#slide(title: "Harmonogram prac")[
  #set text(size: 18pt)
  #table(
    columns: (1fr, 1fr),
    table.header(
      [*Termin*], [*Zadanie*],
      [13 maja 2025], [Zakończenie prac nad refaktorem aplikacji, wypuszczenie nowej wersji 2.0.0],
      [czerwiec 2025 - październik 2025], [Implementacja nowych funkcjonalności oraz naprawa znajdywanych błędów],
      [21 września 2025], [Wprowadzenie testów automatycznych do projektu],
      [październik 2025 - grudzień 2025], [Zapoznanie kolejnego zespołu z projektem],
      [październik 2025 - grudzień 2025], [Opis prac związanych z projektem w postaci pracy inżynierskiej],
      [listopad 2025 - grudzień 2025], [Wdrożenie nowej wersji aplikacji oraz ew. naprawa krytycznych błędów]
    ),
  )

  Równolegle zaplanowane są regularne konsulatcje z promotorem oraz klientami w interwałach odpowiednio 2 tygodni oraz miesiąca.
]

#title-slide[
  Stan pracy
]

#slide(title: "Stan pracy na moment pierwszej prezentacji")[
  - Większość prac związanych z nowymi funkcjonalnościami dobiegła końca.
  - Testy automatyczne zgodnie z planem zostały wdrożone do projektu oraz pipeline'u CI.
  - Aktualnie zajmujemy się:
    - Wdrażaniem nowej wersji na środowisko klienta
    - Wprowadzaniem nowego zespołu, który ma przejąć obowiązek utrzymywania aplikacji
    - Opisywaniem naszego projektu w pracy inżynierskiej.
]

#slide(title: "Aktualny stan pracy")[
  - Nasz zespół zakończył już pracę nad dodawaniem nowych funkcjonalności.
  - Testy automatyczne zgodnie z planem zostały wdrożone do projektu oraz pipeline'u CI.
  - Nowa wersja aplikacji została wdrożona na środowisko klienta 20 listopada 2025.
  - Nowy zespół został wdrożony w projekt, pracują oni aktualnie nad zgłoszonymi problemami i kolejnymi funkcjonalnościami.
  - Większość naszej pracy inżynierskiej została już napisana, pozostały tylko końcowe poprawki.
]

#title-slide[
  Przegląd procesu przepisywania frontendu aplikacji
]

#slide(title: "Porównajmy ponownie UX/UI przed i po")[
  #align(center, image("imgs/ux_1.png"))
  #align(center, image("imgs/ux_2.png"))
  #align(center, image("imgs/ux_3.png"))
]

#slide(title: "Dlaczego przepisaliśmy frontend")[
  - Poprzednia wersja była mało wydajna, nieczytelna oraz miała wiele błędów UX/UI.
  - Użytkownicy doświadczali losowych problemów takich jak wylogowania przez błędną rotację tokenów, utratę stanu aplikacji w trakcie nawigacji czy brak poprawnego wyświetlania błędów.
  - Ograniczone filtrowanie/sortowanie oraz chaotyczny UX utrudniały codzienną pracę.
  - Kod był niespójny, trudny do utrzymania i (co najgorsze) stylowany jednym plikiem SCSS nadpisującym Bootstrap `（─.─||）`.
]

#slide(title: "Kod przed refaktorem")[
  #align(center, image("imgs/c-03-01-previous-app-source-code-dir.png"))
]

#slide(title: "Kod przed refaktorem")[
  #align(center, image("imgs/old-source-code.png"))
]

#slide(title: "Kod przed refaktorem")[
  - Bardzo dużo powtórzeń kodu.
  - Nadmierne wykorzystanie patternów i wzorców projektowych + React.
  - Brak spójności w nazewnictwie i strukturze plików.
  - Wiele komponentów w jednym pliku.
  - Zatrważająco dużo `any` w TypeScript.
]

#slide(title: "Wykorzystane technologie")[
  #grid(columns: 4, gutter: 4em, align: center,
    grid(columns: 1, gutter: .25em, image("imgs/react-logo.png"), text(size: 18pt, "React")),
    grid(columns: 1, gutter: .25em, image("imgs/typescript-logo.png"), text(size: 18pt, "TypeScript")),
    grid(columns: 1, gutter: .25em, image("imgs/vite-logo.png"), text(size: 18pt, "Vite")),
    grid(columns: 1, gutter: .25em, image("imgs/tailwind-logo.png"), text(size: 18pt, "Tailwind")),
    grid(columns: 1, gutter: .05em, image("imgs/storybook-logo.png"), text(size: 18pt, "Storybook")),
    grid(columns: 1, gutter: .25em, image("imgs/motion-logo.png"), text(size: 18pt, "Motion")),
    grid(columns: 1, gutter: .25em, image("imgs/tanstack-logo.png"), text(size: 18pt, "TanStack Router")),
    grid(columns: 1, gutter: .25em, image("imgs/zod-logo.png"), text(size: 18pt, "Zod")),
  )
]

#slide(title: "Uzasadnienie wyboru technologii")[
  - React + TypeScript jako baza dzięki doświadczeniu zespołu i popularności ekosystemu.
  - Vite zamiast create-react-app/react-app-rewired: szybszy build/dev, prostsza konfiguracja.
  - Tailwind CSS dla izolowanych, komponentowych stylów; rezygnacja z ciężkiego SCSS nadpisującego Bootstrap.
  - Storybook do podglądu i testów komponentów UI, wsparcie dla wdrożenia kolejnych zespołów.
  - Motion - animacje i przejścia dla lepszego UX.
]

#slide(title: "Uzasadnienie wyboru technologii")[
  - TanStack Router: lepsza integracja z danymi, typowane ścieżki, wbudowane stany ładowania.
  - TanStack Query zamiast czystego axios: cache odpowiedzi, retry idempotentnych żądań, praca offline.
  - TanStack Forms: reaktywne formularze, walidacja na bazie zod, ochrona przed utratą danych.
  - TanStack Table: generyczne filtrowanie/sortowanie, widok list na mobile, wyszukiwarka w tabelach.
  - Własna biblioteka komponentów zamiast zewnętrznych UI kits dla pełnej spójności stylu.
]

#slide(title: "Kod po refaktoringu")[
  #align(center, image("imgs/new-source-code-dir.png"))
]

#slide(title: "Kod po refaktoringu")[
  #align(center, image("imgs/new-source-code.png"))
  #align(center, image("imgs/new-source-code-2.png"))
  #align(center, image("imgs/new-source-code-3.png"))
  #align(center, image("imgs/new-source-code-4.png"))
]

#slide(title: "Storybook")[
  #align(center, image("imgs/storybook.png"))
]

#slide(title: "Wyzwania w trakcie")[
  - Odświeżanie tokenu poza React Query (brak dostępu do kontekstu).
  - Walidacja z dwiema konfiguracjami zod w locie okazała się kłopotliwa; błąd naprawiono przy przekazaniu projektu.
  - Kalkulacja pozycji dropdownów dla dużych ekranów miała błąd matematyczny (naprawa po 3 dniach debugowania).
  - Druk PDF (react-to-print): konieczność duplikacji uproszczonych komponentów formularzy wydłużyła prace.
]

#slide(title: "Rezultaty po wdrożeniu")[
  - Feature parity przy zachowaniu znanego stylu, ale z lepszym UX/UI i stabilnością.
  - Wyższa wydajność potwierdzona Lighthouse: lepsze LCP (Largest Contentful Paint) oraz TBT (Total Blocking Time)
  - Uporządkowany kod (komponentowe style, wyraźna struktura katalogów) ułatwia utrzymanie.
  - Aplikacja dostępna u klienta od 20.11.2025; nowy zespół wdrożony i rozwija kolejne funkcje.
]

#title-slide[
  Porównanie narzędzi do testów automatycznych
]

#slide(title: "Porównanie narzędzi do testów automatycznych")[
  Najpopularniejsze rozwiązania stosowane w branży:
  #grid(columns: 4, gutter: 3em, align: center,
    grid(columns: 1, gutter: 1em, image("imgs/selenium_logo.png"), text("Selenium")),
    grid(columns: 1, gutter: 1em, image("imgs/cypress_logo.png"), text("Cypress")),
    grid(columns: 1, gutter: 1em, image("imgs/puppeteer_logo.png"), text("Puppeteer")),
    grid(columns: 1, gutter: 1em, image("imgs/playwright_logo.png"), text("Playwright"))
  )
]

#slide(title: "Porównanie narzędzi do testów automatycznych")[
  *Selenium*

  Zalety:
    - Szerokie wsparcie dla wielu przeglądarek, między innymi `Google Chrome`, `Firefox`, `Safari`, a nawet `Internet Explorer`

  Wady:
    - Brak oficjalnego wsparcia dla TypeScript
    - Nieintuicyjne czekanie na oczekiwaną wartość
]

#slide(title: "Porównanie narzędzi do testów automatycznych")[
  *Selenium*

  ```js
  // Click the button
  const button = await driver.findElement(By.id("myButton"));
  await button.click();

  // Check updated textbox value
  const textbox = await driver.findElement(By.id("myTextbox"));
  const val = await textbox.getAttribute("value");
  assert.strictEqual(value, "Updated Value");
  ```

  ❌ Taki kod może w niektórych przypadkach  nie zadziałać
]

#slide(title: "Porównanie narzędzi do testów automatycznych")[
  *Selenium*

  ```js
  // Click the button
  const button = await driver.findElement(By.id("myButton"));
  await button.click();

  // Check updated textbox value
  const textbox = await driver.findElement(By.id("myTextbox"));

  // Wait until checkbox becomes the wanted value
  await driver.wait(async () => {
    const val = await textbox.getAttribute("value");
    return val === "Updated Value";
  }, 5000);
  const val = await textbox.getAttribute("value");
  assert.strictEqual(value, "Updated Value");
  ```
]

#slide(title: "Porównanie narzędzi do testów automatycznych")[
  *Cypress*

  Zalety:
    - Oficjalne wsparcie dla TypeScript
    - Zaimplementowany domyślny, automatyczny sposób czekania na oczekiwaną wartość
    - Udostępnia wiele narzędzi do inspekcji przebiegu testów

  Wady:
    - Duża część narzędzi jest dostępna tylko w dodatkowo płatnym `Cypress Cloud`
    - W pełni oficjalnie wspierana jest tylko przeglądarka `Google Chrome`, z ograniczonym wsparciem dla przeglądarek `Firefox` i `Safari`
]

#slide(title: "Porównanie narzędzi do testów automatycznych")[
  *Cypress*

  ```ts
  // Click the button
  cy.get('#myButton').click();

  // Check updated textbox value
  cy.get<HTMLInputElement>('#myTextbox').should('have.value', 'Updated Value');
  ```

  ✅ Taki kod zaczeka na oczekiwaną wartość przez ustalony z góry czas (np. domyślnie 30 s), nie trzeba samemu pisać kodu czekającego, jak to miało miejsce w Selenium
]

#slide(title: "Porównanie narzędzi do testów automatycznych")[
  *Puppeteer*

  Zalety:
    - Oficjalne wsparcie dla TypeScript

  Wady:
    - Aktualnie kompatybilny tylko z `Google Chrome` i `Firefox`
    - Podobnie jak w Selenium, nieintuicyjne czekanie na zmianę wartości
]

#slide(title: "Porównanie narzędzi do testów automatycznych")[
  *Puppeteer*

  ```ts
  // Click the button
  await page.click("#myButton");

  // Wait until textbox value becomes the expected value
  await page.waitForFunction(
    () => (document.getElementById("myTextbox")
            as HTMLInputElement)?.value === "Updated Value",
    { timeout: 5000 }
  );

  // Get updated textbox value
  const value = await page.$eval("#myTextbox",
    el => (el as HTMLInputElement).value);
  assert.strictEqual(value, "Updated Value");
  ```
]

#slide(title: "Porównanie narzędzi do testów automatycznych")[
  *Playwright*

  Zalety:
    - Kompatybilność ze wszystkimi współcześnie popularnymi przeglądarkami (`Google Chrome`, `Firefox` i `Safari`), jak i również z ich wersjami mobilnymi
    - Oficjalne wsparcie dla TypeScript
    - Domyślne czekanie na zmianę wartości na oczekiwaną
    - Łatwa inspekcja przebiegu testów

  Wady:
    - Trochę gorsze narzędzia do inspekcji niż Cypress w płatnym wariancie
]

#slide(title: "Porównanie narzędzi do testów automatycznych")[
  *Playwright*

  ```ts
  // Click the button
  await page.click('#myButton');

  // Check updated textbox value
  const textbox = page.locator('#myTextbox');
  await expect(textbox).toHaveValue('Updated Value');
  ```

  ✅ Podobnie jak w Cypressie, tutaj również program automatycznie zaczeka przez ustalony czas
]

#slide(title: "Porównanie narzędzi do testów automatycznych")[
  *Podsumowanie*

  Po analizie różnych dostępnych rozwiązań, zdecydowaliśmy się na zastosowanie narzędzia *Playwright*.

  #set align(center)

  #grid(
    columns: 1,
    image("imgs/crown.png", height: 30%),
    image("imgs/playwright_logo.png", height: 30%)
  )
]

#title-slide[
  Wybrane szczegóły implementacyjne w aplikacji
]


#slide(title: "Frontend - Tech Stack")[
  Aplikacja wykorzystuje najnowsze dostępne narzędzia w ekosystemie React.

  - *React 19 RC*: Wykorzystanie funkcji biblioteki przed oficjalnym stabilnym wydaniem
  - *Vite*: wydajny build tool
  - *Ekosystem TanStack*:
    - `@tanstack/react-query`: Zarządzanie stanem serwera, caching
    - `@tanstack/react-table`: Headless UI do budowania skomplikowanych tabel
    - `@tanstack/react-form`: Zarządzanie stanem formularzy i walidacją
    - `@tanstack/react-router`: Type-safe routing
  - *Tailwind CSS*: Najnowsza wersja silnika CSS
]


#slide(title: "Frontend - Tabela z Formularzem")[
  #set text(size: 18pt)
  Połączenie TanStack Table z React Form.

  ```tsx
  // frontend/.../FormAResearchAreaSection.tsx
  {
    header: 'Rejon prowadzenia badań',
    cell: ({ row }) => (
      <form.Field
          name={`researchAreaDescriptions[${row.index}].differentName`}
          children={(field) => (
            <AppInput
               value={field.state.value}
               onChange={field.handleChange}
               errors={field.state.meta.errors} // Walidacja per wiersz
            />
          )}
      />
    )
  }
  ```
]

#slide(title: "Frontend - Zarządzanie Cyklem Życia (UI Logic)")[
  #set text(size: 18pt)
  Warunkowe renderowanie przycisków akcji w oparciu o status.

  ```tsx
  // frontend/.../CruiseDetailsPage.tsx
  switch (cruiseQuery.data?.status) {
      case 'Nowy':
          return (
            <>
              <AppButton onClick={() => setEditMode(true)}>Edytuj</AppButton>
              <AppButton onClick={() => setIsConfirmModal(true)}>Zatwierdź</AppButton>
            </>
          );
      case 'Potwierdzony':
          return (
               <AppButton onClick={() => setIsRevertModal(true)}>Cofnij status</AppButton>
          );
  }
  ```
]


#slide(title: "Frontend - Custom Hook (Reużywalność)")[
  Enkapsulacja logiki sprawdzania połączenia z API w prosty hook.

  ```tsx
  // modules/core/hooks/NetworkStatusApiHook.tsx
  export function useNetworkStatusMutation({ setNetworkConnectionStatus }: Props) {
    // Wywołanie prostego endpointu 'health'
    return useMutation({
      mutationFn: async () => client.get('/health'),
      onSuccess: () => setNetworkConnectionStatus(true),
      onError: () => setNetworkConnectionStatus(false),
      retry: false,
    });
  }
  ```
]

#slide(title: "Frontend - Type Safety (DTO)")[
  Silne typowanie danych przesyłanych między formularzem a API.

  ```tsx
  // modules/cruise-schedule/models/CruiseFormDto.ts
  export type CruiseFormDto = {
    startDate: string;
    endDate: string;
    managersTeam: {
        mainCruiseManagerId: string;
        mainDeputyManagerId: string;
    };
    cruiseApplicationsIds: string[];
    status?: string;
    shipUnavailable: boolean;
  };
  ```
]

#slide(title: "Frontend - Kalendarz i Wizualizacja Danych")[ 
  Transformacja danych domenowych na wydarzenia w kalendarzu.
  ```tsx
  // modules/cruise-schedule/components/CruiseCalendar.tsx
  const events = React.useMemo(
    () =>
      cruises.map((cruise) => ({
        title: getTitle(cruise),
        start: new Date(cruise.startDate),
        end: new Date(cruise.endDate),
        link: `/cruises/${cruise.id}`,
        // Dynamiczne kolorowanie w zależności od typu
        color: cruise.shipUnavailable ? `#a10000` : getHashColor(cruise.title),
      })),
    [cruises]
  );
  return <AppCalendar events={events} />;
```
]

#slide(title: "Frontend - Bezpieczeństwo (Guards)")[
  #set text(size: 16pt)
  Deklaratywne sprawdzanie uprawnień na poziomie routingu.

  ```tsx
  // frontend/src/routes/usermanagement.tsx
  export const Route = createFileRoute('/usermanagement')({
    component: UserManagementPage,
    // Blokada przed załadowaniem JS dla strony
    beforeLoad: allowOnly.withRoles(Role.Administrator, Role.ShipOwner),
  });

  // frontend/src/modules/core/lib/guards.ts
  allowOnly: {
    withRoles: (...roles: Role[]) => async ({ context }) => {
      // Weryfikacja ról w kontekście użytkownika
      if (!roles.some((r) => context.userContext!.currentUser!.roles.includes(r))) {
          throw redirect({ to: '/' });
      }
    }
  }
  ```
]
/*
SPEAKER NOTES:
- "Bezpieczeństwo to nie tylko ukrywanie przycisków w UI. Zaimplementowaliśmy 'Guards' na poziomie routera."
- "Dzięki temu, kod strony administracyjnej nawet nie zostanie wykonany dla nieuprawnionego użytkownika – przekierowanie następuje w fazie `beforeLoad`."
- "Rozwiązanie jest deklaratywne i łatwe w użyciu przy definiowaniu nowych ścieżek."
*/

#slide(title: "Frontend - Responsywność (Adaptive Tables)")[
  #set text(size: 18pt)
  Strategia dynamicznego wyboru komponentu tabeli w zależności od szerokości ekranu.

  ```tsx
  // frontend/src/modules/core/components/table/AppTable.tsx
  export function AppTable<T>(props: Props<T>) {
    const { width } = useWindowSize(); // Custom hook

    // Wybór implementacji: klasyczna tabela webowa vs lista kart na mobile
    const TableComponent = width < 768 ? AppMobileTable : AppDesktopTable;

    return (
      <TableComponent
        table={table} // Wspólna instancja TanStack Table
        variant={props.variant}
        // ...
      />
    );
  }
  ```
]
/*
SPEAKER NOTES:
- "Tabelki na telefonach to odwieczny problem. My podeszliśmy do tego 'adaptacyjnie'."
- "Nie próbujemy ściskać kolumn CSS-em. Zamiast tego, dynamicznie podmieniamy cały komponent renderujący."
- "Logika biznesowa tabeli (sortowanie, filtrowanie) jest wspólna (dzięki TanStack Table), zmienia się tylko warstwa prezentacji: klasyczna tabela na desktopie, lista kart na mobile."
*/

#slide(title: "Frontend - Auth Flow (Silent Refresh)")[
  #set text(size: 16pt)
  Automatyczne odświeżanie tokena (Silent Refresh) przy błędzie 401.

  ```tsx
  // frontend/src/modules/user/providers/UserContextProvider.tsx
  React.useEffect(() => {
    const interceptorId = createAuthRefreshInterceptor(
      client,
      async (failedRequest) => {
        // 1. Próba odświeżenia tokena
        await context.refreshUser();

        // 2. Ponowienie oryginalnego zapytania z nowym tokenem
        failedRequest.response.config.headers['Authorization'] = 
            `Bearer ${getStoredAuthDetails()?.accessToken}`;
        return failedRequest;
      },
      { statusCodes: [401], pauseInstanceWhileRefreshing: true }
    );
    return () => client.interceptors.response.eject(interceptorId);
  }, [context]);
  ```
]
/*
SPEAKER NOTES:
- "Użytkownik nie powinien być wylogowywany w połowie wypełniania długiego formularza."
- "Wykorzystujemy 'Axios Interceptors' do obsługi błędu 401 (Unauthorized)."
- "Aplikacja automatycznie, w tle, próbuje odświeżyć token i ponowić zapytanie. Użytkownik nawet nie zauważa, że jego sesja wygasła."
*/

#slide(title: "Frontend - Jakość (E2E Testing)")[
  Zaawansowane testy z wykorzystaniem Playwright i wzorca Page Object Model.

  ```tsx
  // frontend/tests/fixtures/fixtures.ts
  export const formTest = test.extend<{ formAPage: FormAPage }>({
    formAPage: async ({ page }, use) => {
      // Wstrzykiwanie gotowego obiektu strony (POM)
      const formAPage = await FormAPage.create(page);
      await use(formAPage);
    },
  });

  // frontend/tests/formA.spec.ts
  test('valid form A', async ({ formAPage }) => {
    // Testy czytelne jak język naturalny
    await formAPage.fillForm(); 
    await formAPage.submitForm({ expectedResult: 'valid' });
  });
  ```
]
/*
SPEAKER NOTES:
- Wykorzystujemy Playwright do testów End-to-End."
- "Dzięki Custom Fixtures i wzorcowi Page Object Model, nasze testy są niezwykle czytelne."
- "Zamiast pisać `page.click('.btn-primary')`, piszemy `formPage.submitForm()`. To ułatwia utrzymanie testów przy zmianach w UI."
*/

#slide(title: "Frontend - Error Handling")[
  Obsługa krytycznych błędów (Error Boundaries).

  ```tsx
  // frontend/src/modules/core/components/layout/AppErrorHandler.tsx
  export function AppErrorHandler({ error }: ErrorComponentProps) {
    return (
      <AppLayout title={'Wystąpił nieoczekiwany błąd'}>
         {/* ... */}
         <div className="font-semibold">{error.message}</div>
         <div className="text-center">
            Prosimy o maila na adres <AppLink>rejsy.help@ug.edu.pl</AppLink>.
         </div>
         <AppButton href="/">Przejdź do strony głównej</AppButton>
      </AppLayout>
    );
  }
  ```
]
/*
SPEAKER NOTES:
- "Zamiast białego ekranu (White Screen of Death), jest przyjazny komunikat."
- "Użytkownik widzi co się stało i ma jasną ścieżkę działania: powrót do strony głównej lub bezpośredni kontakt ze wsparciem."
*/

#slide(title: "Frontend - UX & Motion")[
  #set text(size: 16pt)
  Detale i subtelne animacje.

  ```tsx
  // frontend/src/modules/core/components/layout/AppNavbar.tsx
  <motion.header
    initial={{ y: -100 }} // Animacja wjazdu nagłówka
    animate={{ y: 0 }}
    transition={{ duration: 0.3 }}
  >
    {/* ... */}
    <motion.div whileHover={{ scale: 1.1 }}> {/* subtelna animacja */}
       <AppLink href="/">Portal R/V Oceanograf</AppLink>
    </motion.div>
    
    <AnimatePresence>
      {userContext.currentUser && (
        <motion.div exit={{ scale: 0 }}> {/* Płynne znikanie */}
           <AppButton onClick={signOut}>Wyloguj</AppButton>
        </motion.div>
      )}
    </AnimatePresence>
  </motion.header>
  ```
]
/*
SPEAKER NOTES:
- "Używamy biblioteki `Motion` (dawniej Framer Motion) do dodania życia interfejsowi."
- "Subtelne animacje przy wejściu elementów czy hoverze zwiększają poczucie responsywności i nowoczesności aplikacji."
*/

#blank-slide[
  == Dziękujemy za uwagę!
]
