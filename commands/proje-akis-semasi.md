---
description: docs/ANALIZ.md'ye dayanarak sistem mimarisi ve akış şemasını (Mermaid) çıkarır, docs/FLOWCHART.md'ye yazar.
argument-hint: (argüman gerekmez, docs/ANALIZ.md'yi okur)
---

`docs/ANALIZ.md` dosyasını oku (yoksa kullanıcıya önce `/proje-incele` çalıştırmasını söyle, tahmin ederek devam etme).

Analiz edilen kapsama dayanarak şunları hazırla:
1. **Bileşen/mimari diyagramı** — sistemin ana parçaları (frontend, backend, veritabanı, dış servisler vb.) ve aralarındaki ilişki.
2. **Veri akışı** — bir isteğin/işlemin sistemden nasıl geçtiği.
3. **Kullanıcı akışı** (varsa uygulama bir son-kullanıcı arayüzü içeriyorsa) — ana kullanıcı yolculukları.

Her diyagramı geçerli bir **Mermaid** bloğu olarak yaz (`graph TD`, `sequenceDiagram` veya `flowchart` — içeriğe en uygun olanı seç). Aşırı detaya kaçma; okunabilir, gerçek karar vermeye yarayan bir seviyede tut.

Sonucu `docs/FLOWCHART.md` dosyasına yaz. Kullanıcıya kısa bir özet ver ve bir sonraki adımın `/proje-gorev-listesi` olduğunu hatırlat.
