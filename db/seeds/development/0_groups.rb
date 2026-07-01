# frozen_string_literal: true

#  Copyright (c) 2012-2026, Zürcher Stadtverband für Sport. This file is part of
#  hitobito_zss and licensed under the Affero General Public License version 3
#  or later. See the COPYING file at the top-level directory or at
#  https://github.com/hitobito/hitobito_zss.


require Rails.root.join("db", "seeds", "support", "group_seeder")

seeder = GroupSeeder.new

root = Group.roots.first
srand(42)

if root.address.blank?
  root.update(seeder.group_attributes)
  root.default_children.each do |child_class|
    child_class.first.update(seeder.group_attributes)
  end
end

fussballverband = Group::Verband.seed_once(:name,
  parent_id: root.id,
  name: "Fussballverband Zürich").first

turnverband = Group::Verband.seed_once(:name,
  parent_id: root.id,
  name: "Turnverband Zürich").first

[
  "FC Zürich",
  "FC Winterthur"
].each do |name|
  Group::Verein.seed_once(:name, parent_id: fussballverband.id, name: name)
end

Group::Verein.seed_once(:name,
  parent_id: turnverband.id,
  name: "TV Zürich-Oerlikon")

Group::Verein.seed_once(:name,
  parent_id: root.id,
  name: "Leichtathletikclub Zürich")

pfadi = Group::AssoziiertesMitglied.seed_once(:name,
  parent_id: root.id,
  name: "Pfadi Zürich").first

Group::Verein.seed_once(:name,
  parent_id: pfadi.id,
  name: "Pfadiabteilung Wehntal")

Group.rebuild!
