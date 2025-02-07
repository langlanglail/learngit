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
	{ 0xa3f23a4d, "class_destroy" },
	{ 0xe5135656, "platform_driver_unregister" },
	{ 0x911060d2, "__platform_driver_register" },
	{ 0xb489cb8d, "__class_create" },
	{ 0x7772b225, "device_create" },
	{ 0x99d31bfb, "cdev_add" },
	{ 0xb9aea4e3, "cdev_init" },
	{ 0x3fd78f3b, "register_chrdev_region" },
	{ 0x3c8b556a, "devm_ioremap" },
	{ 0xf4d0f11a, "platform_get_resource" },
	{ 0xde10886d, "devm_kmalloc" },
	{ 0xdb7305a1, "__stack_chk_fail" },
	{ 0x973d0f9e, "kstrtoul_from_user" },
	{ 0x8f678b07, "__stack_chk_guard" },
	{ 0x822137e2, "arm_heavy_mb" },
	{ 0x6091b333, "unregister_chrdev_region" },
	{ 0x676c0ac6, "device_destroy" },
	{ 0xf7d082ff, "cdev_del" },
	{ 0x7c32d0f0, "printk" },
	{ 0xefd6cf06, "__aeabi_unwind_cpp_pr0" },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=";

MODULE_ALIAS("platform:beep_pdev");

MODULE_INFO(srcversion, "569D3E8E2C1CACDCAF83C56");
