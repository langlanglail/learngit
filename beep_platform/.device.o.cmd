cmd_/home/chenglang/vscode/beep_platform/device.o := arm-linux-gnueabihf-gcc -Wp,-MD,/home/chenglang/vscode/beep_platform/.device.o.d  -nostdinc -isystem /usr/local/arm/gcc-linaro-4.9.4-2017.01-x86_64_arm-linux-gnueabihf/bin/../lib/gcc/arm-linux-gnueabihf/4.9.4/include -I/home/chenglang/vscode/ebf_linux_kernel/arch/arm/include -I./arch/arm/include/generated  -I/home/chenglang/vscode/ebf_linux_kernel/include -I./include -I/home/chenglang/vscode/ebf_linux_kernel/arch/arm/include/uapi -I./arch/arm/include/generated/uapi -I/home/chenglang/vscode/ebf_linux_kernel/include/uapi -I./include/generated/uapi -include /home/chenglang/vscode/ebf_linux_kernel/include/linux/kconfig.h -include /home/chenglang/vscode/ebf_linux_kernel/include/linux/compiler_types.h  -I/home/chenglang/vscode/beep_platform -I/home/chenglang/vscode/beep_platform -D__KERNEL__ -mlittle-endian -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -fshort-wchar -Werror-implicit-function-declaration -Wno-format-security -std=gnu89 -fno-PIE -DCC_HAVE_ASM_GOTO -fno-dwarf2-cfi-asm -fno-ipa-sra -mabi=aapcs-linux -mfpu=vfp -funwind-tables -marm -Wa,-mno-warn-deprecated -D__LINUX_ARM_ARCH__=7 -march=armv7-a -msoft-float -Uarm -fno-delete-null-pointer-checks -O2 --param=allow-store-data-races=0 -Wframe-larger-than=1024 -fstack-protector-strong -Wno-unused-but-set-variable -fomit-frame-pointer -fno-var-tracking-assignments -Wdeclaration-after-statement -Wno-pointer-sign -fno-strict-overflow -fno-merge-all-constants -fmerge-constants -fno-stack-check -fconserve-stack -Werror=implicit-int -Werror=strict-prototypes -Werror=date-time  -DMODULE  -DKBUILD_BASENAME='"device"' -DKBUILD_MODNAME='"device"' -c -o /home/chenglang/vscode/beep_platform/.tmp_device.o /home/chenglang/vscode/beep_platform/device.c

source_/home/chenglang/vscode/beep_platform/device.o := /home/chenglang/vscode/beep_platform/device.c

