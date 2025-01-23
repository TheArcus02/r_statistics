# Dane
n <- 1000  # liczba obserwacji
success <- 160  # liczba opóźnień

# Test dla proporcji z 90% przedziałem ufności
prop.test(success, n, conf.level = 0.9)


# Interpretacja wyników:

    # Otrzymaliśmy przedział ufności: (0.1414, 0.1805)

        # Oznacza to, że z 90% pewnością prawdziwa proporcja opóźnień znajduje się między 14.14% a 18.05%

        # P-value < 2.2e-16 wskazuje na istotność statystyczną

    # Odnośnie pytania czy Pani K podjęła słuszną decyzję:

        # Skoro prawdopodobieństwo opóźnienia wynosi maksymalnie 18.05%, oznacza to, że pociąg jest punktualny w około 82% przypadków
        # Decyzja zależy od konsekwencji spóźnienia, ale statystycznie szanse na punktualny przyjazd są wysokie