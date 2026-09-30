---
description: Proje dökümanını analiz eder — kapsam, teknik gereksinimler, riskler ve varsayımları çıkarır, docs/ANALIZ.md'ye yazar.
argument-hint: [döküman yolu veya yapıştırılmış metin]
---

Aşağıdaki proje dökümanını analiz et: $ARGUMENTS

Eğer argüman bir dosya yoluysa o dosyayı oku (Read). Argüman verilmediyse, kullanıcıdan proje dökümanını yapıştırmasını veya dosya yolunu belirtmesini iste — dökümansız devam etme.

Analiz sırasında çıkar:
1. **Kapsam** — ne yapılacak, ne yapılmayacak (açıkça belirtilmemişse tahmin etme, "belirsiz" olarak işaretle).
2. **Teknik gereksinimler** — dil/framework tercihleri, entegrasyonlar, performans/ölçek beklentileri.
3. **Riskler ve belirsizlikler** — eksik bilgi, çelişkili gereksinimler, yüksek riskli teknik kararlar.
4. **Varsayımlar** — dökümanda açık olmayıp senin tahmin ettiğin her şey, gerekçesiyle birlikte ayrı bir listede.
5. **Açık sorular** — devam etmeden önce kullanıcıya sorulması gereken kritik noktalar.

Kritik bir belirsizlik varsa (mimariyi/kapsamı köklü şekilde değiştirecek türden), tahmin etmek yerine AskUserQuestion ile sor.

Sonucu `docs/ANALIZ.md` dosyasına yapılandırılmış şekilde yaz (yoksa `docs/` klasörünü oluştur). Kullanıcıya kısa bir özet ver ve bir sonraki adımın `/proje-akis-semasi` olduğunu hatırlat.
