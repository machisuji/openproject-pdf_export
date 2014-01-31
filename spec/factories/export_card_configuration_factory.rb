
FactoryGirl.define do
  factory :export_card_configuration do
    name "Config 1"
    rows "group1:\n  has_border: false\n  rows:\n    row1:\n      height: 50\n      priority: 1\n      columns:\n        id:\n          has_label: false"
    per_page 5
    page_size "A4"
    orientation "landscape"
  end

  factory :default_export_card_configuration, :class => ExportCardConfiguration do
    name "Default"
    active true
    rows "group1:\n  has_border: false\n  rows:\n    row1:\n      height: 50\n      priority: 1\n      columns:\n        id:\n          has_label: false"
    per_page 5
    page_size "A4"
    orientation "landscape"
  end

  factory :invalid_export_card_configuration, :class => ExportCardConfiguration do
    name "Invalid"
    rows "row1"
    per_page "string"
    page_size "asdf"
    orientation "qwer"
  end

  factory :active_export_card_configuration, :class => ExportCardConfiguration do
    name "Config active"
    active true
    rows "group1:\n  has_border: false\n  rows:\n    row1:\n      height: 50\n      priority: 1\n      columns:\n        id:\n          has_label: false"
    per_page 5
    page_size "A4"
    orientation "landscape"
  end

  factory :inactive_export_card_configuration, :class => ExportCardConfiguration do
    name "Config inactive"
    active false
    rows "group1:\n  has_border: false\n  rows:\n    row1:\n      height: 50\n      priority: 1\n      columns:\n        id:\n          has_label: false"
    per_page 5
    page_size "A4"
    orientation "landscape"
  end
end