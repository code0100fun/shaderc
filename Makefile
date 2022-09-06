BUILD:=build
ifeq ($(OS),Windows_NT)
	LIB_OUTPUT=$(BUILD)/shaderc/libshaderc/libshaderc_shared.dll
else
	LIB_OUTPUT=$(BUILD)/shaderc/libshaderc/libshaderc_combined.a
endif

all: $(LIB_OUTPUT)

$(BUILD):
	mkdir -p $(BUILD)

$(LIB_OUTPUT): $(BUILD)
	cd $(BUILD) ; cmake -GNinja ../thirdparty ; cmake --build .

run: $(LIB_OUTPUT)
	v run examples/online_compile.v

clean:
	-rm -rf $(BUILD)
