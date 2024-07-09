--[[
Calculate Average of any Number of Arguments passed to me
The type of arguments should be Number or Float
More than one number needs to be passed
--]]

local args = {...}
sum=0 avg=0
total_args=#arg
if(total_args < 2) then
        print("Error more than one Number argument required !")
        return 1
end
for i,v in ipairs(args) do
        val=tonumber(v)
        if(type(val) ~= "number") then
                str_err=string.format("Error Non-Number was passed !",val)
                print(str_err)
                return 1
        end
        sum=sum+val
end
avg=sum/total_args
print("Average :",avg)
