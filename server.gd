extends Node

const PORT        = 5000
const MAX_PLAYERS = 200

func _ready():
	var server = NetworkedMultiplayerENet.new()
	server.create_server(PORT, MAX_PLAYERS)
	get_tree().set_network_peer(server)
	get_tree().connect("network_peer_connected",    self, "_client_connected"   )
	get_tree().connect("network_peer_disconnected", self, "_client_disconnected")
	print("Server is ready")

func _client_connected(id):
	print('Client ' + str(id) + ' connected to Server')
	pass
	
func _client_disconnected():
	
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
