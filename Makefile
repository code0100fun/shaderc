BUILD:=build
LIB_OUTPUT=$(BUILD)/shaderc/libshaderc/libshaderc_shared.dll

all: $(BUILD_OUTPUT)

$(BUILD):
	mkdir -p $(BUILD)

$(LIB_OUTPUT): $(BUILD)
	cd $(BUILD) ; cmake ../thirdparty ; cmake --build .

run: $(LIB_OUTPUT)
	v run examples/online_compile.v

clean:
	-rm -rf $(BUILD)
