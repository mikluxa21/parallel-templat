#include <parallel_executor/DataEvent.h>

std::string DataEvent::toString() const
{
  return "Signal from " + this->device.get()->getName();
}

