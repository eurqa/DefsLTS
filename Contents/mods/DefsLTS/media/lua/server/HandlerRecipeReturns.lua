function giveDryingRack(items, result, player)
    player:getInventory():AddItem("DLTS.LTSDryingRackEmpty");
end

function giveJar(items, result, player)
    player:getInventory():AddItem("Base.EmptyJar");
end

function givePot(items, result, player)
    player:getInventory():AddItem("Base.Pot");
end

function giveMaintenanceTools(items, result, player)
  player:getInventory():AddItem("Base.Scissors");
  player:getInventory():AddItem("Base.Crowbar");
  player:getInventory():AddItem("Base.Hammer");
  player:getInventory():AddItem("Base.Jack");
  player:getInventory():AddItem("Base.LugWrench");
  player:getInventory():AddItem("Base.Screwdriver");
  player:getInventory():AddItem("Base.TirePump");
  player:getInventory():AddItem("Base.PipeWrench");
  player:getInventory():AddItem("Base.Wrench");
end

function GiveMeatBits (items,result,player)
    local meat = nil;
    for i=0,items:size() - 1 do
        if instanceof(items:get(i), "Food") then
            meat = items:get(i);
            break;
        end
    end 
    print("calories:"..meat:getCalories());
    local meatBits = math.floor(meat:getCalories()/27)
    for i=1,meatBits - 1 do
        player:getInventory():AddItem("DLTS.LTSBitsMeat");
    end
end