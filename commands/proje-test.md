---
description: Projenin test paketini otomatik tespit edip çalıştırır, hataları raporlar ve düzeltmeyi dener.
argument-hint: (argüman gerekmez)
---

Projede hangi test aracının kullanıldığını dosyalardan tespit et (`package.json` scripts, `pytest.ini`/`pyproject.toml`, `go.mod`, `Cargo.toml`, `*.csproj` vb.).

Test komutunu çalıştırmadan önce global güvenlik kuralın gereği hangi komutu neden çalıştıracağını kısaca söyle ve onay al.

Testleri çalıştır. Başarısız olanlar varsa:
1. Her hatayı oku, kök nedeni belirle (üstünkörü "try/catch ile geç" gibi çözümler değil).
2. Düzelt, testleri tekrar çalıştır.
3. Yine başarısızsa ve kök neden belirsizse, tahmin ederek sürekli deneme yapma — durumu kullanıcıya açıkça anlat (hangi test, neden takıldın).

Testi olmayan yeni bir işlevsellik varsa ve kritikse, eksik olduğunu belirt — sessizce atlama.

Sonunda: kaç test geçti/kaldı, ne düzeltildi, hâlâ açık olan bir sorun var mı — net bir özet ver. Her şey yeşilse kullanıcıya `/proje-guvenlik-tara` adımını öner.
