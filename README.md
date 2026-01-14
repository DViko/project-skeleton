
# C++ Project Skeleton

<br>

## 🧩 Supported

> * **Release builds**
> * **Debugging with gdb (VSCode)**
> * **Unit testing ( ctest )**
> * **AddressSanitizer / LeakSanitizer**
> * **Profiling with Valgrind Callgrind**

---

## 📦 Requirements

### Minimum dependencies for Linux:

> * **CMake ≥ 3.23**
> * **C++ compiler ( gcc / clang )**
> * **Ninja**
> * **GDB**
> * **Valgrind**
> * **Kcachegrind ( for profiling )**
> * **VSCode ( optional, for debugging only )**

---

<br>
<br>

# ⚙️ Build and launch

<br>

## 🚀 Release

### ⚙️ Build:

> * **cmake --preset release**
> * **cmake --build --preset release**

### ✅ The result is saved in:

> * **build/release/src/exec**

---

<br>

## 🐞 Debug

### ⚙️ Build:

> * **cmake --preset debug**
> * **cmake --build --preset debug**

### ✅ The result is saved in:

> * **build/debug/src/exec**

<br>

### 📌 Note:

> ***Debugging is performed with VSCode and gdb.***
> ***VSCode is used only as a UI over gdb.***
> ***All build logic is in CMake.***

---

<br>

## 🐞 Unit test

### ⚙️ Build:

> * **cmake --preset unit-test**
> * **cmake --build --preset unit-test**

### ✅ Run CTest:

> * **ctest --test-dir build/debug --output-on-failure**

---

<br>

## 🧪 AddressSanitizer / LeakSanitizer (ASAN)

### ⚙️ Build:

> * **cmake --preset asan**
> * **cmake --build --preset asan**

### ✅ Launch:

> * **./tools/run_asan.sh**

<br>

### ⚠️ Note:

> ***ASAN does not work under gdb/ptrace,***
> ***launch is carried out directly.***
> ***In case of errors, a stack trace and point of allocation are displayed.***

---

<br>

## 📊 Profiling (Valgrind Callgrind)

### ⚙️ Build:

> * **cmake --preset profile**
> * **cmake --build --preset profile**

### ✅ Launch profiling:

> * **./tools/run_callgrind.sh**

### ✅ The result is saved in:

> * **build/profile/callgrind.out**

### ✅ Open with kcachegrind:

> * **./tools/_run_kcachegrind.sh**

---

<br>

