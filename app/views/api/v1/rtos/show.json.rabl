if @rto.nil?
	node("error"){"#{params[:id]} is not found"}
	node("status"){"404"}
else
	object @rto
	attributes :id, :code, :vehicle_number, :registration_office, :address, :phone_number
	node(:state_name) {@rto.state.name}
	child :state do
	attributes :name, :code
	end	
end
	