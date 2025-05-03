#ifndef SERVICE_ENTRY_H
#define SERVICE_ENTRY_H

// インクルード
#include <string>
#include <memory.h>

class IServiceEntry
{
public:
    virtual ~IServiceEntry() = default;
    virtual void Run() = 0;
};

#endif // SERVICE_ENTRY_H
