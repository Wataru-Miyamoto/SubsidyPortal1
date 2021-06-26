ActiveAdmin.register City do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :city_name, :city_code, :pref_id

  filter :id
  filter :created_at
  filter :updated_at
  filter :city_name
  filter :city_code
  filter :pref_id

  active_admin_import validate: true, batch_transaction: true, template_object: ActiveAdminImport::Model.new(
    hint: "インポートするCSVファイルにヘッダー行は必要ありません。<br>
    文字コードは CP932(Windows-31J) を想定しています。(Excelを元にしたCSVファイルを想定)<br>
    <br>
    以下の順序で設定されているファイルを取り込みます:<br>
    '市町村名', '市コード', '県ID'<br>
    <br>
    取込に失敗した場合のエラーは5件分のみ表示しています。",
    csv_headers: ['city_name', 'city_code', 'pref_id'],
    force_encoding: :'CP932'
  )
  #
  # or
  #
  # permit_params do
  #   permitted = [:city_name, :city_code, :pref_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
