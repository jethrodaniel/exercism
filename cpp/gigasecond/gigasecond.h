#if !defined(GIGASECOND_H)
#define GIGASECOND_H

#include <string>
#include "boost/date_time/posix_time/posix_time.hpp" //include all types plus i/o

namespace gigasecond {

boost::posix_time::ptime advance(std::string time) {
    std::string st = "2002-01-20 23:59:59.000";

    std::cout << boost::posix_time::ptime::time_from_string(st) << std::endl;
    return boost::posix_time::ptime::time_from_string(st);
}

}

#endif
