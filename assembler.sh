#!/bin/bash
# Usage: ./assembler.sh file1.asm [file2.asm ...]
# Compile ASM with MPASM and move output to ./build/<filename> folders
# Requires wine

# Base build folder
BUILD_DIR=build
mkdir -p "$BUILD_DIR"

# Supported output extensions
EXTS=("COD" "LST" "HEX" "ERR")

# Compile each ASM file passed as argument
for asmfile in "$@"; do
    # Get the filename without extension
    name=$(basename "$asmfile" .asm)
    
    # Create a folder for this ASM file
    mkdir -p "$BUILD_DIR/$name"
    
    # Run MPASM
    wine ./bin/MPASMWIN.EXE "$asmfile"
    
    # Move all output files for this ASM file to its folder
    for ext in "${EXTS[@]}"; do
        outfile="${name}.${ext}"
        if [ -f "$outfile" ]; then
            # Convert extension to lowercase
            lower_ext=$(echo "$ext" | tr '[:upper:]' '[:lower:]')
            mv "$outfile" "$BUILD_DIR/$name/${name}.${lower_ext}"
        fi
    done
    
    echo "Compilation of $asmfile finished. Outputs in $BUILD_DIR/$name/"
done
