RISC-V QEMU Torture
================================================

Hacked-together scripts for running `riscv-torture` on `riscv-qemu`.

## Setup:

1) Put `riscv-tools` install on path

2) `git submodule update --init --recursive`

3) Apply patch to `riscv-qemu`

    cd riscv-qemu
    git apply ../qemu.patch

4) Apply patch to `riscv-torture`

    cd riscv-torture
    git apply ../torture.patch

5) In `riscv-qemu`

    ./configure --target-list=riscv64-softmmu,riscv32-softmmu
    make -j16

6) put `runqemu` on path as `runqemu` and `runqemu-debug`

7) in `riscv-torture`, run:

    ../do_run.sh

Or, if you don't have `pushbulletmessage` for success/failure notifications, run:

    make cnight
