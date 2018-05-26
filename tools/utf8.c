void main()
{
    unsigned cc;
    printf("Latin-1:\n");
    for(cc = 0xa0; cc <= 0xff; cc++){
	printf("%c = \\x%x\\x%x\n", cc,
	      0xc0 | cc >> 6,
	      0x80 | cc & 0x3f);
    }
    printf("European:\n");
    for(cc = 0x100; cc <= 0x17f; cc++){
	printf("\\x%x = \\x%x\\x%x\n", cc,
	      0xc0 | cc >> 6,
	      0x80 | cc & 0x3f);
    }
    
}
