set(HDRS 
	Device.h
	DeviceA.h
	DeviceB.h
	DeviceEvent.h
	Parser.h
	StartedEvent.h
	WorkDoneEvent.h
	DataEvent.h
	Event.h
	EventQueue.h
        )

set(SRCS
	src/Device.cpp
	src/DeviceA.cpp
	src/DeviceB.cpp
	src/DeviceEvent.cpp
	src/Parser.cpp
	src/StartedEvent.cpp
	src/WorkDoneEvent.cpp
	src/DataEvent.cpp
	src/Event.cpp
	src/EventQueue.cpp
         )

add_library(parall_lib OBJECT ${SRCS} ${HDRS})

add_executable(main src/main.cpp)
target_link_libraries(main parall_lib)
