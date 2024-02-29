//#include <parallel_executor/Parser.h>
#include <parallel_executor/StartedEvent.h>
#include <parallel_executor/DataEvent.h>
#include <parallel_executor/WorkDoneEvent.h>

#include <parallel_executor/DeviceA.h>
#include <parallel_executor/DeviceB.h>

int main(int argc, char * argv[])
{
  std::shared_ptr<Device> A = std::make_shared<DeviceA>();
  std::shared_ptr<Device> B = std::make_shared<DeviceB>();

  std::string stringA = DataEvent(std::move(A)).toString();
  std::string stringB = DataEvent(std::move(B)).toString();

  std::string tailA = " from A";
  std::string tailB = " from B";

  stringA.substr(stringA.size() - tailA.size());
  stringB.substr(stringB.size() - tailB.size());
  return 0;
}
