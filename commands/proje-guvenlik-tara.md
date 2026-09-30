---
description: Kod tabanında güvenlik taraması yapar (OWASP odaklı, secrets/hardcoded credential kontrolü dahil), bulguları dosya+satır bazında docs/GUVENLIK_RAPORU.md'ye yazar.
argument-hint: (argüman gerekmez, tüm değişen/proje kodunu tarar)
---

Kod tabanını (öncelikle son değişiklikleri, gerekirse tüm projeyi) güvenlik açısından incele. Kontrol listesi:

- **Injection** — SQL/command/template injection riski taşıyan girdi işleme.
- **Auth/yetkilendirme** — eksik/yanlış yetki kontrolü, IDOR.
- **Secrets** — koda gömülü API key/parola/token (özellikle `.env` dışı yerlerde).
- **Girdi doğrulama** — kullanıcı girdisinin doğrulanmadan kullanıldığı yerler (XSS dahil, web ise).
- **Bağımlılıklar** — lockfile varsa bilinen kritik açığı olan paketler (elindeki araçlarla tespit edebildiğin kadarıyla).
- **Hassas veri loglama** — parola/token/PII'nin loga/hata mesajına düşmesi.

Her bulgu için: **dosya:satır**, önem derecesi (kritik/yüksek/orta/düşük), somut istismar senaryosu (nasıl kötüye kullanılır), ve önerilen düzeltme.

Spekülatif/düşük güvenli bulguları da "düşük güven" diye işaretleyerek dahil edebilirsin ama kesin bulgulardan ayır — abartılı/temelsiz alarm üretme.

Sonucu `docs/GUVENLIK_RAPORU.md`'ye yaz: yönetici özeti (kaç kritik/yüksek bulgu var, genel risk seviyesi) + detaylı bulgu listesi. Kullanıcıya özet ver, kritik bulgu varsa hemen düzeltmeyi teklif et (otomatik düzeltme yapma, önce onay al). Sorun yoksa `/proje-dokuman` adımını öner.
