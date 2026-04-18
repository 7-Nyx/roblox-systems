local UIHandler = {}

function UIHandler:ConnectButton(button, callback)
    button.MouseButton1Click:Connect(function()
        print("Button clicked!")
        callback()
    end)
end

return UIHandler
