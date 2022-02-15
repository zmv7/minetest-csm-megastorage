local mega = 'size[32.5,21]scroll_container[0,0;42,19;;vertical;0.4]list[current_player;mega;0,0;32,64]scroll_container_end[]list[current_player;main;12,17;8,4]listring[]label[29,18.2;Trash:]list[detached:trash;main;30,18;1,1]scrollbaroptions[max=142;thumbsize=50]scrollbar[32,0;0.5,16;vertical;;0]'
minetest.register_chatcommand("m", {
    params = "[<set>]",
    description = "Open megastorage",
    func = function(param)
core.show_formspec('mega',mega)
   if param == "set" then
core.run_server_chatcommand('/lua','minetest.get_player_by_name("'..core.localplayer:get_name()..'"):get_inventory():set_size("mega", 64*32)')
   end
end,
})
core.register_on_inventory_open(function(inventory)
if core.localplayer:get_control().aux1 and not core.localplayer:get_control().sneak then
    core.show_formspec('mega',mega)
end
end)
minetest.register_chatcommand("tr", {
    description = "Open trasher",
    func = function()
core.show_formspec('tr','size[8,5]list[current_player;main;0,1;8,4]list[detached:trash;main;3.5,0;1,1]listring[]image[3.47,0;1,1;creative_trash_icon.png]')
    end,
})
minetest.register_chatcommand("rf", {
    description = "Open refiller",
    func = function()
core.show_formspec('rf','size[8,5]list[current_player;main;0,1;8,4]list[detached:Zemtzov7refill;main;3.5,0;1,1]listring[]')
    end,
})
