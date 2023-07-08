trashList = {2,3,48}

function trash()
    for i, trash in ipairs(trashList) do
        if findItem (trash) > 0 then
            sendPacket("action|trash\n|itemID|"..trash, 2)
            sleep(1000)
            sendPacket("action|dialog_return\ndialog_name|trash_item\nitemID|"..trash.."|\ncount|"..findItem(trash), 2)
            sleep(1000)
        end
    end
end

function pindworld() 
totTxt = ""
for i = 19,1,-1 do
totTxt = totTxt..string.char(math.random(97,122))
end
sendPacket("action|join_request\nname|" .. totTxt.."\ninvitedWorld|0",3)
sleep(3000)
end

function tulis(text)
    local file = io.open("log_pick.txt", "a")
    if file then
        file:write (text.."\n")
        file:close()
    end
end
tulis("-------------------------")

function dropp()
  sendPacket( "action|drop\nitemID|98", 2)  
  sleep(1000)
  sendPacket("action|dialog_return\ndialog_name|drop_item\nitemID|98|\ncount|"..findItem(98)-1, 2)
sleep(2000)   
end

function warp(world,id)
  while getBot().world ~= world:upper() do
    sendPacket("action|join_request\nname|"..world:upper().."\ninvitedWorld|0",3)
    sleep(5000)
  end
  while getTile(math.floor(getBot().x/32),math.floor(getBot().y/32)).fg == 6 do
    sendPacket("action|join_request\nname|"..world:upper().."|"..id:upper().."\ninvitedWorld|0",3)
    sleep(4000)
  end
end

function take()
  for _, obj in pairs(getObjects()) do
     if obj.id == 98 then
        findPath(math.floor(obj.x/32),math.floor(obj.y/32))
        sleep(100)
        collect(2)
        sleep(100)
        if findItem(98) > 0 then
        break
      end
    end 
  end
end

for _, bot in pairs(BotName) do
  addBot(bot,pw)
  sleep(5000)
  while getBot().status ~= "online" do 
      connect()
      sleep(10000)
  end 
  warp(world,IDDoor)
  sleep(300)
  take()
  sleep(300)
  wear(98)
  sleep(1000)
  move(-1,0)
  sleep(1500)
  dropp()
  sleep(1000)
  pindworld()
  place(9640)
  sleep(500)
  trash()
  sleep(1000)
  local bot = getBot().name 
  tulis(bot.." ||DONE BANG !!!")
  sendPacket("action|join_request\nname|EXIT\ninvitedWorld|0",3)
  sleep(2000)
  removeBot(getBot().name)
  sleep(5000)
end

trashList = {2,3,48}

function trash()
    for i, trash in ipairs(trashList) do
        if findItem (trash) > 0 then
            sendPacket("action|trash\n|itemID|"..trash, 2)
            sleep(1000)
            sendPacket("action|dialog_return\ndialog_name|trash_item\nitemID|"..trash.."|\ncount|"..findItem(trash), 2)
            sleep(1000)
        end
    end
end

function pindworld() 
totTxt = ""
for i = 19,1,-1 do
totTxt = totTxt..string.char(math.random(97,122))
end
sendPacket("action|join_request\nname|" .. totTxt.."\ninvitedWorld|0",3)
sleep(3000)
end

function tulis(text)
    local file = io.open("log_pick.txt", "a")
    if file then
        file:write (text.."\n")
        file:close()
    end
end
tulis("-------------------------")

function dropp()
  sendPacket( "action|drop\nitemID|98", 2)  
  sleep(1000)
  sendPacket("action|dialog_return\ndialog_name|drop_item\nitemID|98|\ncount|"..findItem(98)-1, 2)
sleep(2000)   
end

function warp(world,id)
  while getBot().world ~= world:upper() do
    sendPacket("action|join_request\nname|"..world:upper().."\ninvitedWorld|0",3)
    sleep(5000)
  end
  while getTile(math.floor(getBot().x/32),math.floor(getBot().y/32)).fg == 6 do
    sendPacket("action|join_request\nname|"..world:upper().."|"..id:upper().."\ninvitedWorld|0",3)
    sleep(4000)
  end
end

function take()
  for _, obj in pairs(getObjects()) do
     if obj.id == 98 then
        findPath(math.floor(obj.x/32),math.floor(obj.y/32))
        sleep(100)
        collect(2)
        sleep(100)
        if findItem(98) > 0 then
        break
      end
    end 
  end
end

for _, bot in pairs(BotName) do
  addBot(bot,pw)
  sleep(5000)
  while getBot().status ~= "online" do 
      connect()
      sleep(10000)
  end 
  warp(world,IDDoor)
  sleep(300)
  take()
  sleep(300)
  wear(98)
  sleep(1000)
  move(-1,0)
  sleep(1500)
  dropp()
  sleep(1000)
  pindworld()
  place(9640)
  sleep(500)
  trash()
  sleep(1000)
  local bot = getBot().name 
  tulis(bot.." ||DONE BANG !!!")
  sendPacket("action|join_request\nname|EXIT\ninvitedWorld|0",3)
  sleep(2000)
  removeBot(getBot().name)
  sleep(5000)
end

