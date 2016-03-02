ActiveAdmin.register Company do
  permit_params :name, :description, :email, :image, :address, :phone, :password
  menu label: 'Компании'

  index do
    selectable_column
    id_column
    column 'Изображение' do |company|
      image_tag company.image_url(:small) if company.image?
    end
    column :email
    column 'Название', :name
    column 'Адрес', :address
    column 'Телефон', :phone
    column 'Создана', :created_at
    actions
  end

  show do
    attributes_table do
      row :id
      row :image do |company|
        image_tag company.image_url(:small) if company.image?
      end
      row :email
      row :name
      row :address
      row :phone
      row :description
      row :created_at
    end
    active_admin_comments
  end

  filter :email
  filter :address
  filter :phone
  filter :created_at

  form do |f|
    f.inputs "Данные компании" do
      f.input :email
      f.input :name
      f.input :description
      f.input :phone
      f.input :address
      f.input :image
    end
    f.actions
  end
# See permitted parameters do
# See permitted parameters do
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
