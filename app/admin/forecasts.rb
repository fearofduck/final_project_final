ActiveAdmin.register Forecast do

 permit_params :ds53_growth, :ds40_growth, :ds53_ct_id, :user_id, :itl_in_53, :dc_in_conv, :non_ttx_adds, :name, :cars_required, :cars_req_greater_0, :ds53_idle
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
