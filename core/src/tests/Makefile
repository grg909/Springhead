################################################################
#
# 	Makefile for tests
#
################################################################

################################################################
#	A rule to make sub directories.
################################################################

TOP_DIR 	= ../..

TESTS_DIR	= FileIO Graphics Physics Collision

all:
	@for dir in $(TESTS_DIR); \
	do $(MAKE) -C $$dir all || exit; \
	done


################################################################
#	Default rules
################################################################

clean:
	@echo ""
	@echo "*----*----*----*----*----*----*----*----*----*----*----*----*----*"
	@echo "               making clean in tests ...                          "
	@echo "*----*----*----*----*----*----*----*----*----*----*----*----*----*"
	@for dir in $(TESTS_DIR); \
	do $(MAKE) -C $$dir  clean || exit; \
	done
	
realclean:
	@echo ""
	@echo "*----*----*----*----*----*----*----*----*----*----*----*----*----*"
	@echo "               making realclean in tests ...                      "
	@echo "*----*----*----*----*----*----*----*----*----*----*----*----*----*"
	@for dir in $(TESTS_DIR); \
	do $(MAKE) -C $$dir  realclean || exit; \
	done

	
################################################################
# 	THE END
################################################################
