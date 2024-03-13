#include "parallel_executor/EventQueue.h"


void EventQueue::push(const std::shared_ptr<const Event> & event)
{
  std::lock_guard<std::mutex> lck(this->mutex);
  this->queue.push(event);
  this->cv.notify_one();
}
std::shared_ptr<const Event> EventQueue::pop(const std::chrono::seconds & duration)
{
  std::unique_lock<std::mutex> lck(this->mutex);
  this->cv.wait_for(lck, duration);
  
  if(this->queue.empty())
  {
    lck.unlock();
    return nullptr;
  }
    
  else{
    std::shared_ptr<const Event> resEvent = this->queue.front();
    this->queue.pop();
    lck.unlock();
    return resEvent;
  }
    
}

