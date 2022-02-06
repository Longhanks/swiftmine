.PHONY : all clean re makedir
.SUFFIXES: .swift .ui

UIDIR = UI
SWIFTDIR = Sources/UI
RES =	Sources/Resources/resource.rcc
UI =	$(wildcard $(UIDIR)/*.ui)
SWIFT = $(patsubst $(UIDIR)/%.ui,$(SWIFTDIR)/%.swift,$(UI))
RSRC =	$(wildcard $(UIDIR)/resource/*.*)
UIC    = qlift-uic

$(SWIFTDIR)/%.swift: $(UIDIR)/%.ui
	$(UIC) $< $@

all:	${SWIFT} $(RES)

makedir:
	mkdir -p $(SWIFTDIR)

$(RES):	${RSRC}
	rcc $(UIDIR)/resource/resource.qrc --binary -o $(RES)

clean:
	rm -f $(SWIFT)
	rm -f $(RES)

re:	makedir clean all
