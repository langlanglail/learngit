#include <linux/build-salt.h>
#include <linux/module.h>
#include <linux/vermagic.h>
#include <linux/compiler.h>

BUILD_SALT;

MODULE_INFO(vermagic, VERMAGIC_STRING);
MODULE_INFO(name, KBUILD_MODNAME);

__visible struct module __this_module
__attribute__((section(".gnu.linkonce.this_module"))) = {
	.name = KBUILD_MODNAME,
	.init = init_module,
#ifdef CONFIG_MODULE_UNLOAD
	.exit = cleanup_module,
#endif
	.arch = MODULE_ARCH_INIT,
};

#ifdef CONFIG_RETPOLINE
MODULE_INFO(retpoline, "Y");
#endif

static const struct modversion_info ____versions[]
__used
__attribute__((section("__versions"))) = {
	{ 0x10d06f3b, "module_layout" },
	{ 0x9999af2c, "i2c_del_driver" },
	{ 0x1242b8d4, "i2c_register_driver" },
	{ 0x1e047854, "warn_slowpath_fmt" },
	{ 0xf4fa543b, "arm_copy_to_user" },
	{ 0xdb7305a1, "__stack_chk_fail" },
	{ 0xfd9c6619, "i2c_transfer" },
	{ 0x8f678b07, "__stack_chk_guard" },
	{ 0x7772b225, "device_create" },
	{ 0xb489cb8d, "__class_create" },
	{ 0x99d31bfb, "cdev_add" },
	{ 0xb9aea4e3, "cdev_init" },
	{ 0xe3ec2f2b, "alloc_chrdev_region" },
	{ 0x7c32d0f0, "printk" },
	{ 0x6091b333, "unregister_chrdev_region" },
	{ 0xf7d082ff, "cdev_del" },
	{ 0xa3f23a4d, "class_destroy" },
	{ 0x676c0ac6, "device_destroy" },
	{ 0xefd6cf06, "__aeabi_unwind_cpp_pr0" },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=";


MODULE_INFO(srcversion, "D2036016C8E9BD629625A9A");
