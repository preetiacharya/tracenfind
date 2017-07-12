if @state.valid?
	object @state
	attributes :id, :name, :code
	node(:status) {"200"}
	node(:message) {"OK"}
else
	node(:error) {"record not saved"}
	node(:reason) {@state.errors.full_messages}
end