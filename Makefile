include $(GOROOT)/src/Make.inc

TARG=bitbucket.org/taruti/mimemagic
GOFILES=\
	autogenerated.go\
	types.go\

include $(GOROOT)/src/Make.pkg

autogenerated.go: generator.go
	$(GC) generator.go
	$(LD) -o generator generator.$O
	./generator > autogenerated.go
	rm -f generator generator.$O
