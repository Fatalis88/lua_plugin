-- Anti-Freeze 1.06 by Screech
--
-- Antifreeze initialisation, this script is called via autoload mechanism when the
-- TeamSpeak 3 client starts.
--

require("ts3init")            -- Required for ts3RegisterModule
require("Antifreeze/events")  -- Forwarded TeamSpeak 3 callbacks

local MODULE_NAME = "Antifreeze"

-- Define which callbacks you want to receive in your module. Callbacks not mentioned
-- here will not be called. To avoid function name collisions, your callbacks should
-- be put into an own package.
local registeredEvents = {
	onTextMessageEvent = Antifreeze_events.onTextMessageEvent,
	onClientPokeEvent = Antifreeze_events.onClientPokeEvent,
}

-- Register your callback functions with a unique module name.
ts3RegisterModule(MODULE_NAME, registeredEvents)


