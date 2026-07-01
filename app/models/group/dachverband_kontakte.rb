# frozen_string_literal: true

#  Copyright (c) 2012-2026, Zürcher Stadtverband für Sport. This file is part of
#  hitobito_zss and licensed under the Affero General Public License version 3
#  or later. See the COPYING file at the top-level directory or at
#  https://github.com/hitobito/hitobito_zss.

class Group::DachverbandKontakte < ::Group
  children DachverbandKontakte

  ### ROLES

  class Kontakt < ::Role
  end

  class Mitarbeitender < ::Role
  end

  class Jugendsportveranstalter < ::Role
  end

  roles Kontakt, Mitarbeitender, Jugendsportveranstalter
end
