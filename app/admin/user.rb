ActiveAdmin.register User do
  permit_params :name, :surname, :patronymic, :email, :phone, :address, :password

  menu label: 'Пользователи'

  index do
    selectable_column
    id_column
    column 'Фамилия', :surname
    column 'Имя', :name
    column 'Отчество', :patronymic
    column :email
    column 'Телефон', :phone
    column 'Адрес', :address
    column 'Зарегистрирован', :created_at
    actions
  end

  show do
    attributes_table do
      row :id
      row :surname
      row :name
      row :patronymic
      row :email
      row :phone
      row :address
      row :created_at
    end
    active_admin_comments
  end

  filter :email
  filter :address
  filter :phone
  filter :created_at

  form do |f|
    f.inputs "Данные пользователя" do
      f.input :email
      f.input :surname
      f.input :name
      f.input :patronymic
      f.input :phone
      f.input :address
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end


end
