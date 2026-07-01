# Hitobito Zss

This hitobito wagon defines the organization hierarchy with groups and roles
of Zss.


## Zss Organization Hierarchy

<!-- roles:start -->
    * Dachverband
      * Dachverband
        * Administrator:in: [:admin, :layer_and_below_full, :impersonation]
      * Vorstand
        * Präsident:in: [:group_read]
        * Mitglied: [:group_read]
      * Mitarbeitende
        * Mitarbeitende:r: [:layer_and_below_full, :approve_applications, :finance]
      * Mitglieder
        * Mitglied: []
        * Ehrenmitglied: []
        * Passivmitglied: []
        * Inaktiv: []
      * Gönner
        * Bronze: []
        * Silber: []
        * Gold: []
        * Platin: []
      * Versa
        * Aktiv: []
        * Abgelehnt: []
        * Sistiert: []
        * Ausgetreten: []
        * Provisorisch: []
      * Kontakte
        * Kontakt: []
        * Mitarbeitende:r: []
        * Jugendsportveranstalter: []
    * Verband < Dachverband
      * Verband
        * Präsident:in: []
        * Administration: [:layer_full]
        * Verband: []
        * Jugendsportverantwortliche:r: []
        * Mitarbeitende:r: []
        * Mitarbeitende:r Selfjugendsport: []
      * Kontakte
        * Administration: [:group_full]
        * Kontakt: []
        * Mitarbeitende:r: []
    * Verein < Assoziiertes Mitglied, Verband, Dachverband
      * Verein
        * Präsident:in: []
        * Administration: [:layer_full]
        * Verein: []
        * Jugendsportverantwortliche:r: []
        * Mitarbeitende:r: []
        * Mitarbeitende:r Selfjugendsport: []
      * Kontakte
        * Administration: [:group_full]
        * Kontakt: []
        * Mitarbeitende:r: []
    * Assoziiertes Mitglied < Dachverband
      * Assoziiertes Mitglied
        * Präsident:in: []
        * Administration: [:layer_full]
        * Assoziiertes Mitglied: []
        * Jugendsportverantwortliche:r: []
        * Mitarbeitende:r: []
        * Mitarbeitende:r Selfjugendsport: []
      * Kontakte
        * Administration: [:group_full]
        * Kontakt: []
        * Mitarbeitende:r: []

(Output of rake app:hitobito:roles)
<!-- roles:end -->