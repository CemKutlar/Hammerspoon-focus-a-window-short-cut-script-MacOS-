local windowIDFile = os.getenv("HOME") .. "/.hammerspoon/window_id.txt"

-- Function to store the focused window ID and write to a file
function storeFocusedWindow()
    local win = hs.window.focusedWindow()
    if win then
        local windowID = win:id()
        local file = io.open(windowIDFile, "w")
        if file then
            file:write(windowID)
            file:close()
            hs.alert.show("Window ID stored")
        end
    end
end

-- Function to read the window ID from the file and focus the window
function focusStoredWindow()
    local file = io.open(windowIDFile, "r")
    if file then
        local windowID = file:read("*a")
        file:close()
        local win = hs.window.find(tonumber(windowID))
        if win then
            win:focus()
        else
            hs.alert.show("Stored window not found")
        end
    else
        hs.alert.show("No window ID stored")
    end
end

-- Bind hotkeys
hs.hotkey.bind({"cmd", "ctrl"}, "T", storeFocusedWindow)
hs.hotkey.bind({"cmd", "ctrl"}, "W", focusStoredWindow)
