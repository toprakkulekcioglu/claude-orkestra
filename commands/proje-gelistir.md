---
description: docs/TODO.md'deki bir sonraki uygun görev(ler)i alır, sırayla (bağımlılığa saygılı) geliştirir, tamamlananları işaretler.
argument-hint: [opsiyonel: belirli bir görev numarası/açıklaması]
---

`docs/TODO.md` dosyasını oku. Argüman verildiyse ($ARGUMENTS) o görev(ler)e odaklan; verilmediyse bağımlılıkları çözülmüş, henüz işaretlenmemiş bir sonraki görev(ler)i seç.

Kurallar:
- Bağımlılığı bitmemiş bir görevi atlama.
- Birbirinden **tamamen bağımsız** birden fazla görev varsa, bunları paralel subagent'lara (Task tool) dağıtmayı düşünebilirsin — ama bağımlı/ilişkili görevleri sırayla, tek seferde bir tanesini bitirerek ilerle.
- Her görev için: önce mevcut kodu/konvansiyonları anla, sonra minimum gerekli değişikliği yap — görev kapsamını aşan refactor/temizlik ekleme.
- Bir görevi bitirince `docs/TODO.md`'de `[x]` olarak işaretle ve oturumun kendi todo listesini de güncelle.
- Beklenmeyen bir engelle karşılaşırsan (görev tanımı çelişkili, eksik bilgi gerektiriyor) durup kullanıcıya sor — tahmin ederek yanlış yöne ilerleme.

Sistem/paket kurulum komutları çalıştırman gerekirse, global güvenlik kuralın gereği önce açıkla ve onay al.

Bir grup görevi bitirdikten sonra durup kısa bir ilerleme özeti ver: ne yapıldı, `docs/TODO.md`'de kaç görev kaldı. Tüm liste bitince kullanıcıya `/proje-test` adımına geçmesini öner.
