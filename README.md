# Configuration

Repository ini berfungsi sebagai hub docker untuk menjalankan semua service sekaligus.

## Setup
1. Clone semua repository pada satu folder yang sama
2. Jalankan command berikut di terminal.
    ```
    cd binotify-config
    docker compose build
    ```

## Run

1. Jalankan semua service dengan command berikut.
    ```
    docker compose up
    ```

2. Binotify App dapat diakses pada browser melalui `http://localhost:8080`.

3. Binotify Premium App dapat diakses pada browser melalui `http://localhost:5173`.