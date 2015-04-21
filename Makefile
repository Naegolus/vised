# -----------------------------------------------------------------------------
# -----------------------------------------------------------------------------
# --                                                                         --
# --  This file is part of the Visual Software Editor project                --
# --  https://github.com/Naegolus/vised                                      --
# --                                                                         --
# --  Author(s):                                                             --
# --      - Helmut, redrocket@gmx.at                                         --
# --                                                                         --
# -----------------------------------------------------------------------------
# --                                                                         --
# --  Copyright (C) 2015 Authors                                             --
# --                                                                         --
# --  This program is free software: you can redistribute it and/or modify   --
# --  it under the terms of the GNU General Public License as published by   --
# --  the Free Software Foundation, either version 3 of the License, or      --
# --  (at your option) any later version.                                    --
# --                                                                         --
# --  This program is distributed in the hope that it will be useful,        --
# --  but WITHOUT ANY WARRANTY; without even the implied warranty of         --
# --  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the           --
# --  GNU General Public License for more details.                           --
# --                                                                         --
# --  You should have received a copy of the GNU General Public License      --
# --  along with this program. If not, see <http://www.gnu.org/licenses/>.   --
# --                                                                         --
# -----------------------------------------------------------------------------
# -----------------------------------------------------------------------------

programName = vised

srcDir = ./src
objDir = ./obj
target = $(objDir)/$(programName)

cppc = g++
cflags = -O0 -g3 -Wall -fmessage-length=0 -std=c++11 -pthread

ld = g++
ldflags =
libs = pthread
liboptions = $(addprefix -l, $(libs))

srcAll = $(wildcard $(srcDir)/*.cpp)
objAll = $(addprefix $(objDir)/, $(notdir $(srcAll:%.cpp=%.o)))

all: $(target)
	make -C trac_logo
	make -C documentation

$(target): $(objAll)
	$(ld) -o "$@" $^ $(ldflags) $(liboptions)

$(objDir)/%.o: $(srcDir)/%.cpp
	$(cppc) -c "$<" $(cflags) -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@"

clean:
	rm -rf obj/*
	make -C trac_logo clean
	make -C documentation clean

help:
	@echo
	@echo 'Usage: make [TARGET]'
	@echo 'TARGETS:'
	@echo '  all                  default. build everything in this repository'
	@echo '  clean                clean entire repository'
	@echo '  help                 print this message'
	@echo

