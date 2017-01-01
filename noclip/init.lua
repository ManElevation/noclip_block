minetest.register_node("noclip:noclip_block", {
	description = "Noclip Block",
	drawtype = "signlike",
	tiles = {"noclip_viewer_box.png"},
	inventory_image = "noclip_viewer_box.png",
	wield_image = "noclip_viewer_box.png",
	paramtype = "light",
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	walkable = false,
	selection_box = {
		type = "wallmounted",
		--wall_top = <default>
		--wall_bottom = <default>
		--wall_side = <default>
	},
	groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3},
	sounds = default.node_sound_glass_defaults(),
	legacy_wallmounted = true,
})

minetest.register_craft({
	output = 'noclip:noclip_block', 
	recipe = {
		{'default:glass', 'default:glass'                , 'default:glass'},
		{'default:glass', 'default:mese_crystal_fragment', 'default:glass'},
		{'default:glass', 'default:glass'                , 'default:glass'},
	}
})