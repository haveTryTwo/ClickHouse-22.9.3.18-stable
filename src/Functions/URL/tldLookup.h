#pragma once

#include <cstdlib>

// Definition of the class generated by gperf, present on gperf/tldLookup.gperf
class TopLevelDomainLookupHash
{
private:
    static inline unsigned int hash(const char *str, size_t len);
public:
    static const char * isValid(const char *str, size_t len);
};

namespace DB
{
    using tldLookup = TopLevelDomainLookupHash;
}