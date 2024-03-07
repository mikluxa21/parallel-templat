#include <parallel_executor/Parser.h>

void Parser::run(size_t loop_count_A, size_t loop_count_B, int crush_index_A, int crush_index_B)
{
  auto lambdaRead = [this](std::shared_ptr<Device> device, std::chrono::seconds sleep_durations, size_t loop_count, int crush_index){this->read(device, sleep_durations, loop_count, crush_index);};
  std::thread thrA(lambdaRead, A, 1, loop_count_A, crush_index_A);
  std::thread thrB(lambdaRead, B, 5, loop_count_B, crush_index_B);
  while(1)
  {
    std::shared_ptr<const Event> resQueuePop;
    //wait message from devise for 6 seconds
    for(size_t i = 0; i < 6 ; i++)
    {
      resQueuePop = this->queue->pop(std::chrono::seconds(1));
      if(resQueuePop != nullptr)
        break;
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
  this->queue->push(std::make_shared<const Event>(StartedEvent(device)));
  for(size_t i = loop_count; i > crush_index; i--)
    {
      this->queue->push(std::make_shared<const Event>(DataEvent(device)));
    }
    this->queue->push(std::make_shared<const Event>(WorkDoneEvent(device)));
}
