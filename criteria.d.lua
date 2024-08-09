---@meta

---@class const
---@field SPEED_OF_LIGHT_mps number
---@field GRAVITY_mps2 number
---@field ATM_PRESSURE_Pa number
---@field DAY_s number
---@field HOUR_s number
const = {}

---@class scan
---Name of star system
---@field StarSystem string
---Internal unique id of star system
---@field SystemAddress number
---Type of scan which triggered the event
---@field ScanType 'Detailed' | 'AutoScan' | 'NavBeaconData'
---Name of the scanned body
---@field BodyName string
---Internal unique id of scanned body
---@field BodyID number
---Distance of body from the system arrival point in light-seconds
---@field DistanceFromArrivalLS number
---Indicates if a body is tidally locked to its orbital parent
---@field TidalLock boolean
---Current terraforming status of the body - an empty string indicates not terraformable
---@field TerraformState '' | 'Terraformable' | 'Terraforming' | 'Terraformed'
---Class of scanned body, e.g. 'High metal content body'
---@field PlanetClass string
---Text description of body atmosphere (if any), e.g. 'thin argon atmosphere'
---@field Atmosphere string
---Short text classification of atmosphere, e.g. 'SulphurDioxide', or 'None'
---@field AtmosphereType string
---Array of materials found in body atmosphere
---@field AtmosphereComposition MaterialCollection
---Text description of body volcanism (if any), e.g. 'major rocky magma volcanism'
---@field Volcanism string
---Mass of scanned body in Earth-masses (5.972e24 kilograms)
---@field MassEM number
---Radius of scanned body in meters
---@field Radius number
---Surface gravity of scanned body in m/s²
---@field SurfaceGravity number
---Atmospheric surface pressure of body in Pascals
---@field SurfacePressure number
---Surface Temperature of body in Kelvin
---@field SurfaceTemperature number
---Indicates whether a body can be landed on
---@field Landable boolean
---Array of materials found on body surface
---@field Materials MaterialCollection
---Percentages of ice, rock, and metal in body composition
---@field Composition Composition
---Length of orbital semi-major axis in meters
---@field SemiMajorAxis number
---Orbital eccentricity
---@field Eccentricity number
---Orbital inclination in degrees
---@field OrbitalInclination number
---Argument of periapsis in degress
---@field Periapsis number
---Orbital period in seconds
---@field OrbitalPeriod number
---Rotational period in seconds
---@field RotationPeriod number
---Orbital ascending node in degrees
---@field AscendingNode number
---Orbital mean anomaly in degrees
---@field MeanAnomaly number
---Axial tilt of body in radians
---@field AxialTilt number
---Array containing planetary/stellar ring objects
---@field Rings Rings
---Resource reserve level
---@field ReserveLevel 'PristineResources' | 'MajorResources' | 'CommonResources' | 'DepletedResources'
---Stellar type of scanned star
---@field StarType string
---Stellar subclass of scanned star
---@field Subclass number
---Mass of scanned star in solar masses (1.98892e30 kilograms)
---@field StellarMass number
---Absolute magnitube of scanned star
---@field AbsoluteMagnitude number
---Age of scanned body in millions of years
---@field Age_MY number
---Luminosity class of scanned star
---@field Luminosity string
---Indicates if scanned body was previously discovered
---@field WasDiscovered boolean
---Indicates if scanned body was previously mapped
---@field WasMapped boolean
---Scan object read from Elite Dangerous journal files
scan = {}

---@class Ring
---Name of the ring
---@field Name string
---Class of the ring, e.g. 'eRingClass_MetalRich'
---@field RingClass string
---Mass of the ring in millions of metric tons
---@field MassMT number
---Orbital radius of inner edge of the ring in meters
---@field InnerRad number
---Orbital radius of the outer edge of the ring in meters
---@field OuterRad number
local Ring = {}

---@class RingIterator
---Name of the ring
---@field name string
---Class of the ring, e.g. 'eRingClass_MetalRich'
---@field ringclass string
---Mass of the ring in millions of metric tons
---@field massmt number
---Orbital radius of inner edge of the ring in meters
---@field innerrad number
---Orbital radius of the outer edge of the ring in meters
---@field outerrad number
local RingIterator = {}

---@class Rings
---@field [number] Ring
---@field Count integer
local Rings = {}

---@class Composition
---Percentage of ice in composition
---@field Ice number
---Percentage of rock in composition
---@field Rock number
---Percentage of metal in composition
---@field Metal number
local Composition = {}

---@class Material
---Name of material
---@field Name string
---Percentage of named material present
---@field Percent number
local Material = {}

---@class MaterialIterator
---Name of material
---@field name string
---Percentage of named material present
---@field percent number
local MaterialIterator = {}

---@class MaterialCollection
---@field [number] Material
---@field Count integer
local MaterialCollection = {}

---@class Parent
---@field ParentType 'Null' | 'Planet' | 'Star'
---@field Body number
---Scan event object for parent body
---@field Scan scan
local Parent = {}

---@class ParentIterator
---@field parenttype 'Null' | 'Planet' | 'Star'
---@field body number
---Scan event object for parent body
---@field scan scan
local ParentIterator = {}

---@class parents
---@field Count number
---@field [number] Parent
parents = {}

---@class system
---@field [number] scan
system = {}

---@param system system
---@return fun():scan
function bodies(system) end

---@param materials MaterialCollection
---@return fun():MaterialIterator
function materials(materials) end

---@param rings Rings
---@return fun():RingIterator
function rings(rings) end

---@param rings Rings
---@return fun():RingIterator
function ringsOnly(rings) end

---@param rings Rings
---@return fun():RingIterator
function beltsOnly(rings) end

---@param parents parents
---@return fun():ParentIterator
function allparents(parents) end

---@param rings Rings
---@return boolean
function hasBelts(rings) end

---@param body_name string
---@return boolean
function isBelt(body_name) end

---@param rings Rings
---@return boolean
function hasRings(rings) end

---@param body_name string
---@return boolean
function isRing(body_name) end

---@param scan scan
---@return boolean
function isStar(scan) end

---@param scan scan
---@return boolean
function isPlanet(scan) end

---@param scan scan
---@return boolean
function isBarycentre(scan) end

---@param scan scan
---@return boolean
function hasAtmosphere(scan) end

---@param scan scan
---@return boolean
function hasLandableAtmosphere(scan) end

---@param value_in_m number
---@return number
function distanceAsLs(value_in_m) end

---@param value_in_m number
---@return number
function distanceAsKm(value_in_m) end

---@param value_in_mps2 number
---@return number
function gravityAsG(value_in_mps2) end

---@param value_in_pa number
---@return number
function pressureAsAtm(value_in_pa) end

---@param value_in_s number
---@return number
function periodAsDay(value_in_s) end

---@param value_in_s number
---@return number
function periodAsHour(value_in_s) end

---@type integer
biosignals = nil

---@type integer
geosignals = nil