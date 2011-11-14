ActiveAdmin.register Transaction do
  filter :date
  filter :payment_method, as: :select, collection: Transaction::PAYMENT_OPTIONS
  filter :amount, as: :numeric
  filter :user_name

  index do
    column(:id) { |t| link_to t.id, [:admin, t] }
    column :date
    column :user_name
    column(:amount, sortable: :amount) { |t| number_to_currency(t.amount) }
    column :payment_method
    column :last_four

    default_actions
  end

  controller do
    def index
      # I know this is horrible but they don't support yet a default sort order.
      # https://github.com/gregbell/active_admin/issues/352#issuecomment-2724249
      params[:order] ||= "date_desc"
      index!
    end
  end
end
