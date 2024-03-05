CREATE TABLE [btd6_rounds] (
  [Ranking] int PRIMARY KEY,
  [RBE] int,
  [Red] int,
  [Blue] int,
  [Green] int,
  [Camo_Green] int,
  [Camo_Regen_Green] int,
  [Yellow] int,
  [Regen_Yellow] int,
  [Camo_Yellow] int,
  [Pink] int,
  [Regen_Pink] int,
  [Camo_Pink] int,
  [Black] int,
  [Regen_Black] int,
  [White] int,
  [Camo_White] int,
  [Camo_Regen_White] int,
  [Purple] int,
  [Camo_Purple] int,
  [Camo_Regen_Purple] int,
  [Zebra] int,
  [Regen_Zebra] int,
  [Lead] int,
  [Fortified_Lead] int,
  [Camo_Lead] int,
  [Camo_Fortified_Lead] int,
  [Camo_Regen_Fortified_Lead] int,
  [Rainbow] int,
  [Regen_Rainbow] int,
  [Camo_Rainbow] int,
  [Camo_Regen_Rainbow] int,
  [Ceramic] int,
  [Fortified_Ceramic] int,
  [Camo_Ceramics] int,
  [Regen_Ceramic] int,
  [Camo_Regen_Fortified_Ceramic] int,
  [Camo_Fortified_Ceramic] int,
  [MOAB] int,
  [Fortified_MOAB] int,
  [BFB] int,
  [Fortified_BFB] int,
  [ZOMG] int,
  [Fortified_ZOMG] int,
  [BAD] int,
  [Fortified_BAD] int,
  [DDT] int,
  [Fortified_DDT] int
)
GO

CREATE TABLE [fortune500companies] (
  [Ranking] int PRIMARY KEY,
  [name] text,
  [year] int,
  [industry] text,
  [sector] text,
  [headquarters_state] text,
  [headquarters_city] text,
  [market_value_mil] text,
  [revenue_mil] double,
  [profit_mil] text,
  [asset_mil] text,
  [employees] text,
  [founder_is_ceo] text,
  [female_ceo] text,
  [newcomer_to_fortune_500] text,
  [global_500] text
)
GO

CREATE TABLE [spotify_final_dataset] (
  [Ranking] int PRIMARY KEY,
  [Artist Name] text,
  [Song Name] text,
  [Days] int,
  [Top 10 (xTimes)] double,
  [Peak Position] int,
  [Peak Position (xTimes)] text,
  [Peak Streams] int,
  [Total Streams] int
)
GO

ALTER TABLE [btd6_rounds] ADD FOREIGN KEY ([Ranking]) REFERENCES [spotify_final_dataset] ([Ranking])
GO

ALTER TABLE [btd6_rounds] ADD FOREIGN KEY ([Ranking]) REFERENCES [fortune500companies] ([Ranking])
GO

ALTER TABLE [fortune500companies] ADD FOREIGN KEY ([Ranking]) REFERENCES [spotify_final_dataset] ([Ranking])
GO
