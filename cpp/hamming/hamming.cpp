#include <stdexcept>
#include "hamming.h"

namespace hamming {

int compute(std::string a, std::string b) {
    if (a.length() != b.length()) {
        throw std::domain_error(std::string("Strings must be the same size"));
    }

    int sum = 0;

    for (int i = 0; i <= a.length(); ++i) {
        if (a[i] != b[i]) {
            ++sum;
        }
    }

    return sum;
}

} // namespace hamming
