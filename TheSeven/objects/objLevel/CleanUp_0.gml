/// @description Delete grids when resetting
if(room == Cave){
ds_grid_destroy(grid_);
mp_grid_destroy(movementGrid);
}