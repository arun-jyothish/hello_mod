#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/gpio.h>


MODULE_LICENSE("GPL");
MODULE_AUTHOR("Arun jyothish k");
MODULE_DESCRIPTION("Hello world print, linux module ... ");

static int hello_init(void){
	printk( KERN_INFO "\n\n Added new Module ....jo\n\n" );
	return 0;
}

static void hello_exit(void){
#define msg "\n\n Hello World .... Module Removed ...jo\n\n "
	printk( KERN_INFO msg );
}

module_init(hello_init);
module_exit(hello_exit);
