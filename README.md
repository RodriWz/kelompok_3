# 📘 Panduan GitHub: Clone Repo, Push, dan Pull Request

Panduan ini dibuat untuk **pemula / anak PKL / mahasiswa** agar memahami alur kerja GitHub yang **aman dan benar**, terutama ketika branch `main` dilindungi.

---

## 🧰 Persiapan Awal

Pastikan sudah terinstall:

* ✅ Git
* ✅ Akun GitHub
* ✅ Git sudah terhubung ke GitHub (login / SSH)

Cek Git:

```bash
git --version
```

---

## 1️⃣ Clone Repository dari GitHub

1. Buka repository GitHub
2. Klik tombol **Code** → Copy URL (HTTPS / SSH)
3. Jalankan perintah berikut:

```bash
git clone https://github.com/username/nama-repo.git
```

Masuk ke folder project:

```bash
cd nama-repo
```

---

## 2️⃣ Cek Branch Aktif

```bash
git branch
```

Biasanya default ada branch `main`.

> ⚠️ Jangan langsung push ke `main` jika branch dilindungi.

---

## 3️⃣ Buat Branch Baru (WAJIB)

Buat branch baru sesuai fitur yang dikerjakan:

```bash
git checkout -b fitur-login
```

Cek branch:

```bash
git branch
```

---

## 4️⃣ Edit / Tambah File Project

Silakan kerjakan perubahan kode sesuai tugas.

Contoh:

* Edit file
* Tambah file
* Hapus file

---

## 5️⃣ Cek Status Perubahan

```bash
git status
```

---

## 6️⃣ Tambahkan File ke Git

### Tambah semua file:

```bash
git add .
```

### Atau file tertentu:

```bash
git add index.php
```

---

## 7️⃣ Commit Perubahan

```bash
git commit -m "Menambahkan fitur login"
```

Gunakan pesan commit yang **jelas dan singkat**.

---

## 8️⃣ Push ke GitHub (Branch Baru)

```bash
git push origin fitur-login
```

Jika berhasil, akan muncul notifikasi di GitHub.

---

## 9️⃣ Membuat Pull Request (PR)

1. Buka repository di GitHub
2. Akan muncul tombol **Compare & Pull Request**
3. Klik tombol tersebut
4. Isi:

   * **Title**: Judul perubahan
   * **Description**: Penjelasan singkat
5. Klik **Create Pull Request**

✅ Perubahan sekarang menunggu review

---

## 🔁 10️⃣ Update Branch dari Main (Jika Ada Perubahan Baru)

Jika `main` sudah berubah dan branch kamu tertinggal:

```bash
git checkout fitur-login
git pull origin main
```

Jika ada konflik, selesaikan lalu commit ulang.

---

## ❌ Error Umum & Solusi

### ❗ Error: GH006 Protected Branch

```text
remote: error: GH006: Protected branch update failed
```

**Artinya:**

* Tidak boleh push langsung ke `main`

**Solusi:**

* Gunakan branch baru
* Lakukan Pull Request

---

## 📌 Workflow Singkat (Ringkasan)

```text
Clone Repo
   ↓
Buat Branch Baru
   ↓
Edit Code
   ↓
Add & Commit
   ↓
Push Branch
   ↓
Pull Request
```

---

## ✅ Best Practice

* Jangan kerja di `main`
* Satu fitur = satu branch
* Commit kecil & jelas
* Selalu Pull Request

---

✍️ **Dibuat untuk pembelajaran Git & GitHub**
