# frozen_string_literal: true

#  Copyright (c) 2012-2026, Zürcher Stadtverband für Sport. This file is part of
#  hitobito_zss and licensed under the Affero General Public License version 3
#  or later. See the COPYING file at the top-level directory or at
#  https://github.com/hitobito/hitobito_zss.

class Group::Dachverband < ::Group
  self.layer = true

  children DachverbandVorstand,
    DachverbandMitarbeitende,
    DachverbandMitglieder,
    DachverbandGoenner,
    DachverbandVersa,
    DachverbandKontakte,
    Verband,
    AssoziiertesMitglied,
    Verein

  self.default_children = [
    DachverbandVorstand,
    DachverbandMitarbeitende,
    DachverbandMitglieder,
    DachverbandGoenner,
    DachverbandVersa,
    DachverbandKontakte
  ]

  ### ROLES

  class Administrator < ::Role
    self.permissions = [:admin, :layer_and_below_full, :impersonation]
  end

  roles Administrator
end
