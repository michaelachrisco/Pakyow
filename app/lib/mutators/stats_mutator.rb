Pakyow::App.mutators :stats do
  mutator :post do |view, data|
    view.bind(data)
  end
end
