#/bin/bash

#NOTE: Install http://www.graphviz.org/ before use

# The path of the executable dot tool. Change this to the location of dot.
# by default, 'dot' is used 
# export DOT=/usr/bin/dot

# The directory that contains the DotML Schema and the XSLT stylesheets
export DOTML_DIR=dotml

# The path to a XSLT processor (LibXML works fine, but others work well too.)
export XSLT="xsltproc"

# How to invoke the XSLT processor. "(XSL)" is a placeholder for the stylesheet,
# "(INPUT)" for the input file.
export DOTML_XSLT="$XSLT (XSL) (INPUT)"

# Generates the SVG charts
$DOTML_DIR/generate-svg-graphics.bash $1 $2
