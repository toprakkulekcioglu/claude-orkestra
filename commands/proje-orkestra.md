---
description: Tüm pipeline'ı baştan sona sırayla çalıştırır — döküman analizi → akış şeması → görev listesi → geliştirme → test → güvenlik taraması → dokümantasyon.
argument-hint: [döküman yolu veya yapıştırılmış metin]
---

Bu, tüm iş akışını yöneten orkestratör. Sıra: **döküman analizi → akış şeması → görev listesi → sıralı geliştirme → test → güvenlik taraması → dokümantasyon**.

Önce `/proje-durum` mantığıyla hangi aşamaların zaten tamamlandığını kontrol et (docs/ altındaki dosyalara bak) — baştan başlama, kaldığı yerden devam et.

Sırayla:
1. `docs/ANALIZ.md` yoksa, `proje-incele.md` komutunun içeriğindeki mantığı $ARGUMENTS ile uygula.
2. `docs/FLOWCHART.md` yoksa, `proje-akis-semasi.md` komutunun mantığını uygula.
3. `docs/TODO.md` yoksa, `proje-gorev-listesi.md` komutunun mantığını uygula.
4. **Burada dur ve kullanıcıdan onay al** — görev listesini göster, geliştirmeye geçmeden önce "başlayayım mı?" diye sor. (Kod yazımı en yüksek etkili/geri döndürülmesi en zor adım, otomatik başlama.)
5. Onay sonrası `proje-gelistir.md` mantığıyla, `docs/TODO.md`'deki tüm görevler bitene kadar tekrarla (her turda ilerleme özeti ver).
6. `proje-test.md` mantığını uygula.
7. `proje-guvenlik-tara.md` mantığını uygula — kritik/yüksek bulgu varsa dur, kullanıcıya sor, otomatik "bitti" deme.
8. `proje-dokuman.md` mantığını uygula.

Her aşama geçişinde oturumun todo listesini (TodoWrite) pipeline'ın 7 aşamasına göre güncel tut, böylece ilerleme her an görünür olsun.

Sistem komutu/script çalıştırman gerektiğinde global güvenlik kuralın (önce açıkla, onay al) her zaman geçerli — orkestratör modu bu kuralı atlamaz.
