if @state.nil?
	node("error") {"record not found"}
	node("status") {"404"}
else
	object @state
	attributes :name, :code
	node("status") {"200 OK"}	
end
