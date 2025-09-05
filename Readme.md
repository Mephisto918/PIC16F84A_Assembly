# PIC16F84A Assembly

This repository contains assembly projects for the **PIC16F84A** microcontroller. It includes example labs, notes, and a workflow for compiling `.asm` files into output files using **MPASMWIN**.

### Notes on Linux / Wine

- On Linux, when using `MPASMWIN.EXE` with Wine, avoid placing your project deep in nested directories.
- Long Linux paths can cause MPASM to fail due to Wine translating the paths into Windows-style paths.
- Recommended: keep your project in a top-level folder like `~/Desktop` or `~/Downloads` for smoother compilation.

## Documentation

- **PIC16F84A Notes and Figures**: See [docs/notes.md](docs/notes.md), contains reference diagrams, instruction set summaries, and example code snippets..

---

## Requirements

- **Linux**:
  - `wine` to run `MPASMWIN.EXE`
- **Windows**:
  - MPASMWIN can be used directly (output will be in the MPASMWIN directory)
- Bash shell (Linux/macOS), git Bash

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
  [https://ww1.microchip.com/downloads/en/devicedoc/35007b.pdf](https://ww1.microchip.com/downloads/en/devicedoc/35007b.pdf)

- **MPASM User Guide**  
  [https://www.microchip.com](https://www.microchip.com)

- **SimulIDE**  
  [https://www.simulide.com](https://www.simulide.com)
