GFX_ArmaViewDistance         = 2000;
GFX_ArmaTerrainGrids         = [50, 48, 25, 12.5, 6.25, 3.125];
// GFX_ArmaTerrainGrids         = [50, 25, 12.5, 6.25];
GFX_ArmaTerrainGridsSel      = 2;
setViewDistance GFX_ArmaViewDistance;
setTerrainGrid (GFX_ArmaTerrainGrids select GFX_ArmaTerrainGridsSel);
