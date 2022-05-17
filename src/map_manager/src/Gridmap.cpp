#include "map_manager/PCSmap_manager.h"

void GridMap::clearGridMap()
{
    for (int i = 0;i < X_size; i++)
	{
		for (int j = 0; j < Y_size; j++)
		{
			for (int k = 0; k < Z_size; k++)
			{
				grid_map[i][j][k]            = 0;
				grid_map_buffer_neg[i][j][k] = 0;
				grid_map_buffer_all[i][j][k] = 0;
                grid_map_flags[i][j][k]      = 0;
			}
		}
	}
}

void GridMap::releaseMemory()
{
    for (int x = 0; x < X_size; x++)
	{
		for (int y = 0; y < Y_size; y++)
		{
			delete [] grid_map[x][y];
            delete [] grid_map_buffer_neg[x][y];
            delete [] grid_map_buffer_all[x][y];
            delete [] grid_map_flags[x][y];
            delete [] grid_esdf[x][y];
		}
	}
	for (int x = 0; x < X_size; x++)
	{
		delete [] grid_map[x];
        delete [] grid_map_buffer_neg[x];
        delete [] grid_map_buffer_all[x];
        delete [] grid_map_flags[x];
        delete [] grid_esdf[x];
	}
	delete [] grid_map;
    delete [] grid_map_buffer_neg;
    delete [] grid_map_buffer_all;
    delete [] grid_map_flags;
    delete [] grid_esdf;
}


void GridMap::createGridMap(Vector3d boundary_xyzmin, Vector3d boundary_xyzmax)
{
    this->boundary_xyzmin = boundary_xyzmin;
    this->boundary_xyzmax = boundary_xyzmax;
    X_size = ceil( ( boundary_xyzmax(0) - boundary_xyzmin(0) ) / grid_resolution );
    Y_size = ceil( ( boundary_xyzmax(1) - boundary_xyzmin(1) ) / grid_resolution );
    Z_size = ceil( ( boundary_xyzmax(2) - boundary_xyzmin(2) ) / grid_resolution );

    // create 3D grid map
    grid_map             = new double **[X_size];
    grid_map_buffer_neg  = new double **[X_size];
    grid_map_buffer_all  = new double **[X_size];
    grid_map_flags       = new bool**[X_size];
	for(int x = 0; x < X_size; x++)
	{
		grid_map[x]              = new double *[Y_size];
        grid_map_buffer_neg[x]   = new double *[Y_size];
        grid_map_buffer_all[x]   = new double *[Y_size];
        grid_map_flags[x]        = new bool *[Y_size];
		for (int y = 0; y < Y_size; y++)
		{
			grid_map[x][y]              = new double [Z_size];
			grid_map_buffer_neg[x][y]   = new double [Z_size];
			grid_map_buffer_all[x][y]   = new double [Z_size];
            grid_map_flags[x][y]        = new bool [Z_size];
		}
	}
    clearGridMap();
}


bool GridMap::isInMap(Vector3d pos_w)
{
    if( pos_w(0) < boundary_xyzmin(0) ) {return false;}
    if( pos_w(1) < boundary_xyzmin(1) ) {return false;}
    if( pos_w(2) < boundary_xyzmin(2) ) {return false;}
    
    if( pos_w(0) > boundary_xyzmax(0) ) {return false;}
    if( pos_w(1) > boundary_xyzmax(1) ) {return false;}
    if( pos_w(2) > boundary_xyzmax(2) ) {return false;}
    return true;
}

bool GridMap::isIndexValid(Vector3i index)
{
    if(index(0) < 0)       {return false;}
    if(index(0) >= X_size) {return false;}

    if(index(1) < 0)       {return false;}
    if(index(1) >= Y_size) {return false;}

    if(index(2) < 0)       {return false;}
    if(index(2) >= Z_size) {return false;}

    return true;
}


bool GridMap::isIndexValid(int ix,int iy, int iz)
{
    if(ix < 0)       {return false;}
    if(ix >= X_size) {return false;}

    if(iy < 0)       {return false;}
    if(iy >= Y_size) {return false;}

    if(iz < 0)       {return false;}
    if(iz >= Z_size) {return false;}

    return true;
}


