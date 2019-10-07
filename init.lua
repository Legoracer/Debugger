-- @name        Debugger
-- @author      Legoracer
-- @date        10/8/2019

local Debugger = {}
Debugger.__index = Debugger

function Debugger.new()
	local self = setmetatable({
		_active = false;
	}, Debugger)
	
	return self
end

function Debugger:SetActive(bool)
	self._active = bool
end

function Debugger:IsActive()
	return self._active
end

function Debugger:Print(...)
	if self._active then
		print(...)
	end
end
Debugger.print = Debugger.Print

function Debugger:Warn(...)
	if self._active then
		warn(...)
	end
end
Debugger.warn = Debugger.Warn

function Debugger:Error(...)
	if self._active then
		error(...)
	end
end
Debugger.error = Debugger.Error

return Debugger