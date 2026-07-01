# frozen_string_literal: true

#  Copyright (c) 2012-2026, Zürcher Stadtverband für Sport. This file is part of
#  hitobito_zss and licensed under the Affero General Public License version 3
#  or later. See the COPYING file at the top-level directory or at
#  https://github.com/hitobito/hitobito_zss.

class Group::Verein < ::Group
  self.layer = true

  children VereinKontakte

  self.default_children = [VereinKontakte]

  ### ROLES

  class Praesident < ::Role
  end

  class Administration < ::Role
    self.permissions = [:layer_full]
  end

  class Verein < ::Role
  end

  class Jugendsportverantwortlicher < ::Role
  end

  class Mitarbeitender < ::Role
  end

  class MitarbeitenderSelfjugendsport < ::Role
  end

  roles Praesident, Administration, Verein, Jugendsportverantwortlicher,
    Mitarbeitender, MitarbeitenderSelfjugendsport
end
