# claude-orkestra

Proje dökümanını verirsin — sırayla analiz eder, mimariyi çıkarır, görev listesine böler, kodu yazar, test eder, güvenlik taraması yapar ve dokümantasyonu günceller. Claude Code için uçtan uca bir geliştirme pipeline'ı: 9 slash komut, tek akış.

## Ne yapar

Dökümandan çalışan, test edilmiş, dokümante edilmiş koda giden 7 aşamalı bir hat kurar:

**döküman analizi → akış şeması → görev listesi → sıralı geliştirme → test → güvenlik taraması → dokümantasyon**

Her aşama bir öncekinin çıktısını okur, kendi çıktısını `docs/` altına — insan tarafından da okunabilir, git'e commit edilebilir dosyalar olarak — bırakır. `/proje-orkestra` hepsini otomatik sırayla çalıştırır; geliştirmeye geçmeden önce ve kritik bir güvenlik bulgusu çıkarsa durup senden onay ister.

## Kurulum

### Tek komutla (önerilen)

Repo'yu klonlamana gerek yok — indirir, doğru klasöre kopyalar, temizler.

**macOS / Linux:**
```bash
curl -fsSL https://raw.githubusercontent.com/toprakkulekcioglu/claude-orkestra/master/install.sh | bash
```

**Windows (PowerShell):**
```powershell
irm https://raw.githubusercontent.com/toprakkulekcioglu/claude-orkestra/master/install.ps1 | iex
```

Bu, komutları global olarak `~/.claude/commands/` altına kurar (her projede kullanılabilir). Farklı bir yere kurmak istersen script'e hedef klasörü argüman olarak ver — örneğin sadece belirli bir projeye kurmak için proje kökünde `.claude/commands`.

### Manuel (repoyu incelemek/klonlamak istersen)

```bash
git clone https://github.com/toprakkulekcioglu/claude-orkestra.git
cp claude-orkestra/commands/*.md ~/.claude/commands/
```

## Komutlar

| Komut | Ne yapar |
|---|---|
| `/proje-incele [döküman]` | Döküman analizi — kapsam, teknik gereksinimler, riskler → `docs/ANALIZ.md` |
| `/proje-akis-semasi` | Mermaid akış/mimari şeması → `docs/FLOWCHART.md` |
| `/proje-gorev-listesi` | Önceliklendirilmiş, bağımlılıklı görev listesi → `docs/TODO.md` |
| `/proje-gelistir [görev]` | Sıradaki görev(ler)i geliştirir, bağımsız işleri paralel subagent'a dağıtabilir |
| `/proje-test` | Test paketini otomatik tespit edip çalıştırır, hataları düzeltmeyi dener |
| `/proje-guvenlik-tara` | Dosya+satır bazlı güvenlik bulguları → `docs/GUVENLIK_RAPORU.md` |
| `/proje-dokuman` | README/CHANGELOG'u fiilen yapılan işe göre günceller |
| `/proje-durum` | Pipeline'ın hangi aşamada olduğunu gösterir |
| `/proje-orkestra [döküman]` | Tüm pipeline'ı sırayla çalıştırır, kritik noktalarda onay ister |

## Kullanım

```
/proje-incele proje-dokumanim.md
/proje-akis-semasi
/proje-gorev-listesi
/proje-gelistir
/proje-test
/proje-guvenlik-tara
/proje-dokuman
```

veya tek komutla:

```
/proje-orkestra proje-dokumanim.md
```

## Neden Cursor'daki orijinali değil de bu?

Fikir Cursor IDE için yazılmış iki projeden geliyor, ama onları olduğu gibi kullanmak mümkün değil: Cursor'un komut/kural dosyaları `.cursor/` klasöründe yaşıyor ve Cursor'un kendi SDK'sına (`@cursor/sdk`, `CURSOR_API_KEY`) ve agent API'sine bağımlı — Claude Code bunları hiç tanımıyor, olduğu gibi kopyalasan çalışmaz.

`claude-orkestra`, aynı iş akışı mantığını Claude Code'un kendi komut formatına (`.claude/commands/*.md`), kendi araçlarına ve kendi izin/onay modeline göre sıfırdan yazılmış hali — Cursor kullanmayan, Claude Code'da çalışan herkes için.

## Kaynak / İlham

İş akışı konsepti [Erhan Kaya](https://github.com/KayaErhan)'nın şu iki Cursor projesinden geliyor:

- [cursor-agent-tr](https://github.com/KayaErhan/cursor-agent-tr)
- [cursor-agent-code-quality-control](https://github.com/KayaErhan/cursor-agent-code-quality-control)

## Lisans

MIT
