#include <parallel_executor/EventQueue.h>

#include <parallel_executor/DeviceA.h>
#include <parallel_executor/DeviceB.h>
#include <parallel_executor/Parser.h>

int readLoopCount(const std::string textForOut)
{
std::cout << "Start work";
  int res = -1;
  while(res < 0)
  {
    std::cout << textForOut;
    std::cin >> res;
    std::cout << std::endl;
  }
  return res;
}

int readCrushIndex(const std::string textForOut, int loop_count)
{
  int res = loop_count + 1;
  while(res >= loop_count)
  {
    std::cout << textForOut;
    std::cin >> res;
    std::cout << std::endl;
  }
  return res;
}


int main(int argc, char * argv[])
{
  std::shared_ptr<EventQueue> queue = std::make_shared<EventQueue>();
  std::shared_ptr<Device> A = std::make_shared<DeviceA>();
  std::shared_ptr<Device> B = std::make_shared<DeviceB>();

  Parser parser(queue, A, B);
  size_t loop_count_A = readLoopCount("loop_count_A = ");
  size_t loop_count_B = readLoopCount("loop_count_B = ");
  int crush_index_A = readCrushIndex("crush_index_A = ", loop_count_A);
  int crush_index_B = readCrushIndex("crush_index_B = ", loop_count_B);
  parser.run(loop_count_A, loop_count_B, crush_index_A, crush_index_B);
  return 0;
}
