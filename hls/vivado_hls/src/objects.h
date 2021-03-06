#ifndef __OBJECTS_H__
#define __OBJECTS_H__

#include "algo_top_parameters.h"

using namespace std;

/*ECAL tower object definition*/
class Tower{
  public:
    Tower() : data(0) {;}

    Tower(ap_uint<10> cluster_et, ap_uint<10> tower_et, ap_uint<3> peak_phi, ap_uint<3> peak_eta, ap_uint<3> peak_time, ap_uint<3> hOe) {

      data = (cluster_et) | 
	(((ap_uint<32>) tower_et) << 10) | 
	(((ap_uint<32>) peak_phi) << 20) | 
	(((ap_uint<32>) peak_eta) << 23) | 
	(((ap_uint<32>) peak_time) << 26) | 
	(((ap_uint<32>) hOe) << 29);
    }

    Tower(uint32_t i) {data = i;}

    Tower& operator=(const Tower& rhs) {
      data = rhs.data;
      return *this;
    }
    
    operator uint32_t() {return (uint32_t) data;}

    ap_uint<10> cluster_et(){return (data & 0x3FF);}
    ap_uint<10> tower_et()  {return ((data >> 10) & 0x3FF);}
    ap_uint<3>  peak_phi()  {return ((data >> 20) & 0x7);}
    ap_uint<3>  peak_eta()  {return ((data >> 23) & 0x7);}
    ap_uint<3>  peak_time() {return ((data >> 26) & 0x7);}
    ap_uint<3>  hOe()       {return ((data >> 29) & 0x7);}

#ifndef __SYNTHESIS__
    string toString() {
      return "Tower [" + 
	to_string(this->cluster_et()) + ", (" + 
	to_string(this->peak_phi()) + ", " + 
	to_string(this->peak_eta()) + "), " + 
	to_string(this->peak_time()) + ", " + 
	to_string(this->hOe()) + ", " + 
	to_string(this->tower_et()) + "] ";
    }
#endif


    ap_uint<32> data;

};

#endif /*!__OBJECTS_H__*/
