#include "gigasecond.h"
#include <string>
#include <cmath>

namespace gigasecond {

boost::posix_time::ptime advance(boost::posix_time::ptime time) {
    return time + boost::posix_time::seconds(std::pow(10, 9));
}
	
}