Vector3i GridMap::getGridIndex(Vector3d pos_w)
{
    if( !isInMap(pos_w) )
    {   
        if(debug_output)
        {
            cout<<pos_w<<endl;
            ROS_WARN("[getGridIndex()] this point is out of map!");
            cout << (pos_w(0) <= boundary_xyzmin(0)) <<"\t"<<(pos_w(1) <= boundary_xyzmin(1))<<"\t"
             << (pos_w(2) <= boundary_xyzmin(2)) <<"\t"<<(pos_w(0) >= boundary_xyzmax(0))<<"\t"
             << (pos_w(1) >= boundary_xyzmax(1)) <<"\t"<<(pos_w(2) >= boundary_xyzmax(2))<<"\n";
            cout<<"boundary is "<< boundary_xyzmax<<endl<<endl;
        }
        return Vector3i(0,0,0);
    }

    double dx = pos_w(0) - boundary_xyzmin(0);
    double dy = pos_w(1) - boundary_xyzmin(1);
    double dz = pos_w(2) - boundary_xyzmin(2);
    int    ix = floor( dx / grid_resolution );
    int    iy = floor( dy / grid_resolution );
    int    iz = floor( dz / grid_resolution );

    return Vector3i(ix, iy, iz);
}


Vector3d GridMap::getGridCubeCenter(int ix, int iy, int iz)
{
    return getGridCubeCenter(Vector3i(ix, iy, iz));
}

Vector3d GridMap::getGridCubeCenter(Vector3i index)
{
    
    if( !isIndexValid(index) ){
        if(debug_output)
        {
            cout<<index<<endl;
            ROS_WARN("[getGridCubeCenter()] this index is out of map!");
        }
        return Vector3d(0,0,0);
    }

    double dx = ( index(0) + 0.5 ) * grid_resolution; 
    double dy = ( index(1) + 0.5 ) * grid_resolution; 
    double dz = ( index(2) + 0.5 ) * grid_resolution; 
    Vector3d dpos_w = Vector3d(dx, dy, dz);

    return dpos_w + boundary_xyzmin;
}


bool GridMap::isIndexCanBeNeighbor(Vector3i index)
{
    if( !isIndexValid(index) ){
        if(debug_output) 
        {
            cout<<index<<endl;
            ROS_WARN("[isIndexOccupied()] this index is out of map!");
        }
        return false;
    }
    return grid_map_flags[index(0)][index(1)][index(2)];
}

bool GridMap::isIndexOccupied(Vector3i index)
{
    if( !isIndexValid(index) ){
        if(debug_output) 
        {
            cout<<index<<endl;
            ROS_WARN("[isIndexOccupied()] this index is out of map!");
        }
        
        return true;
    }
    if( grid_map[index(0)][index(1)][index(2)] == 0) {return false;}
    else {return true;}
}

bool GridMap::isIndexOccupied(int ix, int iy, int iz)
{
    bool invalid = false;
    if(ix < 0)       {invalid = true;}
    if(ix >= X_size) {invalid = true;}
    if(iy < 0)       {invalid = true;}
    if(iy >= Y_size) {invalid = true;}
    if(iz < 0)       {invalid = true;}
    if(iz >= Z_size) {invalid = true;}
    if(invalid)
    {
        if(debug_output) 
        {
            ROS_WARN("[isIndexOccupied()] this index is out of map!");
        }
        return true;
    }
    if( grid_map[ix][iy][iz] == 0) {return false;}
    else {return true;}
}

bool GridMap::isCoordOccupied(Vector3d pos_w)
{
    if( !isInMap(pos_w) )
    {   
        if(debug_output)
        {
            ROS_WARN("[isCoordOccupied()] this point is out of map!");
        }
        return true;
    }
    return isIndexOccupied(getGridIndex(pos_w));
}


