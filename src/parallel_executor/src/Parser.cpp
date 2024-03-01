#include <parallel_executor/Parser.h>

void Parser::run(size_t loop_count_A, size_t loop_count_B, int crush_index_A = -1, int crush_index_B = -1)
{
  std::thread thrA(this->read, A, 1, loop_count_A, crush_index_A);
  std::thread thrB(this->read, B, 5, loop_count_B, crush_index_B);
  while(1)
  {
    auto resQueuePop;
    //wait message from devise for 6 seconds
    for(size_t i = 0; i < 6 ; i++)
    {
      resQueuePop =  = this->queue.pop();
      if(resQueuePop == nullptr)
        std::this_thread::sleep_for(std::chrono::seconds(1));
    }
    //if there is not message
     if(resQueuePop == nullptr)
       break;
     else
     {
       //write data to the console aboet reded message
     }
  }
  
  
  
  thrA.join();
  thrB.join();
}

void Parser::read(std::shared_ptr<Device> device, std::chrono::seconds sleep_duration, size_t loop_count, int crush_index)
{
  for(size_t i = loop_count; i > crush_index; i--)
    {
      this->queue->push(dynamic_cast<>device);
    }
    if (crush_index > 0)
      while(1){}
}
