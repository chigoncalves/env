#!/usr/bin/env zsh

LUA_VERSION_SUFFIX=5.3
LLVM_VERSION_SUFFIX=-3.8
PRIORITY=10
USER_NAME=crowseye

declare -a llvm_tools=(clang  clang++  clang-apply-replacements \
			      clang-check  clang-cl  clang-query  clang-rename \
			      llvm-ar llvm-c-test llvm-dwarfdump llvm-lto \
			      llvm-pdbdump llvm-size llvm-as llvm-cxxdump llvm-dwp \
			      llvm-mc llvm-profdata llvm-split llvm-bcanalyzer \
			      llvm-diff llvm-extract llvm-mcmarkup llvm-ranlib \
			      llvm-stress llvm-config llvm-dis llvm-lib llvm-nm \
			      llvm-readobj llvm-symbolizer llvm-cov llvm-dsymutil \
			      llvm-link llvm-objdump llvm-rtdyld llvm-tblgen \
			      lldb lldb-argdumper lldb-mi lldb-server)

declare -a lua_tools=(lua luac)

function install_alternatives () {
    local version=${@[${#}]}

    let "last_index = ${#} - 1"
    declare -a tools=(${@:1:${last_index}})

    for tool in ${tools[@]}; do
	tool_name=${tool}${version}
	tool_path=$(which $tool_name)

	if [ -x ${tool_path} ]; then
	    dirname=$(dirname ${tool_path})
	    tool_link="${dirname}/${tool}"
	    update-alternatives --install ${tool_link} ${tool_name} ${tool_path} ${PRIORITY}
	else
	    echo "\`${tool_name}' not found. Maybe it is not installed."
	fi
    done
}

function add_settings () {
    local udev_file='/etc/udev/rules.d/51-android.rules'
    local udev_rule='SUBSYSTEM=="usb", ATTR{idVendor}=="22b8", MODE="0666", GROUP="plugdev"'

    if [ ! -e ${udev_file} ]; then
	echo "${udev_rule}" > ${udev_file}
	chmod a+r ${udev_file}
    fi

    local fstab_entry='/dev/sdb1    /home/crowseye/slnc    ext4    defaults,noatime    0    2'
    local result=$(grep ${fstab_entry} /etc/fstab)
    if [ -z ${result} ]; then
	echo "${fstab_entry}" >> /etc/fstab
    fi

    chsh -s /bin/zsh ${USER_NAME}

    gpasswd -a ${USER_NAME} kvm
    gpasswd -a ${USER_NAME} libvirtd
}


install_alternatives "${llvm_tools[@]}" ${LLVM_VERSION_SUFFIX}
install_alternatives "${lua_tools[@]}" ${LUA_VERSION_SUFFIX}

add_settings
