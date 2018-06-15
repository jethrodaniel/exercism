#if !defined(GIGASECOND_H)
#define GIGASECOND_H

#include "boost/date_time/posix_time/posix_time.hpp" //include all types plus i/o

namespace gigasecond {

boost::posix_time::ptime advance(boost::posix_time::ptime time);

}

#endif
