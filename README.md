# claude-orkestra

Claude Code için, döküman → kod'a giden tam bir proje geliştirme pipeline'ı sağlayan slash komut seti.

**Akış:** döküman analizi → akış şeması → görev listesi → sıralı geliştirme → test → güvenlik taraması → dokümantasyon.

Her aşama, bir sonrakinin girdisini okuyan ve `docs/` altına kalıcı, insan-okunabilir çıktı (`ANALIZ.md`, `FLOWCHART.md`, `TODO.md`, `GUVENLIK_RAPORU.md`) bırakan ayrı bir komut. `/proje-orkestra` hepsini sırayla çalıştırır; geliştirmeye geçmeden önce ve kritik güvenlik bulgusunda durup onay ister.

## Kurulum

`commands/` klasöründeki dosyaları Claude Code'un komut klasörüne kopyala:

**Global (her projede kullanılabilir):**
```bash
cp commands/*.md ~/.claude/commands/
```

**Sadece bu proje için:**
```bash
mkdir -p .claude/commands
cp commands/*.md .claude/commands/
```

Windows / PowerShell:
```powershell
Copy-Item commands\*.md "$env:USERPROFILE\.claude\commands\"
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

## Notlar

- Claude Code'un zaten sahip olduğu yeteneklerle (Plan mode, TodoWrite, Task tool ile subagent, `security-review` skill'i, `superpowers` eklentisi) kısmen örtüşür. Bu komutlar, aynı işi **açık, zorunlu bir sırayla ve kalıcı `docs/` çıktılarıyla** yapmak isteyenler için bir alternatif — otomatik/bağlamsal tetiklenen yerleşik yeteneklerin yerine geçmek zorunda değil, yanında durabilir.
- Sistem komutu/script çalıştırılması gereken adımlarda (`npm install`, test çalıştırma vb.) Claude Code kendi izin/onay akışını izler.

## Kaynak / İlham

Bu proje, [Erhan Kaya](https://github.com/KayaErhan)'nın **Cursor IDE** için hazırladığı şu iki projedeki iş akışı mantığından ilham alınarak, **Claude Code** için baştan yazılmıştır:

- [cursor-agent-tr](https://github.com/KayaErhan/cursor-agent-tr) — otonom geliştirme ajanı (döküman analizi → akış şeması → görev planlama → geliştirme → test → güvenlik taraması → dokümantasyon)
- [cursor-agent-code-quality-control](https://github.com/KayaErhan/cursor-agent-code-quality-control) — kod kalite/güvenlik denetim ajanı

Komut içerikleri orijinal olarak yeniden yazılmıştır (doğrudan kopya değildir) ve Claude Code'un kendi araç/izin modeline uyarlanmıştır; Cursor'a özgü kısımlar (10 agent orkestrasyonu, Cursor SDK'ya bağımlı CLI modu, zorunlu admin paneli/tech-stack dayatmaları, Docker/CI entegrasyonu) kasıtlı olarak alınmamıştır — sadece genel iş akışı mantığı taşınmıştır.

## Lisans

MIT
