# PIC16F84A Assembly Projects

This repository contains assembly projects for the **PIC16F84A** microcontroller. It includes example labs, notes, and a workflow for compiling `.asm` files into output files using **MPASMWIN**.

## Documentation

- **PIC16F84A Notes and Figures**: See [docs/notes.md](docs/notes.md) for notes and diagrams related to the chip.

---

## Requirements

- **Linux**:
  - `wine` to run `MPASMWIN.EXE`
- **Windows**:
  - MPASMWIN can be used directly (output will be in the MPASMWIN directory)
- Bash shell (Linux/macOS)

---

## Compilation Workflow (Linux)

To compile an ASM file and move outputs to the `build` folder, run:

```bash
./assembler.sh file.asm
```

- The script creates a folder build/<filename> for each ASM file.
- Supported output file extensions are automatically converted to lowercase (.cod, .lst, .hex, .err).

### Outputs will be

``` bash
# build/sample/sample.cod
# build/sample/sample.lst
# build/sample/sample.hex
# build/sample/sample.err
```

You can also compile multiple ASM files at once:

``` bash
./assembler.sh file1.asm file2.asm
```

## Compilation Workflow (Windows)

1. Open MPASMWIN.EXE.
2. Drag the ASM files into MPASMWIN.
3. Output files are generated in the MPASMWIN directory (no automatic build folder).

### Notes

Ensure your ASM files follow the PIC16F84A instruction set and syntax.

---

## References

- **Microchip PIC16F84A Datasheet**  
  [https://www.microchip.com](https://www.microchip.com)

- **MPASM User Guide**  
  [https://www.microchip.com](https://www.microchip.com)

- **SimulIDE**  
  [https://www.simulide.com](https://www.simulide.com)
