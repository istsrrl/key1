json.array!(@for_selects) do |for_select|
  json.extract! for_select, :id, :code, :value, :text, :grouper, :option_order, :facility, :created_at, :updated_at
  json.url for_select_url(for_select, format: :json)
end
