#include <linux/init.h>
#include <linux/module.h>
#include <linux/platform_device.h>

#define GPIO1_DR                        0x0209C000
#define GPIO1_GDIR                      0x0209C004
#define GPIO1_IOMUX_MUX 				0x020E0090
#define GPIO1_CCM_CCGRX					0x020C406C 
#define GPIO1_IOMUX_PAD                 0x020E031C

static struct resource beep_resource[] = {
	[0] = DEFINE_RES_MEM(GPIO1_DR, 4),
	[1] = DEFINE_RES_MEM(GPIO1_GDIR, 4),
	[2] = DEFINE_RES_MEM(GPIO1_IOMUX_MUX, 4),
	[3] = DEFINE_RES_MEM(GPIO1_CCM_CCGRX, 4),
	[4] = DEFINE_RES_MEM(GPIO1_IOMUX_PAD, 4),
};



/* led hardware information */
unsigned int beep_hwinfo[2] = { 19, 12 };

static void beep_release(struct device *dev)
{
    printk("pdev release\n");
}
static struct platform_device beep_pdev = {
	.name = "beep_pdev",
	.id = -1,
	.num_resources = ARRAY_SIZE(beep_resource),
	.resource = beep_resource,
	.dev = {
		.release = beep_release,
		.platform_data = beep_hwinfo,
		},
};

static __init int beep_pdev_init(void)
{
	printk("pdev init\n");
	platform_device_register(&beep_pdev);
	
	return 0;
}

module_init(beep_pdev_init);

static __exit void beep_pdev_exit(void)
{
	printk("pdev exit\n");
	platform_device_unregister(&beep_pdev);
	
}
module_exit(beep_pdev_exit);

MODULE_AUTHOR("embedfire");
MODULE_LICENSE("GPL");