bool GridMap::isOverFloorInCells(Vector3i index, double distance)
{
    int indz_depth = floor( distance / grid_resolution );
    Vector3i ind = index;
    for(int dz = 0; dz <= indz_depth; dz++)
    {
        ind(2) = index(2) - dz;
        if(isIndexOccupied(ind)) {
            return true;
        }
    }

    return false;
}


bool GridMap::isGridBoundOfObs(Vector3i index)
{
    if( !isIndexOccupied(index) ) {
        cout << "[isGridBoundOfObs] this function got a free index!"<<endl;
        return false;
    }

    int idx,idy,idz;
    Vector3i index_scan;
    for (idx = 0; idx < X_size; idx++)
	{
		for (idy = 0; idy < Y_size; idy++)
		{
			for (idz = 0; idz < Z_size; idz++)
			{
				index_scan = index + Vector3i(idx,idy,idz);
                if(index_scan == index)         {continue;}
                if( !isIndexValid(index_scan) ) {continue;}
                if( !isIndexOccupied(index_scan) ) {return true;}
			}
		}
	}
    return false;
}


void GridMap::clearGridESDF()
{
    for (int i = 0;i < X_size; i++)
	{
		for (int j = 0; j < Y_size; j++)
		{
			for (int k = 0; k < Z_size; k++)
			{
				grid_esdf[i][j][k] = 0;
				grid_esdf_buffer1[i][j][k] = 0;
				grid_esdf_buffer2[i][j][k] = 0;
			}
		}
	}
}


int GridMap::getVoxelNum(int dim)
{
    if(dim == 0){return X_size;}
    if(dim == 1){return Y_size;}
    if(dim == 2){return Z_size;}
}

void debugP(double num)
{
    cout<<num<<endl;
}


void GridMap::generateESDF3d()
{
    Vector3i min_esdf(0,0,0);
    Vector3i max_esdf(X_size-1, Y_size-1, Z_size-1);

    grid_esdf = new double **[X_size];
    grid_esdf_buffer1 = new double **[X_size];
    grid_esdf_buffer2 = new double **[X_size];
	for(int x = 0; x < X_size; x++)
	{
		grid_esdf[x] = new double *[Y_size];
		grid_esdf_buffer1[x] = new double *[Y_size];
		grid_esdf_buffer2[x] = new double *[Y_size];
		for (int y = 0; y < Y_size; y++)
		{
			grid_esdf[x][y] = new double [Z_size];
			grid_esdf_buffer1[x][y] = new double [Z_size];
			grid_esdf_buffer2[x][y] = new double [Z_size];
		}
	}

    clearGridESDF();

    /* ========== compute positive DT ========== */

    for (int x = min_esdf(0); x <= max_esdf(0); x++) {
        for (int y = min_esdf(1); y <= max_esdf(1); y++) {
        fillESDF(
            [&](int z) {
                return isIndexOccupied(x, y, z) == 1 ?
                    0 :
                    std::numeric_limits<double>::max();
            },
            [&](int z, double val) { grid_esdf_buffer1[x][y][z] = val; }, min_esdf(2),
            max_esdf(2), 2);
        }
    }

    for (int x = min_esdf(0); x <= max_esdf(0); x++) {
        for (int z = min_esdf(2); z <= max_esdf(2); z++) {
        fillESDF([&](int y) { return grid_esdf_buffer1[x][y][z]; },
                [&](int y, double val) { grid_esdf_buffer2[x][y][z] = val; }, min_esdf(1),
                max_esdf(1), 1);
        }
    }

    for (int y = min_esdf(1); y <= max_esdf(1); y++) {
        for (int z = min_esdf(2); z <= max_esdf(2); z++) {
        fillESDF([&](int x) { return grid_esdf_buffer2[x][y][z]; },
                [&](int x, double val) {
                    grid_esdf[x][y][z] =  grid_resolution * std::sqrt(val);
                },
                min_esdf(0), max_esdf(0), 0);
        }
    }

    /* ========== compute negative distance ========== */
    for (int x = min_esdf(0); x <= max_esdf(0); ++x)
        for (int y = min_esdf(1); y <= max_esdf(1); ++y)
        for (int z = min_esdf(2); z <= max_esdf(2); ++z) {

            if (grid_map[x][y][z] == 0) {
            grid_map_buffer_neg[x][y][z] = 1;

            } else if (grid_map[x][y][z] == 1) {
            grid_map_buffer_neg[x][y][z] = 0;
            } else {
            ROS_ERROR("what?");
            }
        }

    ros::Time t1, t2;

    for (int x = min_esdf(0); x <= max_esdf(0); x++) {
        for (int y = min_esdf(1); y <= max_esdf(1); y++) {
        fillESDF(
            [&](int z) {
                return grid_map_buffer_neg[x][y][z] == 1 ?
                    0 :
                    std::numeric_limits<double>::max();
            },
            [&](int z, double val) { grid_esdf_buffer1[x][y][z] = val; }, min_esdf(2),
            max_esdf(2), 2);
        }
    }

    for (int x = min_esdf(0); x <= max_esdf(0); x++) {
        for (int z = min_esdf(2); z <= max_esdf(2); z++) {
        fillESDF([&](int y) { return grid_esdf_buffer1[x][y][z]; },
                [&](int y, double val) { grid_esdf_buffer2[x][y][z] = val; }, min_esdf(1),
                max_esdf(1), 1);
        }
    }

    for (int y = min_esdf(1); y <= max_esdf(1); y++) {
        for (int z = min_esdf(2); z <= max_esdf(2); z++) {
        fillESDF([&](int x) { return grid_esdf_buffer2[x][y][z]; },
                [&](int x, double val) {
                    grid_map_buffer_neg[x][y][z] = grid_resolution * std::sqrt(val);
                },
                min_esdf(0), max_esdf(0), 0);
        }
    }

    /* ========== combine pos and neg DT ========== */
    for (int x = min_esdf(0); x <= max_esdf(0); ++x)
        for (int y = min_esdf(1); y <= max_esdf(1); ++y)
        for (int z = min_esdf(2); z <= max_esdf(2); ++z) {

            grid_map_buffer_all[x][y][z] = grid_map[x][y][z];

            if (grid_map_buffer_neg[x][y][z] > 0.0)
            grid_map_buffer_all[x][y][z] += (-grid_map_buffer_neg[x][y][z] + grid_resolution);
    }
}

