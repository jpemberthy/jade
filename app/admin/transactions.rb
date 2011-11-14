ActiveAdmin.register Transaction do
  config.sort_order = 'date_desc'

  filter :date
  filter :payment_method, as: :select, collection: Transaction::PAYMENT_OPTIONS
  filter :amount, as: :numeric
  filter :user_name


  index do
    column(:id) { |t| link_to t.id, [:admin, t] }
    column :date
    column "Client", :user_name
    column(:amount, sortable: :amount) { |t| number_to_currency(t.amount) }
    column :payment_method
    column "Last Four Digits", :last_four
    column "Actions" do |transaction|
      link_to "Mark as Fraud", ""
    end
  end
end
