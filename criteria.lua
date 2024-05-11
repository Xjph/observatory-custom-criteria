-- Global functions and variables used by all criteria
-- can be placed inside the ---@Global block here.

---@Global

---@End



-- Basic one-line criteria can be written using the
-- ---@Simple annotation, followed by an expression
-- that evaluates to a truthy value when that criteria
-- is triggered.

-- The text after ---@Simple is what is displayed in the
-- description column.

-- They can optionally be followed by a one-line
-- ---@Detail annotation, which should be a string-valued
-- expression to display in the detail column.

---@Simple Hot Landable
scan.Landable and scan.SurfaceTemperature > 1500
---@Detail
'Temperature: ' .. math.floor(scan.SurfaceTemperature) .. ' K'



-- More complex criteria scripts can be written in a
-- ---@Complex block.
-- Complex criteria are expected to return two strings
-- when triggered. The first is displayed in the 
-- 'Description' column, the second is displayed in the 
-- 'Detail' column.
-- Simply return nothing and fall out of the criteria 
-- script when nothing is triggered.

---@Complex
if scan.Landable and scan.SurfaceTemperature > 1000 and parents then
  if parents[0].Scan and parents[0].ParentType == 'Planet' and parents[0].Scan.Rings then
    return 'Hot Landable Moon of Ringed Parent', 'Temperature: ' .. math.floor(scan.SurfaceTemperature) .. ' K'
  end
end
---@End