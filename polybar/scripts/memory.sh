#!/usr/local/bin/bash
active_mem=$(sysctl -e vm.stats.vm.v_active_count | cut -d "=" -f 2)
echo $(($active_mem/10240))
