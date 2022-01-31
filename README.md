# ButikBuWanlu

### Overview

Bu Wanlu memiliki butik / toko yang menjual pakaian modis. Butik bu Wanlu sendiri
sudah memiliki 2 cabang di Indonesia, yaitu di Medan & Jakarta. Dari ke 2 cabang ini,
bu Wanlu memiliki jutaan pelanggan aktif yang melakukan transaksi setiap bulannya

Untuk mempermudah pekerjaannya, bu Wanlu ingin membuat aplikasi yang
mempermudah dia dalam mengecek laporan transaksi, data pakaian dan juga data
pelanggan.

Jadi Anda diminta untuk membuat API dari aplikasi bu Wanlu di atas.

### What this API Do?

## Task 1
Untuk menampilkan data pakaian dengan harga paling tinggi dan
paling murah.

##### How to achieve:

- https://localhost:44308/api/Items/hiandlow

<details>
  <summary>Result</summary>

  ```
    {
      "allRecords": 2,
      "listData": [
        {
          "id": 12,
          "name": "Item 12",
          "price": 137000
        },
        {
          "id": 38,
          "name": "Item 38",
          "price": 499000
        }
    }
  ```
</details>

## Task 2
Untuk menampilkan data pelanggan yang pertama kali mendaftar (pelanggan terlama) dan pelanggan yang terakhir kali mendaftar (pelanggan terbaru) berdasarkan cabang.

##### How to achieve:

- https://localhost:44308/api/Customers/specialcustomer?city=Jakarta


<details>
  <summary>Result</summary>

  ```
    [
      {
        "id": 15,
        "name": "Customer 15",
        "dateRegister": "2021-02-08T00:00:00",
        "storeId": 2,
        "store": {
          "id": 2,
          "name": "Cabang 2",
          "city": "Jakarta"
        }
      },
      {
        "id": 38,
        "name": "Customer 38",
        "dateRegister": "2022-01-31T00:00:00",
        "storeId": 2,
        "store": {
          "id": 2,
          "name": "Cabang 2",
          "city": "Jakarta"
        }
      }
    ]
  ```
</details>

## Task 3
Untuk menampilkan 10 data pakaian yang paling banyak dibeli dalam 1 bulan di setiap cabang (berdasarkan quantity).

##### How to achieve:

- https://localhost:44308/api/Items/popular?city=Jakarta

<details>
  <summary>Result</summary>

  ```
  [
  {
    "itemId": 16,
    "itemName": "Item 16",
    "city": "Jakarta",
    "countOfTransactions": 33
  },
  {
    "itemId": 3,
    "itemName": "Item 3",
    "city": "Jakarta",
    "countOfTransactions": 30
  },
  {
    "itemId": 33,
    "itemName": "Item 33",
    "city": "Jakarta",
    "countOfTransactions": 30
  },
  {
    "itemId": 19,
    "itemName": "Item 19",
    "city": "Jakarta",
    "countOfTransactions": 29
  },
  {
    "itemId": 20,
    "itemName": "Item 20",
    "city": "Jakarta",
    "countOfTransactions": 29
  },
  {
    "itemId": 22,
    "itemName": "Item 22",
    "city": "Jakarta",
    "countOfTransactions": 28
  },
  {
    "itemId": 29,
    "itemName": "Item 29",
    "city": "Jakarta",
    "countOfTransactions": 28
  },
  {
    "itemId": 34,
    "itemName": "Item 34",
    "city": "Jakarta",
    "countOfTransactions": 27
  },
  {
    "itemId": 39,
    "itemName": "Item 39",
    "city": "Jakarta",
    "countOfTransactions": 27
  },
  {
    "itemId": 4,
    "itemName": "Item 4",
    "city": "Jakarta",
    "countOfTransactions": 25
  }
]
  ```
</details>


## Task 4
Untuk menampilkan 10 data pelanggan yang paling besar belanjanya dalam 1 bulan di setiap cabang (berdasarkan akumulasi total belanja).

##### How to achieve:


#### Result:


## Task 5
Untuk menampilkan data total penjualan setiap cabang dalam 1 tahun.

##### How to achieve:


#### Result:


## Task 6
Untuk menampilkan 5 data pakaian yang mengalami peningkatan tertinggi penjualan dalam bulan ini dibandingkan bulan sebelumnya. Dengan cara membandingkan quantity yg terjual bulan ini dengan quantity yang terjual bulan sebelumnya.

##### How to achieve:

- https://localhost:44308/api/Items/hiandlow

#### Result:


