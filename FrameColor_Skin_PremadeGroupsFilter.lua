local info = {
    moduleName = "PremadeGroupsFilter",
    color1 = {
        name = "Main",
        desc = "",
    },
}

local module = FrameColor_CreateSkinModule(info)

local SetDesaturation = SetDesaturation
local SetVertexColor = SetVertexColor

function module:OnEnable()
    local main_color = self:GetColor1()
    self:Recolor(main_color, 1)
end

function module:OnDisable()
    local color = {r=1,g=1,b=1,a=1}
    self:Recolor(color, 0)
end

function module:Recolor(main_color, desaturation)
    for _, texture in pairs({
        PremadeGroupsFilterDialog.NineSlice.TopEdge,
        PremadeGroupsFilterDialog.NineSlice.BottomEdge,
        PremadeGroupsFilterDialog.NineSlice.TopRightCorner,
        PremadeGroupsFilterDialog.NineSlice.TopLeftCorner,
        PremadeGroupsFilterDialog.NineSlice.RightEdge,
        PremadeGroupsFilterDialog.NineSlice.LeftEdge,
        PremadeGroupsFilterDialog.NineSlice.BottomRightCorner,
        PremadeGroupsFilterDialog.NineSlice.BottomLeftCorner,  
    }) do
        texture:SetDesaturation(desaturation)
        texture:SetVertexColor(main_color.r,main_color.g,main_color.b) 
    end
    for _ ,texture in pairs({
        PremadeGroupsFilterDialogBg,
        PremadeGroupsFilterDungeonPanel.Group.Difficulty.DropDown.Left,
        PremadeGroupsFilterDungeonPanel.Group.Difficulty.DropDown.Middle,
        PremadeGroupsFilterDungeonPanel.Group.Difficulty.DropDown.Right,    
    }) do 
        texture:SetDesaturation(desaturation)
        texture:SetVertexColor(main_color.r,main_color.g,main_color.b)
    end
    for _, texture in pairs({
        PremadeGroupsFilterStaticPopup.Border.TopEdge,
        PremadeGroupsFilterStaticPopup.Border.TopRightCorner,
        PremadeGroupsFilterStaticPopup.Border.RightEdge,
        PremadeGroupsFilterStaticPopup.Border.BottomRightCorner,
        PremadeGroupsFilterStaticPopup.Border.BottomEdge,
        PremadeGroupsFilterStaticPopup.Border.BottomLeftCorner,
        PremadeGroupsFilterStaticPopup.Border.LeftEdge,
        PremadeGroupsFilterStaticPopup.Border.TopLeftCorner,
    }) do 
        texture:SetVertexColor(main_color.r,main_color.g,main_color.b)
    end
end

