ActiveAdmin.register AdminUser do
  permit_params :email, :password, :password_confirmation

  menu label: 'Администраторы'

  index do
    selectable_column
    id_column
    column :email
    column 'Текущее время входа', :current_sign_in_at
    column 'Количество входов', :sign_in_count
    column 'Создан', :created_at
    actions
  end

  filter :email
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs "Данные администратора" do
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

end
