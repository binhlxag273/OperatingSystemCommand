#
# Makefile for c++
#

SHARED=$(BIN_NAME)
LIBS=-L....
INCLUDE=-I....
CXXFLAGS=-std=c++17 -DBOOST_LOG_DYN_LINK -fPIC -Wall -Werror -g

SRCS = $(wildcard *.cpp)
# wildcard *.cpp : SRC -> all file cpp in current folder

%.o : %.cpp
  $(CXX) $(CXXFLAGS) $< -c -o $@ $(LIBS) $(INCLUDE) 

# -c : chmod -x %.o
# $< : %.cpp : first prerequisite
# $^ : all prerequisite
# $@ : all target
# formula: 
## target : prerequisite
##    recipe here

OJBS = $(patsubst %.cpp,%.o,%(SRCS))
