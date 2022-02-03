minetest.register_chatcommand("m", {
    params = "[<set>]",
    description = "Open megastorage",
    func = function(param)
core.show_formspec('mega','size[32.5,21]scroll_container[0,0;42,19;;vertical;0.4]list[current_player;mega;0,0;32,64]listring[current_player;mega]scroll_container_end[]list[current_player;main;12,17;8,4]listring[current_player;main]label[29,18.2;Trash:]list[detached:trash;main;30,18;1,1]scrollbaroptions[max=142;thumbsize=50]scrollbar[32,0;0.5,16;vertical;;0]')
   if param == "set" then
core.run_server_chatcommand('/lua','minetest.get_player_by_name("'..core.localplayer:get_name()..'"):get_inventory():set_size("mega", 64*32)')
   end
end,
})
