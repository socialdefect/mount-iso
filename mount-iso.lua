#!/usr/bin/lua

--[[
This script can be used to mount iso images
run from the CLI with image as a parameter or
add it to your right click menu with the %f parameter
--]]

-- Set all required variables
IMAGE = arg[1]
HOME = os.getenv("HOME")
MOUNTPOINT = HOME .. "/" .. "mnt"
COMMAND = IMAGE .. " " .. MOUNTPOINT

-- Now Mount That Sucker!
os.execute("if [ ! -d " .. MOUNTPOINT .. " ] ; then mkdir " .. MOUNTPOINT .. " ; fi")
os.execute("pkexec mount -o loop " .. COMMAND)
 
