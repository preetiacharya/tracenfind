if @state.nil?
	node(:error){"#{params[:id]} not found"}
else
	node(:message){"#{@state.name} was deleted"}
	node(:status){"200"}
end	