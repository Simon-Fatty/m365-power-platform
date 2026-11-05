# Ändringar vid portföljarbetet

Repot byggdes i oktober 2026 av material från supportkursen och Microsoft 365-kursen (våren 2026). Den här filen visar vad som är originalarbete och vad som ändrats.

## Sanering

- **Skripten:** de två Power Automate-URL:erna är borttagna. Signaturen i URL:en fungerar som ett lösenord, och flödena är dessutom borttagna.
- **Filnamn:** skripten har fått beskrivande namn, `Send-DeviceInventory.ps1` och `Register-NetworkDevice.ps1`. Ett ofärdigt utkast till inventeringsskriptet ingår inte.
- **Intune-exporterna:** enhetsnamn och enhets-ID ingår inte, bara antal och datum.
- **Dokumentationen** är omskriven till Markdown utan lärarens uppgiftstext. Reflektionerna i supportexaminationen ingår inte, utom supportstrategin.
- **Diagrammen** är nya, ritade i Mermaid utifrån dokumentationen.

## Förbättringar i skripten

| Skript | Ändring | Varför |
| --- | --- | --- |
| Båda | Flödets URL anges med `-FlowUrl` eller en miljövariabel | URL:en ska inte stå i koden. Samma princip som i Azure-kursen (V39, V41), där URL:en låg i en fil som `.gitignore` stoppar. |
| `Send-DeviceInventory.ps1` | Fältet `CPU` skickas med | Skriptet hämtade processorn men skickade den aldrig, fast dokumentationen sa att CPU ingår |
| `Register-NetworkDevice.ps1` | Värdena är parametrar, med originalvärdena som standard | Skriptet kan registrera fler enheter utan att koden ändras |
| Båda | `charset=utf-8` i anropet | Så att å, ä och ö kommer fram rätt |

## Tillägg i dokumentationen

- Avsnitten om dataskydd i Valentino Rental, alltså personnummer och offertlänkarna, är skrivna vid portföljarbetet och märkta så.
- Noteringen om premiumlicens för HTTP-triggern är ett tillägg.
