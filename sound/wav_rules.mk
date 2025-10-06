# Rules for using wav2agb by ipatix: https://github.com/ipatix/wav2agb.

# Tried to keep it self contained as much as possible to prevent potential conflicts in the actual makefile.

CRY_WAV_DIR = $(CRY_SUBDIR)
CRY_WAV_OBJ_DIR = $(OBJ_DIR)/$(CRY_WAV_DIR)
CRY_WAV_OBJS := $(patsubst $(CRY_WAV_DIR)/%.wav,$(CRY_WAV_OBJ_DIR)/%.o,$(wildcard $(CRY_WAV_DIR)/*.wav))

WAV_OBJS := $(CRY_WAV_OBJS)
OBJS_REL += $(patsubst $(OBJ_DIR)/%,%,$(WAV_OBJS))

SUBDIRS := $(sort $(dir $(WAV_OBJS)))
$(shell mkdir -p $(SUBDIRS))

# 1: wav2agb               - convert wav to GBA compatible assembly (.s) file through arguments passed from cfg files
# 2: arm-none-eabi-as      - create object (.o) file in $(OBJ_DIR) of the assembly file 
# 3: arm-none-eabi-objcopy - create binary (.bin) of the object file

# cries
CRY_WAV_CFG_PATH := $(CRY_WAV_DIR)/wav.cfg

# $1: Source path no extension
# $2: Options
define WAV_RULE
$(CRY_WAV_DIR)/$1.bin: $(CRY_WAV_DIR)/$1.wav $(CRY_WAV_CFG_PATH)
	$(WAV) $(CRY_WAV_DIR)/$1.wav $< $(CRY_WAV_DIR)/$1.s $@ $2
	$(AS) $(CRY_WAV_DIR)/$1.s -o $(CRY_WAV_OBJ_DIR)/$1.o
	$(OBJCOPY) -O binary $(CRY_WAV_OBJ_DIR)/$1.o $(CRY_WAV_DIR)/$1.bin
endef
#                            source path,                             remaining text (options)
define WAV_EXPANSION
	$(eval $(call WAV_RULE,$(basename $(patsubst %:,%,$(word 1,$1))),$(wordlist 2,999,$1)))
endef

$(foreach line,$(shell cat $(CRY_WAV_CFG_PATH) | sed "s/ /__SPACE__/g"),$(call WAV_EXPANSION,$(subst __SPACE__, ,$(line))))

# Warn users building without a .cfg - build will fail at link time
$(CRY_WAV_DIR)/%.bin: $(CRY_WAV_DIR)/%.wav
	$(warning $< does not have an associated entry in $(CRY_WAV_CFG_PATH)! It cannot be built)

clean-wav:
	rm -f $(CRY_WAV_DIR)/*.s $(CRY_WAV_DIR)/*.bin
