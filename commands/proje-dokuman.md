---
description: Fiilen yazılmış koda dayanarak README, CHANGELOG ve kullanım kılavuzunu günceller (docs/TODO.md ve git geçmişinden çıkararak).
argument-hint: (argüman gerekmez)
---

`docs/TODO.md`'deki tamamlanmış görevleri ve (varsa) son git commit'lerini/diff'i incele — dokümantasyonu **gerçekten yapılmış olana** dayandır, planlanan/istenen ama henüz yapılmamış özellikleri yazma.

Güncelle/oluştur:
1. **README.md** — proje ne yapıyor, nasıl kurulur/çalıştırılır, temel kullanım. Zaten varsa üzerine yaz değil, mevcut yapıyı koruyarak güncelle.
2. **CHANGELOG.md** — bu oturumda/bu geliştirme turunda yapılan değişiklikler için yeni bir giriş (tarih + özet madde listesi). Yoksa oluştur.
3. Gerekiyorsa kısa bir **kullanım kılavuzu** (README içinde bir bölüm olarak, ayrı dosyaya gerek yoksa açma).

Emin olmadığın (ör. kurulum komutu, environment variable adı) bir şeyi uydurma — kod/config dosyalarından doğrula, doğrulayamıyorsan kullanıcıya sor.

İşin sonunda kullanıcıya değişen dosyaları özetle. Bu, pipeline'ın son adımı — `docs/TODO.md`, `docs/GUVENLIK_RAPORU.md` ve doküman güncellemelerinin hepsinin tamam olduğunu teyit et.
