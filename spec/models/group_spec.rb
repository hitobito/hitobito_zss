# frozen_string_literal: true

#  Copyright (c) 2012-2026, Zürcher Stadtverband für Sport. This file is part of
#  hitobito_zss and licensed under the Affero General Public License version 3
#  or later. See the COPYING file at the top-level directory or at
#  https://github.com/hitobito/hitobito_zss.

require "spec_helper"

describe Group do
  let(:root) { groups(:root) }

  include_examples "group types"

  it "creates Zürisport group as default child of Dachverband" do
    dachverband = Group::Dachverband.create!(name: "Dachverband")

    expect(dachverband.children.map(&:class)).to include(Group::DachverbandZuerisport)
  end

  it "creates Mitglieder and Kontakte groups as default children of Verein" do
    verein = Group::Verein.create!(name: "Verein", parent: root)

    expect(verein.children.map(&:class))
      .to contain_exactly(Group::VereinMitglieder, Group::VereinKontakte)
  end

  [Group::Verband, Group::Verein, Group::AssoziiertesMitglied].each do |layer_type|
    it "offers Geschäftsstelle role in #{layer_type.label}" do
      expect(layer_type.role_types).to include(layer_type::Geschaeftsstelle)
      expect(layer_type::Geschaeftsstelle.label).to eq "Geschäftsstelle"
    end
  end
end
