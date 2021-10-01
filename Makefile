LUAROCKS ?= luarocks
LUAROCKS_SERVER_OPT =
ifneq ($(LUAROCKS_SERVER), )
	LUAROCKS_SERVER_OPT = --server ${LUAROCKS_SERVER}
endif
INSTALL ?= install

install:
	$(INSTALL) -d $(INST_LUADIR)/flatbuffers
	$(INSTALL) flatbuffers/*.lua $(INST_LUADIR)/flatbuffers/

	$(INSTALL) -d $(INST_LUADIR)/flatbuffers.lua
	$(INSTALL) flatbuffers.lua $(INST_LUADIR)/flatbuffers.lua

#publish:
#	luarocks upload rockspec/flatbuffers-lib-2.0.0-1.rockspec --skip-pack --api-key=