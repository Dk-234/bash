# Variables
README = README.md
SCRIPT = guessinggame.sh

# Rules
all: $(README)

$(README): $(SCRIPT)
    echo "# Guessing Game Project" > $(README)
    echo " " >> $(README)
    echo "## Details" >> $(README)
    echo "- Date and Time: $$(date)" >> $(README)
    echo "- Number of lines in $(SCRIPT): $$(wc -l < $(SCRIPT))" >> $(README)

clean:
    rm -f $(README)