deps_/home/chenglang/vscode/beep_platform/device.o := \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/kconfig.h \
    $(wildcard include/config/cpu/big/endian.h) \
    $(wildcard include/config/booger.h) \
    $(wildcard include/config/foo.h) \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/compiler_types.h \
    $(wildcard include/config/have/arch/compiler/h.h) \
    $(wildcard include/config/enable/must/check.h) \
    $(wildcard include/config/arch/supports/optimized/inlining.h) \
    $(wildcard include/config/optimize/inlining.h) \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/compiler-gcc.h \
    $(wildcard include/config/retpoline.h) \
    $(wildcard include/config/arch/use/builtin/bswap.h) \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/init.h \
    $(wildcard include/config/have/arch/prel32/relocations.h) \
    $(wildcard include/config/strict/kernel/rwx.h) \
    $(wildcard include/config/strict/module/rwx.h) \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/compiler.h \
    $(wildcard include/config/trace/branch/profiling.h) \
    $(wildcard include/config/profile/all/branches.h) \
    $(wildcard include/config/stack/validation.h) \
    $(wildcard include/config/kasan.h) \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/compiler_types.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/uapi/linux/types.h \
  /home/chenglang/vscode/ebf_linux_kernel/arch/arm/include/uapi/asm/types.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/asm-generic/int-ll64.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/uapi/asm-generic/int-ll64.h \
  arch/arm/include/generated/uapi/asm/bitsperlong.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/asm-generic/bitsperlong.h \
    $(wildcard include/config/64bit.h) \
  /home/chenglang/vscode/ebf_linux_kernel/include/uapi/asm-generic/bitsperlong.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/uapi/linux/posix_types.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/stddef.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/uapi/linux/stddef.h \
  /home/chenglang/vscode/ebf_linux_kernel/arch/arm/include/uapi/asm/posix_types.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/uapi/asm-generic/posix_types.h \
  /home/chenglang/vscode/ebf_linux_kernel/arch/arm/include/asm/barrier.h \
    $(wildcard include/config/cpu/32v6k.h) \
    $(wildcard include/config/thumb2/kernel.h) \
    $(wildcard include/config/cpu/xsc3.h) \
    $(wildcard include/config/cpu/fa526.h) \
    $(wildcard include/config/arm/heavy/mb.h) \
    $(wildcard include/config/arm/dma/mem/bufferable.h) \
    $(wildcard include/config/smp.h) \
    $(wildcard include/config/cpu/spectre.h) \
  /home/chenglang/vscode/ebf_linux_kernel/include/asm-generic/barrier.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/kasan-checks.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/types.h \
    $(wildcard include/config/have/uid16.h) \
    $(wildcard include/config/uid16.h) \
    $(wildcard include/config/lbdaf.h) \
    $(wildcard include/config/arch/dma/addr/t/64bit.h) \
    $(wildcard include/config/phys/addr/t/64bit.h) \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/module.h \
    $(wildcard include/config/modules.h) \
    $(wildcard include/config/sysfs.h) \
    $(wildcard include/config/modules/tree/lookup.h) \
    $(wildcard include/config/livepatch.h) \
    $(wildcard include/config/unused/symbols.h) \
    $(wildcard include/config/module/sig.h) \
    $(wildcard include/config/generic/bug.h) \
    $(wildcard include/config/kallsyms.h) \
    $(wildcard include/config/tracepoints.h) \
    $(wildcard include/config/tracing.h) \
    $(wildcard include/config/event/tracing.h) \
    $(wildcard include/config/ftrace/mcount/record.h) \
    $(wildcard include/config/module/unload.h) \
    $(wildcard include/config/constructors.h) \
    $(wildcard include/config/function/error/injection.h) \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/list.h \
    $(wildcard include/config/debug/list.h) \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/poison.h \
    $(wildcard include/config/illegal/pointer/value.h) \
    $(wildcard include/config/page/poisoning/zero.h) \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/const.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/uapi/linux/const.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/kernel.h \
    $(wildcard include/config/preempt/voluntary.h) \
    $(wildcard include/config/debug/atomic/sleep.h) \
    $(wildcard include/config/mmu.h) \
    $(wildcard include/config/prove/locking.h) \
    $(wildcard include/config/arch/has/refcount.h) \
    $(wildcard include/config/panic/timeout.h) \
  /usr/local/arm/gcc-linaro-4.9.4-2017.01-x86_64_arm-linux-gnueabihf/lib/gcc/arm-linux-gnueabihf/4.9.4/include/stdarg.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/linkage.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/stringify.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/export.h \
    $(wildcard include/config/modversions.h) \
    $(wildcard include/config/module/rel/crcs.h) \
    $(wildcard include/config/trim/unused/ksyms.h) \
  /home/chenglang/vscode/ebf_linux_kernel/arch/arm/include/asm/linkage.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/bitops.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/bits.h \
  /home/chenglang/vscode/ebf_linux_kernel/arch/arm/include/asm/bitops.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/irqflags.h \
    $(wildcard include/config/trace/irqflags.h) \
    $(wildcard include/config/irqsoff/tracer.h) \
    $(wildcard include/config/preempt/tracer.h) \
    $(wildcard include/config/trace/irqflags/support.h) \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/typecheck.h \
  /home/chenglang/vscode/ebf_linux_kernel/arch/arm/include/asm/irqflags.h \
    $(wildcard include/config/cpu/v7m.h) \
  /home/chenglang/vscode/ebf_linux_kernel/arch/arm/include/asm/ptrace.h \
    $(wildcard include/config/arm/thumb.h) \
  /home/chenglang/vscode/ebf_linux_kernel/arch/arm/include/uapi/asm/ptrace.h \
    $(wildcard include/config/cpu/endian/be8.h) \
  /home/chenglang/vscode/ebf_linux_kernel/arch/arm/include/asm/hwcap.h \
  /home/chenglang/vscode/ebf_linux_kernel/arch/arm/include/uapi/asm/hwcap.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/asm-generic/irqflags.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/asm-generic/bitops/non-atomic.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/asm-generic/bitops/builtin-__fls.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/asm-generic/bitops/builtin-__ffs.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/asm-generic/bitops/builtin-fls.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/asm-generic/bitops/builtin-ffs.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/asm-generic/bitops/ffz.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/asm-generic/bitops/fls64.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/asm-generic/bitops/sched.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/asm-generic/bitops/hweight.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/asm-generic/bitops/arch_hweight.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/asm-generic/bitops/const_hweight.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/asm-generic/bitops/lock.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/atomic.h \
    $(wildcard include/config/generic/atomic64.h) \
  /home/chenglang/vscode/ebf_linux_kernel/arch/arm/include/asm/atomic.h \
    $(wildcard include/config/arm/lpae.h) \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/prefetch.h \
  /home/chenglang/vscode/ebf_linux_kernel/arch/arm/include/asm/processor.h \
    $(wildcard include/config/have/hw/breakpoint.h) \
    $(wildcard include/config/binfmt/elf/fdpic.h) \
    $(wildcard include/config/arm/errata/754327.h) \
  /home/chenglang/vscode/ebf_linux_kernel/arch/arm/include/asm/hw_breakpoint.h \
  /home/chenglang/vscode/ebf_linux_kernel/arch/arm/include/asm/unified.h \
  /home/chenglang/vscode/ebf_linux_kernel/arch/arm/include/asm/cache.h \
    $(wildcard include/config/arm/l1/cache/shift.h) \
    $(wildcard include/config/aeabi.h) \
  /home/chenglang/vscode/ebf_linux_kernel/arch/arm/include/asm/cmpxchg.h \
    $(wildcard include/config/cpu/sa1100.h) \
    $(wildcard include/config/cpu/sa110.h) \
    $(wildcard include/config/cpu/v6.h) \
  /home/chenglang/vscode/ebf_linux_kernel/include/asm-generic/cmpxchg-local.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/asm-generic/atomic-long.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/asm-generic/bitops/find.h \
    $(wildcard include/config/generic/find/first/bit.h) \
  /home/chenglang/vscode/ebf_linux_kernel/include/asm-generic/bitops/le.h \
  /home/chenglang/vscode/ebf_linux_kernel/arch/arm/include/uapi/asm/byteorder.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/byteorder/little_endian.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/uapi/linux/byteorder/little_endian.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/swab.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/uapi/linux/swab.h \
  /home/chenglang/vscode/ebf_linux_kernel/arch/arm/include/asm/swab.h \
  /home/chenglang/vscode/ebf_linux_kernel/arch/arm/include/uapi/asm/swab.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/byteorder/generic.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/asm-generic/bitops/ext2-atomic-setbit.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/log2.h \
    $(wildcard include/config/arch/has/ilog2/u32.h) \
    $(wildcard include/config/arch/has/ilog2/u64.h) \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/printk.h \
    $(wildcard include/config/message/loglevel/default.h) \
    $(wildcard include/config/console/loglevel/default.h) \
    $(wildcard include/config/console/loglevel/quiet.h) \
    $(wildcard include/config/early/printk.h) \
    $(wildcard include/config/printk/nmi.h) \
    $(wildcard include/config/printk.h) \
    $(wildcard include/config/dynamic/debug.h) \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/kern_levels.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/cache.h \
    $(wildcard include/config/arch/has/cache/line/size.h) \
  /home/chenglang/vscode/ebf_linux_kernel/include/uapi/linux/kernel.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/uapi/linux/sysinfo.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/dynamic_debug.h \
    $(wildcard include/config/jump/label.h) \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/build_bug.h \
  /home/chenglang/vscode/ebf_linux_kernel/arch/arm/include/asm/div64.h \
  /home/chenglang/vscode/ebf_linux_kernel/arch/arm/include/asm/compiler.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/asm-generic/div64.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/stat.h \
  /home/chenglang/vscode/ebf_linux_kernel/arch/arm/include/uapi/asm/stat.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/uapi/linux/stat.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/time.h \
    $(wildcard include/config/arch/uses/gettimeoffset.h) \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/seqlock.h \
    $(wildcard include/config/debug/lock/alloc.h) \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/spinlock.h \
    $(wildcard include/config/debug/spinlock.h) \
    $(wildcard include/config/preempt.h) \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/preempt.h \
    $(wildcard include/config/preempt/count.h) \
    $(wildcard include/config/debug/preempt.h) \
    $(wildcard include/config/trace/preempt/toggle.h) \
    $(wildcard include/config/preempt/notifiers.h) \
  arch/arm/include/generated/asm/preempt.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/asm-generic/preempt.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/thread_info.h \
    $(wildcard include/config/thread/info/in/task.h) \
    $(wildcard include/config/have/arch/within/stack/frames.h) \
    $(wildcard include/config/hardened/usercopy.h) \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/bug.h \
    $(wildcard include/config/bug/on/data/corruption.h) \
  /home/chenglang/vscode/ebf_linux_kernel/arch/arm/include/asm/bug.h \
    $(wildcard include/config/debug/bugverbose.h) \
  /home/chenglang/vscode/ebf_linux_kernel/arch/arm/include/asm/opcodes.h \
    $(wildcard include/config/cpu/endian/be32.h) \
  /home/chenglang/vscode/ebf_linux_kernel/include/asm-generic/bug.h \
    $(wildcard include/config/bug.h) \
    $(wildcard include/config/generic/bug/relative/pointers.h) \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/restart_block.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/time64.h \
    $(wildcard include/config/64bit/time.h) \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/math64.h \
    $(wildcard include/config/arch/supports/int128.h) \
  /home/chenglang/vscode/ebf_linux_kernel/include/uapi/linux/time.h \
  /home/chenglang/vscode/ebf_linux_kernel/arch/arm/include/asm/thread_info.h \
    $(wildcard include/config/crunch.h) \
    $(wildcard include/config/arm/thumbee.h) \
  /home/chenglang/vscode/ebf_linux_kernel/arch/arm/include/asm/fpstate.h \
    $(wildcard include/config/vfpv3.h) \
    $(wildcard include/config/iwmmxt.h) \
  /home/chenglang/vscode/ebf_linux_kernel/arch/arm/include/asm/page.h \
    $(wildcard include/config/cpu/copy/v4wt.h) \
    $(wildcard include/config/cpu/copy/v4wb.h) \
    $(wildcard include/config/cpu/copy/feroceon.h) \
    $(wildcard include/config/cpu/copy/fa.h) \
    $(wildcard include/config/cpu/xscale.h) \
    $(wildcard include/config/cpu/copy/v6.h) \
    $(wildcard include/config/kuser/helpers.h) \
    $(wildcard include/config/have/arch/pfn/valid.h) \
  /home/chenglang/vscode/ebf_linux_kernel/arch/arm/include/asm/glue.h \
  /home/chenglang/vscode/ebf_linux_kernel/arch/arm/include/asm/pgtable-2level-types.h \
  /home/chenglang/vscode/ebf_linux_kernel/arch/arm/include/asm/memory.h \
    $(wildcard include/config/need/mach/memory/h.h) \
    $(wildcard include/config/page/offset.h) \
    $(wildcard include/config/highmem.h) \
    $(wildcard include/config/dram/base.h) \
    $(wildcard include/config/dram/size.h) \
    $(wildcard include/config/xip/kernel.h) \
    $(wildcard include/config/have/tcm.h) \
    $(wildcard include/config/arm/patch/phys/virt.h) \
    $(wildcard include/config/phys/offset.h) \
    $(wildcard include/config/xip/phys/addr.h) \
    $(wildcard include/config/debug/virtual.h) \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/sizes.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/asm-generic/memory_model.h \
    $(wildcard include/config/flatmem.h) \
    $(wildcard include/config/discontigmem.h) \
    $(wildcard include/config/sparsemem/vmemmap.h) \
    $(wildcard include/config/sparsemem.h) \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/pfn.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/asm-generic/getorder.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/bottom_half.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/spinlock_types.h \
  /home/chenglang/vscode/ebf_linux_kernel/arch/arm/include/asm/spinlock_types.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/lockdep.h \
    $(wildcard include/config/lockdep.h) \
    $(wildcard include/config/lock/stat.h) \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/rwlock_types.h \
  /home/chenglang/vscode/ebf_linux_kernel/arch/arm/include/asm/spinlock.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/rwlock.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/spinlock_api_smp.h \
    $(wildcard include/config/inline/spin/lock.h) \
    $(wildcard include/config/inline/spin/lock/bh.h) \
    $(wildcard include/config/inline/spin/lock/irq.h) \
    $(wildcard include/config/inline/spin/lock/irqsave.h) \
    $(wildcard include/config/inline/spin/trylock.h) \
    $(wildcard include/config/inline/spin/trylock/bh.h) \
    $(wildcard include/config/uninline/spin/unlock.h) \
    $(wildcard include/config/inline/spin/unlock/bh.h) \
    $(wildcard include/config/inline/spin/unlock/irq.h) \
    $(wildcard include/config/inline/spin/unlock/irqrestore.h) \
    $(wildcard include/config/generic/lockbreak.h) \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/rwlock_api_smp.h \
    $(wildcard include/config/inline/read/lock.h) \
    $(wildcard include/config/inline/write/lock.h) \
    $(wildcard include/config/inline/read/lock/bh.h) \
    $(wildcard include/config/inline/write/lock/bh.h) \
    $(wildcard include/config/inline/read/lock/irq.h) \
    $(wildcard include/config/inline/write/lock/irq.h) \
    $(wildcard include/config/inline/read/lock/irqsave.h) \
    $(wildcard include/config/inline/write/lock/irqsave.h) \
    $(wildcard include/config/inline/read/trylock.h) \
    $(wildcard include/config/inline/write/trylock.h) \
    $(wildcard include/config/inline/read/unlock.h) \
    $(wildcard include/config/inline/write/unlock.h) \
    $(wildcard include/config/inline/read/unlock/bh.h) \
    $(wildcard include/config/inline/write/unlock/bh.h) \
    $(wildcard include/config/inline/read/unlock/irq.h) \
    $(wildcard include/config/inline/write/unlock/irq.h) \
    $(wildcard include/config/inline/read/unlock/irqrestore.h) \
    $(wildcard include/config/inline/write/unlock/irqrestore.h) \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/time32.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/uidgid.h \
    $(wildcard include/config/multiuser.h) \
    $(wildcard include/config/user/ns.h) \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/highuid.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/kmod.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/umh.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/gfp.h \
    $(wildcard include/config/zone/dma.h) \
    $(wildcard include/config/zone/dma32.h) \
    $(wildcard include/config/zone/device.h) \
    $(wildcard include/config/numa.h) \
    $(wildcard include/config/pm/sleep.h) \
    $(wildcard include/config/memory/isolation.h) \
    $(wildcard include/config/compaction.h) \
    $(wildcard include/config/cma.h) \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/mmdebug.h \
    $(wildcard include/config/debug/vm.h) \
    $(wildcard include/config/debug/vm/pgflags.h) \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/mmzone.h \
    $(wildcard include/config/force/max/zoneorder.h) \
    $(wildcard include/config/zsmalloc.h) \
    $(wildcard include/config/memcg.h) \
    $(wildcard include/config/memory/hotplug.h) \
    $(wildcard include/config/flat/node/mem/map.h) \
    $(wildcard include/config/page/extension.h) \
    $(wildcard include/config/no/bootmem.h) \
    $(wildcard include/config/deferred/struct/page/init.h) \
    $(wildcard include/config/transparent/hugepage.h) \
    $(wildcard include/config/have/memory/present.h) \
    $(wildcard include/config/have/memoryless/nodes.h) \
    $(wildcard include/config/have/memblock/node/map.h) \
    $(wildcard include/config/need/multiple/nodes.h) \
    $(wildcard include/config/have/arch/early/pfn/to/nid.h) \
    $(wildcard include/config/sparsemem/extreme.h) \
    $(wildcard include/config/memory/hotremove.h) \
    $(wildcard include/config/holes/in/zone.h) \
    $(wildcard include/config/arch/has/holes/memorymodel.h) \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/wait.h \
  arch/arm/include/generated/asm/current.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/asm-generic/current.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/uapi/linux/wait.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/threads.h \
    $(wildcard include/config/nr/cpus.h) \
    $(wildcard include/config/base/small.h) \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/numa.h \
    $(wildcard include/config/nodes/shift.h) \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/nodemask.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/bitmap.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/string.h \
    $(wildcard include/config/binary/printf.h) \
    $(wildcard include/config/fortify/source.h) \
  /home/chenglang/vscode/ebf_linux_kernel/include/uapi/linux/string.h \
  /home/chenglang/vscode/ebf_linux_kernel/arch/arm/include/asm/string.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/pageblock-flags.h \
    $(wildcard include/config/hugetlb/page.h) \
    $(wildcard include/config/hugetlb/page/size/variable.h) \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/page-flags-layout.h \
    $(wildcard include/config/numa/balancing.h) \
  /home/chenglang/vscode/ebf_linux_kernel/include/generated/bounds.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/memory_hotplug.h \
    $(wildcard include/config/arch/has/add/pages.h) \
    $(wildcard include/config/have/arch/nodedata/extension.h) \
    $(wildcard include/config/have/bootmem/info/node.h) \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/notifier.h \
    $(wildcard include/config/tree/srcu.h) \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/errno.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/uapi/linux/errno.h \
  arch/arm/include/generated/uapi/asm/errno.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/uapi/asm-generic/errno.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/uapi/asm-generic/errno-base.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/mutex.h \
    $(wildcard include/config/mutex/spin/on/owner.h) \
    $(wildcard include/config/debug/mutexes.h) \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/osq_lock.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/debug_locks.h \
    $(wildcard include/config/debug/locking/api/selftests.h) \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/rwsem.h \
    $(wildcard include/config/rwsem/spin/on/owner.h) \
    $(wildcard include/config/rwsem/generic/spinlock.h) \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/err.h \
  arch/arm/include/generated/asm/rwsem.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/asm-generic/rwsem.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/srcu.h \
    $(wildcard include/config/tiny/srcu.h) \
    $(wildcard include/config/srcu.h) \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/rcupdate.h \
    $(wildcard include/config/preempt/rcu.h) \
    $(wildcard include/config/rcu/stall/common.h) \
    $(wildcard include/config/no/hz/full.h) \
    $(wildcard include/config/rcu/nocb/cpu.h) \
    $(wildcard include/config/tasks/rcu.h) \
    $(wildcard include/config/tree/rcu.h) \
    $(wildcard include/config/tiny/rcu.h) \
    $(wildcard include/config/debug/objects/rcu/head.h) \
    $(wildcard include/config/hotplug/cpu.h) \
    $(wildcard include/config/prove/rcu.h) \
    $(wildcard include/config/rcu/boost.h) \
    $(wildcard include/config/arch/weak/release/acquire.h) \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/cpumask.h \
    $(wildcard include/config/cpumask/offstack.h) \
    $(wildcard include/config/debug/per/cpu/maps.h) \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/rcutree.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/workqueue.h \
    $(wildcard include/config/debug/objects/work.h) \
    $(wildcard include/config/freezer.h) \
    $(wildcard include/config/wq/watchdog.h) \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/timer.h \
    $(wildcard include/config/debug/objects/timers.h) \
    $(wildcard include/config/no/hz/common.h) \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/ktime.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/jiffies.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/timex.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/uapi/linux/timex.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/uapi/linux/param.h \
  arch/arm/include/generated/uapi/asm/param.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/asm-generic/param.h \
    $(wildcard include/config/hz.h) \
  /home/chenglang/vscode/ebf_linux_kernel/include/uapi/asm-generic/param.h \
  /home/chenglang/vscode/ebf_linux_kernel/arch/arm/include/asm/timex.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/generated/timeconst.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/timekeeping.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/timekeeping32.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/debugobjects.h \
    $(wildcard include/config/debug/objects.h) \
    $(wildcard include/config/debug/objects/free.h) \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/rcu_segcblist.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/srcutree.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/rcu_node_tree.h \
    $(wildcard include/config/rcu/fanout.h) \
    $(wildcard include/config/rcu/fanout/leaf.h) \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/completion.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/topology.h \
    $(wildcard include/config/use/percpu/numa/node/id.h) \
    $(wildcard include/config/sched/smt.h) \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/smp.h \
    $(wildcard include/config/up/late/init.h) \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/llist.h \
    $(wildcard include/config/arch/have/nmi/safe/cmpxchg.h) \
  /home/chenglang/vscode/ebf_linux_kernel/arch/arm/include/asm/smp.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/percpu.h \
    $(wildcard include/config/need/per/cpu/embed/first/chunk.h) \
    $(wildcard include/config/need/per/cpu/page/first/chunk.h) \
    $(wildcard include/config/have/setup/per/cpu/area.h) \
  /home/chenglang/vscode/ebf_linux_kernel/arch/arm/include/asm/percpu.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/asm-generic/percpu.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/percpu-defs.h \
    $(wildcard include/config/debug/force/weak/per/cpu.h) \
    $(wildcard include/config/virtualization.h) \
    $(wildcard include/config/amd/mem/encrypt.h) \
  /home/chenglang/vscode/ebf_linux_kernel/arch/arm/include/asm/topology.h \
    $(wildcard include/config/arm/cpu/topology.h) \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/arch_topology.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/asm-generic/topology.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/sysctl.h \
    $(wildcard include/config/sysctl.h) \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/rbtree.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/uapi/linux/sysctl.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/elf.h \
  /home/chenglang/vscode/ebf_linux_kernel/arch/arm/include/asm/elf.h \
    $(wildcard include/config/vdso.h) \
  /home/chenglang/vscode/ebf_linux_kernel/arch/arm/include/asm/auxvec.h \
  /home/chenglang/vscode/ebf_linux_kernel/arch/arm/include/uapi/asm/auxvec.h \
  /home/chenglang/vscode/ebf_linux_kernel/arch/arm/include/asm/vdso_datapage.h \
  /home/chenglang/vscode/ebf_linux_kernel/arch/arm/include/asm/user.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/uapi/linux/elf.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/uapi/linux/elf-em.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/kobject.h \
    $(wildcard include/config/uevent/helper.h) \
    $(wildcard include/config/debug/kobject/release.h) \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/sysfs.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/kernfs.h \
    $(wildcard include/config/kernfs.h) \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/idr.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/radix-tree.h \
    $(wildcard include/config/radix/tree/multiorder.h) \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/kobject_ns.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/kref.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/refcount.h \
    $(wildcard include/config/refcount/full.h) \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/moduleparam.h \
    $(wildcard include/config/alpha.h) \
    $(wildcard include/config/ia64.h) \
    $(wildcard include/config/ppc64.h) \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/jump_label.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/rbtree_latch.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/error-injection.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/asm-generic/error-injection.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/tracepoint-defs.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/static_key.h \
  /home/chenglang/vscode/ebf_linux_kernel/arch/arm/include/asm/module.h \
    $(wildcard include/config/arm/unwind.h) \
    $(wildcard include/config/arm/module/plts.h) \
  /home/chenglang/vscode/ebf_linux_kernel/include/asm-generic/module.h \
    $(wildcard include/config/have/mod/arch/specific.h) \
    $(wildcard include/config/modules/use/elf/rel.h) \
    $(wildcard include/config/modules/use/elf/rela.h) \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/platform_device.h \
    $(wildcard include/config/suspend.h) \
    $(wildcard include/config/hibernate/callbacks.h) \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/device.h \
    $(wildcard include/config/debug/devres.h) \
    $(wildcard include/config/generic/msi/irq/domain.h) \
    $(wildcard include/config/pinctrl.h) \
    $(wildcard include/config/generic/msi/irq.h) \
    $(wildcard include/config/dma/cma.h) \
    $(wildcard include/config/of.h) \
    $(wildcard include/config/devtmpfs.h) \
    $(wildcard include/config/sysfs/deprecated.h) \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/ioport.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/klist.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/pm.h \
    $(wildcard include/config/vt/console/sleep.h) \
    $(wildcard include/config/pm.h) \
    $(wildcard include/config/pm/clk.h) \
    $(wildcard include/config/pm/generic/domains.h) \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/ratelimit.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/sched.h \
    $(wildcard include/config/virt/cpu/accounting/native.h) \
    $(wildcard include/config/sched/info.h) \
    $(wildcard include/config/schedstats.h) \
    $(wildcard include/config/fair/group/sched.h) \
    $(wildcard include/config/rt/group/sched.h) \
    $(wildcard include/config/cgroup/sched.h) \
    $(wildcard include/config/blk/dev/io/trace.h) \
    $(wildcard include/config/memcg/kmem.h) \
    $(wildcard include/config/compat/brk.h) \
    $(wildcard include/config/cgroups.h) \
    $(wildcard include/config/blk/cgroup.h) \
    $(wildcard include/config/stackprotector.h) \
    $(wildcard include/config/arch/has/scaled/cputime.h) \
    $(wildcard include/config/virt/cpu/accounting/gen.h) \
    $(wildcard include/config/posix/timers.h) \
    $(wildcard include/config/sysvipc.h) \
    $(wildcard include/config/detect/hung/task.h) \
    $(wildcard include/config/auditsyscall.h) \
    $(wildcard include/config/rt/mutexes.h) \
    $(wildcard include/config/ubsan.h) \
    $(wildcard include/config/block.h) \
    $(wildcard include/config/task/xacct.h) \
    $(wildcard include/config/cpusets.h) \
    $(wildcard include/config/intel/rdt.h) \
    $(wildcard include/config/futex.h) \
    $(wildcard include/config/compat.h) \
    $(wildcard include/config/perf/events.h) \
    $(wildcard include/config/rseq.h) \
    $(wildcard include/config/task/delay/acct.h) \
    $(wildcard include/config/fault/injection.h) \
    $(wildcard include/config/latencytop.h) \
    $(wildcard include/config/function/graph/tracer.h) \
    $(wildcard include/config/kcov.h) \
    $(wildcard include/config/uprobes.h) \
    $(wildcard include/config/bcache.h) \
    $(wildcard include/config/vmap/stack.h) \
    $(wildcard include/config/security.h) \
    $(wildcard include/config/arch/task/struct/on/stack.h) \
    $(wildcard include/config/debug/rseq.h) \
  /home/chenglang/vscode/ebf_linux_kernel/include/uapi/linux/sched.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/pid.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/rculist.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/sem.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/uapi/linux/sem.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/ipc.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/rhashtable-types.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/uapi/linux/ipc.h \
  arch/arm/include/generated/uapi/asm/ipcbuf.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/uapi/asm-generic/ipcbuf.h \
  arch/arm/include/generated/uapi/asm/sembuf.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/uapi/asm-generic/sembuf.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/shm.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/uapi/linux/shm.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/uapi/asm-generic/hugetlb_encode.h \
  arch/arm/include/generated/uapi/asm/shmbuf.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/uapi/asm-generic/shmbuf.h \
  /home/chenglang/vscode/ebf_linux_kernel/arch/arm/include/asm/shmparam.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/kcov.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/uapi/linux/kcov.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/plist.h \
    $(wildcard include/config/debug/pi/list.h) \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/hrtimer.h \
    $(wildcard include/config/high/res/timers.h) \
    $(wildcard include/config/time/low/res.h) \
    $(wildcard include/config/timerfd.h) \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/timerqueue.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/seccomp.h \
    $(wildcard include/config/seccomp.h) \
    $(wildcard include/config/have/arch/seccomp/filter.h) \
    $(wildcard include/config/seccomp/filter.h) \
    $(wildcard include/config/checkpoint/restore.h) \
  /home/chenglang/vscode/ebf_linux_kernel/include/uapi/linux/seccomp.h \
  arch/arm/include/generated/asm/seccomp.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/asm-generic/seccomp.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/uapi/linux/unistd.h \
  /home/chenglang/vscode/ebf_linux_kernel/arch/arm/include/asm/unistd.h \
    $(wildcard include/config/oabi/compat.h) \
  /home/chenglang/vscode/ebf_linux_kernel/arch/arm/include/uapi/asm/unistd.h \
  arch/arm/include/generated/uapi/asm/unistd-eabi.h \
  arch/arm/include/generated/uapi/asm/unistd-common.h \
  arch/arm/include/generated/asm/unistd-nr.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/resource.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/uapi/linux/resource.h \
  arch/arm/include/generated/uapi/asm/resource.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/asm-generic/resource.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/uapi/asm-generic/resource.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/latencytop.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/sched/prio.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/signal_types.h \
    $(wildcard include/config/old/sigaction.h) \
  /home/chenglang/vscode/ebf_linux_kernel/include/uapi/linux/signal.h \
  /home/chenglang/vscode/ebf_linux_kernel/arch/arm/include/asm/signal.h \
  /home/chenglang/vscode/ebf_linux_kernel/arch/arm/include/uapi/asm/signal.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/uapi/asm-generic/signal-defs.h \
  /home/chenglang/vscode/ebf_linux_kernel/arch/arm/include/uapi/asm/sigcontext.h \
  arch/arm/include/generated/uapi/asm/siginfo.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/uapi/asm-generic/siginfo.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/mm_types_task.h \
    $(wildcard include/config/arch/want/batched/unmap/tlb/flush.h) \
    $(wildcard include/config/split/ptlock/cpus.h) \
    $(wildcard include/config/arch/enable/split/pmd/ptlock.h) \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/task_io_accounting.h \
    $(wildcard include/config/task/io/accounting.h) \
  /home/chenglang/vscode/ebf_linux_kernel/include/uapi/linux/rseq.h \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/overflow.h \
  /home/chenglang/vscode/ebf_linux_kernel/arch/arm/include/asm/device.h \
    $(wildcard include/config/dmabounce.h) \
    $(wildcard include/config/iommu/api.h) \
    $(wildcard include/config/arm/dma/use/iommu.h) \
    $(wildcard include/config/xen.h) \
    $(wildcard include/config/arch/omap.h) \
  /home/chenglang/vscode/ebf_linux_kernel/include/linux/pm_wakeup.h \

/home/chenglang/vscode/beep_platform/device.o: $(deps_/home/chenglang/vscode/beep_platform/device.o)

$(deps_/home/chenglang/vscode/beep_platform/device.o):
