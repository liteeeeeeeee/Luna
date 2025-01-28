-- Implemented this Anti-afk myself wih no gui bullshit, just clean execution of the code to the console.

local skibidi = game:service'VirtualUser'

game:service'Players'.LocalPlayer.Idled:connect(function()
    
    skibidi:CaptureController()
    skibidi:ClickButton2(Vector2.new())
    
    wait(2)
end)

print("Anti-afk has been enabled!")