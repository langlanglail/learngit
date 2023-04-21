#include <linux/init.h>         //初始化头文件
#include <linux/module.h>       //最基本的文件，支持动态添加和卸载模块。
#include <linux/cdev.h>	
#include <linux/fs.h>           //文件系统头文件，定义文件表结构（file,buffer_head,m_inode等）
#include <linux/uaccess.h>      //包含了copy_to_user、copy_from_user等内核访问用户进程内存地址的函数定义。
#include <linux/io.h>           //包含了ioremap、iowrite等内核访问IO内存等函数的定义。
#include <linux/kernel.h>		//驱动要写入内核，与内核相关的头文件

#define GPIO1_DR                        0x0209C000
#define GPIO1_GDIR                      0x0209C004
#define GPIO1_IOMUX_MUX 				0x020E0090
#define GPIO1_CCM_CCGRX					0x020C406C 
#define GPIO1_IOMUX_PAD                 0x020E031C
#define DEVICE_NUMBER 1		   //定义次设备号的个数

#define DEVICE_ANAME "beepchrdev" //定义动态注册设备的名称
#define DEVICE_MINOR_NUMBER 0  //定义次设备号的起始地址

#define DEVICE_CLASS_NAME "chrdev_class"
#define DEVICE_NODE_NAME "beepchrdev" //宏定义设备节点的名字

struct class *class;				   /* 类 */
struct device *device;				   /* 设备 */

unsigned int *va_dr,*va_gdir,*va_iomuxc_mux,*va_ccm_ccgrx,*va_iomux_pad;     //存放映射完的虚拟地址的首地址
unsigned int led_pin=19,clock_offset=12; 
struct cdev cdev;	
int major_num,minor_num;
int dev_num=1;

ssize_t beepchardev_read (struct file *file, char __user *ubuf, size_t size, loff_t *loff_t)
{
	printk("beepchardev_read\n ");
	return 0;
}


ssize_t beepchardev_write (struct file *file, const char __user *ubuf, size_t size, loff_t *loff_t)
{	
    /*应用程序传入数据到内核空间，然后控制蜂鸣器的逻辑，在此添加*/
	// kbuf保存的是从应用层读取到的数据
    char kbuf[64] = {0};
    // copy_from_user 从应用层传递数据给内核层
	if(copy_from_user(kbuf,ubuf,size)!= 0) 
	{
        // copy_from_user 传递失败打印
		printk("copy_from_user error \n ");
		return -1;
	}
    //打印传递进内核的数据
    printk("kbuf is %d\n ",kbuf[0]); 
	if(kbuf[0]==1) //传入数据为1 ，蜂鸣器响
	{
		printk("input 1 \n ");
		*va_dr |= (1<<led_pin);
	}
	else if(kbuf[0]==0) //传入数据为0，蜂鸣器关闭
		*va_dr &= ~(1<<led_pin);
	return 0;
}

int beepchardev_release(struct inode *inode,struct file *file){
	iounmap(va_dr);
	iounmap(va_gdir);
	iounmap(va_iomuxc_mux);
	iounmap(va_ccm_ccgrx);
	iounmap(va_iomux_pad);
	printk("hello beepchardev_relaease bye bye \n ");
	return 0;
}

int beepchardev_open(struct inode *inode,struct file *file){
	
	unsigned int val = 0;//将物理地址转化为虚拟地址
	va_dr = ioremap(GPIO1_DR,4);
	va_gdir = ioremap(GPIO1_GDIR, 4);
	va_iomuxc_mux = ioremap(GPIO1_IOMUX_MUX, 4);
	va_ccm_ccgrx = ioremap(GPIO1_CCM_CCGRX, 4);
	va_iomux_pad = ioremap(GPIO1_IOMUX_PAD, 4);
	
	if(va_dr == NULL||va_gdir==NULL||va_iomuxc_mux==NULL||va_ccm_ccgrx==NULL||va_iomux_pad==NULL){
		printk("GPIO1_DR ioremap is error \n");
		return EBUSY;
	}
	else {
		printk("GPIO1_DR ioremap is ok \n");
	}	
	val = ioread32(va_ccm_ccgrx);
	val &= ~(3 << clock_offset);
	val |= (3 << clock_offset);
	iowrite32(val, va_ccm_ccgrx);
	iowrite32(5, va_iomuxc_mux);
	iowrite32(0x1F838, va_iomux_pad);
	val = ioread32(va_gdir);
	val &= ~(1 << led_pin);
	val |= (1 << led_pin);
	iowrite32(val, va_gdir);
	val = ioread32(va_dr);
	val |= (0x01 << led_pin);
	iowrite32(val, va_dr);
	printk("hello beepchardev_open\n ");
	return 0;
}


//文件操作集
struct file_operations beepchardev_fops={
	.owner = THIS_MODULE,
	.open = beepchardev_open,
	.release = beepchardev_release,
	.read = beepchardev_read,
	.write = beepchardev_write,
};



static int beepchardev_init(void)
{
    unsigned int ret;
	ret = alloc_chrdev_region(&dev_num, DEVICE_MINOR_NUMBER, 1, DEVICE_ANAME);
	if (ret < 0){
		printk("alloc_chrdev_region error\n");
		return -1;
	}
	else printk("alloc_chrdev_region ok\n"); //动态注册设备号成功

	major_num = MAJOR(dev_num);			   //将主设备号取出来
	minor_num = MINOR(dev_num);			   //将次设备号取出来
	printk("major_num = %d\n", major_num); //打印传入进来的主设备号
	printk("minor_num = %d\n", minor_num); //打印传入进来的次设备号
    cdev.owner = THIS_MODULE;
	cdev_init(&cdev, &beepchardev_fops);
	cdev_add(&cdev, dev_num, DEVICE_NUMBER);
	class = class_create(THIS_MODULE, DEVICE_CLASS_NAME);
	device = device_create(class, NULL, dev_num, NULL, DEVICE_NODE_NAME);
	return 0;
}


static void beepchardev_exit(void){
  
	unregister_chrdev_region(MKDEV(major_num, minor_num), DEVICE_NUMBER); //注销设备号
	cdev_del(&cdev);
	printk(" beepchardev gooodbye! \n");
}

module_init(beepchardev_init);
module_exit(beepchardev_exit);
MODULE_LICENSE("GPL");