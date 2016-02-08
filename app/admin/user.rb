ActiveAdmin.register User do
  permit_params :name, :surname, :patronymic, :email, :phone, :address, :encrypted_password

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
