#!/usr/bin/lua

--[[
This script can be used to unmount iso images
mounted with the iso mount script
--]]

-- Set all required variables
HOME = os.getenv("HOME")
MOUNTPOINT = HOME .. "/" .. "mnt"

-- Now Unmount That Sucker!

os.execute("pkexec umount " .. MOUNTPOINT)
os.execute("if [ ! -d " .. MOUNTPOINT .. " ] ; then rmdir " .. MOUNTPOINT .. " ; fi") 