template <typename F_get_val, typename F_set_val>
void GridMap::fillESDF(F_get_val f_get_val, F_set_val f_set_val, int start, int end, int dim) {

  int v[getVoxelNum(dim)];
  double z[getVoxelNum(dim) + 1];

  int k = start;
  v[start] = start;
  z[start] = -std::numeric_limits<double>::max();
  z[start + 1] = std::numeric_limits<double>::max();

  for (int q = start + 1; q <= end; q++) {
    k++;
    double s;

    do {
      k--;
      s = ((f_get_val(q) + q * q) - (f_get_val(v[k]) + v[k] * v[k])) / (2 * q - 2 * v[k]);
    } while (s <= z[k]);

    k++;

    v[k] = q;
    z[k] = s;
    z[k + 1] = std::numeric_limits<double>::max();
  }

  k = start;

  for (int q = start; q <= end; q++) {
    while (z[k + 1] < q) k++;
    double val = (q - v[k]) * (q - v[k]) + f_get_val(v[k]);
    f_set_val(q, val);
  }
}



double GridMap::getGridSDFValue(Vector3i index)
{
    if( !isIndexValid(index) ){return 0;}
    return grid_esdf[index(0)][index(1)][index(2)];
}

double GridMap::getGridSDFValue(int ix, int iy, int iz)
{
    if(ix < 0)       { ix = 0;}
    if(ix >= X_size) { ix = X_size - 1;}
    if(iy < 0)       { iy = 0;}
    if(iy >= Y_size) { iy = Y_size - 1;}
    if(iz < 0)       { iz = 0;}
    if(iz >= Z_size) { iz = Z_size - 1;}

    return grid_esdf[ix][iy][iz];
}

