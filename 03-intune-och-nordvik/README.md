# Intune och Power Apps – Nordvik-tentan

Examinationen i Microsoft 365-kursen (maj 2026) gällde det fiktiva fastighetsbolaget Nordvik: enhetshantering med Intune och en app i Power Apps.

**Typ:** individuell examination. Underlaget är tre exporter från Intune och mitt skriftliga tentasvar. Det finns inga skärmbilder, och exporterna visar namn, typ och datum, inte själva inställningarna.

## Intune

Exporterna från tenanten, april–maj 2026:

| Typ | Namn | Principtyp |
| --- | --- | --- |
| Konfigurationsprofil | Security Baseline – G-nivå | Security Baseline |
| Konfigurationsprofil | Konfigurationsprofil G-nivå | Inställningskatalog (Settings catalog) |
| Konfigurationsprofil | Config_Personal_Devices_VG | Inställningskatalog |
| Konfigurationsprofil | Kiosk_Nordvik_VG | Helskärmsläge (Kiosk) |
| Konfigurationsprofil | LocalAdmin | Lokal användargrupp (Local user group membership) |
| Efterlevnadsprincip | Compliance G-nivå | – |
| Efterlevnadsprincip | COMP policy devices_Personal | – |
| Efterlevnadsprincip | COMP policy test 1 | – |

Tio enheter var registrerade mellan 19 april och 7 maj 2026. Enhetsnamn och enhets-ID ingår inte i portföljen.

Profilerna visar att jag arbetat med:

- en säkerhetsbaslinje,
- inställningar via Settings catalog, bland annat en profil för personliga enheter,
- en kioskprofil, där en enhet bara kör utvalda appar,
- hantering av lokala administratörer via Intune,
- efterlevnadsprinciper för olika typer av enheter.

## Power Apps och Dataverse

Mitt VG-svar beskriver appen jag byggde för Nordvik:

- **En gemensam datakälla:** fastigheter, hyresgäster och arbetsordrar i Dataverse i stället för utspridda Excel-filer och mejl. Hyresgäster är kopplade till fastigheter med lookups, så det finns inga lösa hyresgäster.
- **Arbetsordrar på plats:** en fastighetsansvarig registrerar en arbetsorder i appen direkt där felet upptäcks, och kontoret ser statusen direkt.
- **Varningsflöden:** Power Automate varnar när något inte stämmer eller när en arbetsorder blivit liggande.
- **Dubblettskydd:** samma hyresgäst kan inte registreras två gånger.
