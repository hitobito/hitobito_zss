# frozen_string_literal: true

#  Copyright (c) 2012-2026, Zürcher Stadtverband für Sport. This file is part of
#  hitobito_zss and licensed under the Affero General Public License version 3
#  or later. See the COPYING file at the top-level directory or at
#  https://github.com/hitobito/hitobito_zss.

class Group::DachverbandGoenner < ::Group
  ### ROLES

  class Bronze < ::Role
  end

  class Silber < ::Role
  end

  class Gold < ::Role
  end

  class Platin < ::Role
  end

  roles Bronze, Silber, Gold, Platin
end
