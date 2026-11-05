# Microsoft 365, Power Platform och Intune

Tre projekt där jag använt Microsoft 365 för att automatisera arbetsflöden och hantera enheter: ett supportsystem med hårdvaruövervakning, en biluthyrning byggd på Dataverse och fem flöden, och enhetshantering med Intune. Projekten gjordes under utbildningen till Moln- och virtualiseringsspecialist på Campus Mölndal, våren 2026.

> Alla företag, personer och data är fiktiva.

## Projekten

| Projekt | Typ | Innehåll |
| --- | --- | --- |
| [IT Device Management och support](01-it-device-management/README.md) | Individuellt, examination med betyget VG | Ärendehantering med SLA och eskalering i Teams, SharePoint, Power Apps och Power Automate. Hårdvaruinventering med PowerShell som skickar data till ett flöde. |
| [Valentino Rental](02-valentino-rental/README.md) | Gemensamt grupparbete | Biluthyrning i Dataverse med sju tabeller och fem flöden: bokning, offert, kundens svar, bekräftelse och återlämning |
| [Intune och Power Apps – Nordvik](03-intune-och-nordvik/README.md) | Individuell examination | Security baseline, Settings catalog, kiosk, lokala administratörer och efterlevnadsprinciper i Intune. En Power Apps-app för fastighetsförvaltning. |

## Teknik

Microsoft Teams · SharePoint Online · Power Apps · Dataverse · Power Automate (HTTP-, Forms- och Dataverse-triggers, schemalagda flöden, Adaptive Cards) · Microsoft Forms · Outlook · Microsoft Intune · PowerShell (CIM, `Invoke-RestMethod`)

## Vad projekten visar

- **Processförståelse:** ett supportflöde med kategorisering, SLA, eskalering och kunskapsbas, inte bara verktyg.
- **Automatisering:** data går från en klientdator via PowerShell och HTTP till SharePoint, och därifrån till Teams och e-post.
- **Datamodellering:** relationer, lookups och beräknade kolumner i Dataverse.
- **Enhetshantering:** baslinjer, konfigurationsprofiler och efterlevnad i Intune.
- **Säker hantering av hemligheter:** flödes-URL:er stod först direkt i skripten och anges nu som parameter. Se [CHANGES.md](CHANGES.md).

## Begränsningar i underlaget

Flera inlämningar var videoinspelningar, så det finns inga skärmbilder av apparna, flödena eller Intune-portalen. Beskrivningarna bygger på min skriftliga dokumentation, tentasvar, exporter från Intune och de två skripten.
