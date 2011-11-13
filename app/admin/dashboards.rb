ActiveAdmin::Dashboards.build do
  section "Recent Transactions" do
    table_for Transaction.recent(5) do
      column(:id) { |t| link_to t.id, [:admin, t] }
      column :date
      column :user_name
      column(:amount, sortable: :amount) { |t| number_to_currency(t.amount) }
      column :payment_method
      column :last_four
    end
  end
end
