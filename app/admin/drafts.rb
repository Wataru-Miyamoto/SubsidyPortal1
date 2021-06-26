ActiveAdmin.register Draft do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :name, :title, :period, :content, :target, :counter, :link, :emergency, :primary_sector, :other_sector, :emigration, :senior, :parenting, :other, :select, :comment, :draft_approver_id, :draft_status, :user_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :title, :period, :content, :target, :counter, :link, :emergency, :primary_sector, :other_sector, :emigration, :senior, :parenting, :other, :select, :comment, :draft_approver_id, :draft_status, :user_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  
end
