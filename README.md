# wasm-js-comparison

### [https://tplewe.com/wasm-js-comparison](https://tplewe.com/wasm-js-comparison)

### Download & run
```
git clone https://github.com/taylorplewe/wasm-js-comparison.git
cd wasm-js-comparison
npm i
node index.js
```
Go to `localhost:80` in your browser

---
### WebAssembly
After making any changes to a WebAssembly source file, whether it be a .wat or C file, they need to be compiled into `.wasm` binary files before you see a change in your browser.

In order to do that compiling, you need to have the tools installed.  Mozilla offers [great documentation](https://developer.mozilla.org/en-US/docs/WebAssembly) on how to download those tools as well as basic getting started tutorials and stuff for WA.  Basically, you need access to command-line tools `wat2wasm`, `wasm2wat`, and `emcc` mostly.
- For compiling a `.wat` file, run `wat2wasm` on it
- For compiling a C file, run `emcc` on it
- For viewing the disassembled code of a `.wasm` binary, run `wasm2wat` on it
 - You can add `-o {something.wat}` to output that disassembly to a file
