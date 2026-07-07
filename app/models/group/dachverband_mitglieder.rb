# frozen_string_literal: true

#  Copyright (c) 2012-2026, Zürcher Stadtverband für Sport. This file is part of
#  hitobito_zss and licensed under the Affero General Public License version 3
#  or later. See the COPYING file at the top-level directory or at
#  https://github.com/hitobito/hitobito_zss.

class Group::DachverbandMitglieder < ::Group
  ### ROLES

  class Mitglied < ::Role
  end

  class Ehrenmitglied < ::Role
  end

  class Passivmitglied < ::Role
  end

  class Inaktiv < ::Role
  end

  roles Mitglied, Ehrenmitglied, Passivmitglied, Inaktiv
end
