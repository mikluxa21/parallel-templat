#include <parallel_executor/DataEvent.h>

std::string DataEvent::toString() const
{
  return "" + this->device.get()->getName();
}

