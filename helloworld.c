/*
 * helloworld.c
 *
 *  Created on: Nov 2, 2019
 *      Author: javi
 */

#include <linux/module.h>

static int __init hello_init(void)
{
	pr_info("Hello world init\n");
	return 0;
}

static void __exit hello_exit(void)
{
	pr_info("Hello world exit\n");
}

module_init(hello_init);
module_exit(hello_exit);

//MODULE_LICENSE("GPL");
MODULE_AUTHOR("JaP <occam25@yahoo.es>");
MODULE_DESCRIPTION("This is a print out Hello World module");