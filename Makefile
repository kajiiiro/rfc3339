#
# m2m_command
#

TARGET		= rfc3339
SRC		:= ${TARGET}.cpp
SRC		+= ${TARGET}_main.cpp
OBJ		:= ${TARGET}.o
OBJ		+= ${TARGET}_main.o

INCLUDE		:= 
CXXFLAGS	= -std=c++0x -Wall

make:${TARGET}

${TARGET}:${OBJ}
	${CXX} -o ${TARGET} ${CXXFLAGS} ${OBJ}

${OBJ}:${SRC}
	${CXX} -c ${CXXFLAGS} ${SRC}

clean:
	${RM} -v *.o ${TARGET}

