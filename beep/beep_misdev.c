/*
 * @Descripttion: 基于杂项设备的蜂鸣器驱动
 * @version: 
 * @Author: Apple
 * @Date: 2021-02-23 13:54:49
 */
#include <linux/init.h>         //初始化头文件
#include <linux/module.h>       //最基本的文件，支持动态添加和卸载模块。
#include <linux/miscdevice.h>   //包含了miscdevice结构的定义及相关的操作函数。
#include <linux/fs.h>           //文件系统头文件，定义文件表结构（file,buffer_head,m_inode等）
#include <linux/uaccess.h>      //包含了copy_to_user、copy_from_user等内核访问用户进程内存地址的函数定义。
#include <linux/io.h>           //包含了ioremap、iowrite等内核访问IO内存等函数的定义。
#include <linux/kernel.h>		//驱动要写入内核，与内核相关的头文件


#define GPIO1_DR                        0x0209C000
#define GPIO1_GDIR                      0x0209C004
#define GPIO1_IOMUX_MUX 				0x020E0090
#define GPIO1_CCM_CCGRX					0x020C406C 
#define GPIO1_IOMUX_PAD                 0x020E031C


unsigned int *va_dr,*va_gdir,*va_iomuxc_mux,*va_ccm_ccgrx,*va_iomux_pad;     //存放映射完的虚拟地址的首地址
unsigned int led_pin=19,clock_offset=12; 
/**
 * @name: misc_read
 * @test: 从设备中读取数据，当用户层调用函数read时，对应的，内核驱动就会调用这个函数。
 * @msg: 
 * @param {structfile} *file file结构体
 * @param {char__user} *ubuf 这是对应用户层的read函数的第二个参数void *buf
 * @param {size_t} size 对应应用层的read函数的第三个参数
 * @param {loff_t} *loff_t 这是用于存放文件的偏移量的，回想一下系统编程时，读写文件的操作都会使偏移量往后移。
 * @return {*} 当返回正数时，内核会把值传给应用程序的返回值。一般的，调用成功会返回成功读取的字节数。
如果返回负数，内核就会认为这是错误，应用程序返回-1
 */


ssize_t misc_read (struct file *file, char __user *ubuf, size_t size, loff_t *loff_t)
{
	printk("misc_read\n ");
	return 0;
}
/**
 * @name: misc_write
 * @test: 往设备写入数据，当用户层调用函数write时，对应的，内核驱动就会调用这个函数。
 * @msg: 
 * @param {structfile} * filefile结构体
 * @param {constchar__user} *ubuf 这是对应用户层的write函数的第二个参数const void *buf
 * @param {size_t} size 对应用户层的write函数的第三个参数count。
 * @param {loff_t} *loff_t 这是用于存放文件的偏移量的，回想一下系统编程时，读写文件的操作都会使偏移量往后移。
 * @return {*} 当返回正数时，内核会把值传给应用程序的返回值。一般的，调用成功会返回成功读取的字节数。
 如果返回负数，内核就会认为这是错误，应用程序返回-1。
 */

ssize_t misc_write (struct file *file, const char __user *ubuf, size_t size, loff_t *loff_t)
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
/**
 * @name: misc_release
 * @test: 当设备文件被关闭时内核会调用这个操作，当然这也可以不实现，函数默认为NULL。关闭设备永远成功。
 * @msg: 
 * @param {structinode} *inode 设备节点
 * @param {structfile} *file filefile结构体
 * @return {0}
 */
int misc_release(struct inode *inode,struct file *file){
	printk("hello misc_relaease bye bye \n ");
	return 0;
}
/**
 * @name: misc_open
 * @test: 在操作设备前必须先调用open函数打开文件，可以干一些需要的初始化操作。
 * @msg: 
 * @param {structinode} *inode 设备节点
 * @param {structfile} *file filefile结构体
 * @return {0}
 */
int misc_open(struct inode *inode,struct file *file){
	
	unsigned int val = 0;
	//将物理地址转化为虚拟地址
	va_dr = ioremap(GPIO1_DR,4);
	va_gdir = ioremap(GPIO1_GDIR, 4);
	va_iomuxc_mux = ioremap(GPIO1_IOMUX_MUX, 4);
	va_ccm_ccgrx = ioremap(GPIO1_CCM_CCGRX, 4);
	va_iomux_pad = ioremap(GPIO1_IOMUX_PAD, 4);
	
	if(va_dr == NULL||va_gdir==NULL||va_iomuxc_mux==NULL||va_ccm_ccgrx==NULL||va_iomux_pad==NULL)
	{
		printk("GPIO1_DR ioremap is error \n");
		return EBUSY;
	}
	printk("GPIO1_DR ioremap is ok \n");	



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
	printk("hello misc_open\n ");
	return 0;
}
//文件操作集
struct file_operations misc_fops={
	.owner = THIS_MODULE,
	.open = misc_open,
	.release = misc_release,
	.read = misc_read,
	.write = misc_write,
};
//miscdevice结构体
struct miscdevice  misc_dev = {
	.minor = MISC_DYNAMIC_MINOR,
	.name = "hello_misc",
	.fops = &misc_fops,
};

static int misc_init(void)
{
	int ret;
    //注册杂项设备
	ret = misc_register(&misc_dev);
	if(ret<0)
	{
		printk("misc registe is error \n");
	}
	
    
	printk("misc registe is succeed \n");
	return 0;
}
static void misc_exit(void){
    //卸载杂项设备
	misc_deregister(&misc_dev);
	iounmap(va_dr);
	iounmap(va_gdir);
	iounmap(va_iomuxc_mux);
	iounmap(va_ccm_ccgrx);
	iounmap(va_iomux_pad);
	printk(" misc gooodbye! \n");
}
module_init(misc_init);
module_exit(misc_exit);
MODULE_LICENSE("GPL");

