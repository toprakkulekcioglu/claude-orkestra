---
description: Pipeline'ın hangi aşamada olduğunu gösterir — docs/ altındaki dosyaları ve docs/TODO.md ilerleme durumunu özetler.
argument-hint: (argüman gerekmez)
---

`docs/` klasörünü kontrol et ve şu dosyaların var olup olmadığına bak: `ANALIZ.md`, `FLOWCHART.md`, `TODO.md`, `GUVENLIK_RAPORU.md`. Varsa içeriklerine göz at (özellikle `TODO.md`'deki `[x]`/`[ ]` sayısı).

Kullanıcıya net bir durum tablosu ver:

| Aşama | Durum |
|---|---|
| 1. Döküman analizi | ✅ / ⬜ |
| 2. Akış şeması | ✅ / ⬜ |
| 3. Görev listesi | ✅ / ⬜ (N/M görev tamamlandı) |
| 4. Geliştirme | devam ediyor / bitti / başlamadı |
| 5. Test | ✅ / ⬜ / bilinmiyor |
| 6. Güvenlik taraması | ✅ (kritik bulgu var mı) / ⬜ |
| 7. Dokümantasyon | ✅ / ⬜ |

Ardından sırada hangi komutun (`/proje-incele`, `/proje-akis-semasi`, `/proje-gorev-listesi`, `/proje-gelistir`, `/proje-test`, `/proje-guvenlik-tara`, `/proje-dokuman`) çalıştırılması gerektiğini öner.
