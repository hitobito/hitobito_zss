# frozen_string_literal: true

#  Copyright (c) 2012-2026, Zürcher Stadtverband für Sport. This file is part of
#  hitobito_zss and licensed under the Affero General Public License version 3
#  or later. See the COPYING file at the top-level directory or at
#  https://github.com/hitobito/hitobito_zss.

class Group::DachverbandVersa < ::Group
  ### ROLES

  class Aktiv < ::Role
  end

  class Abgelehnt < ::Role
  end

  class Sistiert < ::Role
  end

  class Ausgetreten < ::Role
  end

  class Provisorisch < ::Role
  end

  roles Aktiv, Abgelehnt, Sistiert, Ausgetreten, Provisorisch
end
