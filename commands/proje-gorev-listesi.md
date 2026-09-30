---
description: docs/ANALIZ.md ve docs/FLOWCHART.md'ye dayanarak önceliklendirilmiş, bağımlılıklı görev listesi çıkarır; docs/TODO.md'ye yazar ve oturumun kendi todo listesine yükler.
argument-hint: (argüman gerekmez)
---

`docs/ANALIZ.md` ve `docs/FLOWCHART.md` dosyalarını oku (biri eksikse kullanıcıya önce ilgili komutu çalıştırmasını söyle).

Bunlara dayanarak bir görev listesi çıkar:
- Her görev **tek başına test edilebilir/tamamlanabilir** boyutta olmalı (ne çok büyük "sistemi yaz", ne çok küçük "bir satır değiştir").
- Görevler arası **bağımlılıkları** belirt (X görevi Y'den önce bitmeli gibi).
- **Öncelik sırası** ver: temel/engelleyici işler önce, nice-to-have'ler sonra.
- Her görevin yanına hangi dosya(lar)ı etkileyeceğine dair kısa bir not ekle (tahmini).

Sonucu `docs/TODO.md` dosyasına checkbox formatında yaz:
```
## [Kategori]
- [ ] Görev açıklaması (bağımlılık: yok / #N)
```

Aynı listeyi bu oturumun kendi todo aracına (TodoWrite) da yükle ki ilerleme oturum içinde de görünür olsun.

Kullanıcıya listeyi özetle, kaç görev olduğunu söyle, ve bir sonraki adımın `/proje-gelistir` olduğunu hatırlat. Geliştirmeye kullanıcının onayı olmadan otomatik geçme.
