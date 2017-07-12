if @state.nil?
	node(:error){"#{params[:id]} not found"}
elsif @state.valid?	
	node(:message) {"#{@state.name} details was updated"}
	node(:status) {"200"}
else
	node(:error) {"record not saved"}
	node(:reason) {@state.errors.full_messages}
end