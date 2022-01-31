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

- https://localhost:44308/api/Customers/biggestspender


<details>
  <summary>Result</summary>

  ```
  [
  {
    "customerId": 16,
    "customerName": "Customer 16",
    "city": "Medan",
    "totalPurchased": 58914000
  },
  {
    "customerId": 30,
    "customerName": "Customer 30",
    "city": "Medan",
    "totalPurchased": 58618000
  },
  {
    "customerId": 10,
    "customerName": "Customer 10",
    "city": "Medan",
    "totalPurchased": 54378000
  },
  {
    "customerId": 46,
    "customerName": "Customer 46",
    "city": "Medan",
    "totalPurchased": 53878000
  },
  {
    "customerId": 12,
    "customerName": "Customer 12",
    "city": "Medan",
    "totalPurchased": 53691000
  },
  {
    "customerId": 19,
    "customerName": "Customer 19",
    "city": "Medan",
    "totalPurchased": 51988000
  },
  {
    "customerId": 13,
    "customerName": "Customer 13",
    "city": "Medan",
    "totalPurchased": 51638000
  },
  {
    "customerId": 41,
    "customerName": "Customer 41",
    "city": "Medan",
    "totalPurchased": 51328000
  },
  {
    "customerId": 20,
    "customerName": "Customer 20",
    "city": "Medan",
    "totalPurchased": 51025000
  },
  {
    "customerId": 6,
    "customerName": "Customer 6",
    "city": "Medan",
    "totalPurchased": 50963000
  },
  {
    "customerId": 21,
    "customerName": "Customer 21",
    "city": "Jakarta",
    "totalPurchased": 70339000
  },
  {
    "customerId": 1,
    "customerName": "Customer 1",
    "city": "Jakarta",
    "totalPurchased": 61627000
  },
  {
    "customerId": 3,
    "customerName": "Customer 3",
    "city": "Jakarta",
    "totalPurchased": 59073000
  },
  {
    "customerId": 15,
    "customerName": "Customer 15",
    "city": "Jakarta",
    "totalPurchased": 59005000
  },
  {
    "customerId": 32,
    "customerName": "Customer 32",
    "city": "Jakarta",
    "totalPurchased": 58378000
  },
  {
    "customerId": 2,
    "customerName": "Customer 2",
    "city": "Jakarta",
    "totalPurchased": 55162000
  },
  {
    "customerId": 8,
    "customerName": "Customer 8",
    "city": "Jakarta",
    "totalPurchased": 49012000
  },
  {
    "customerId": 28,
    "customerName": "Customer 28",
    "city": "Jakarta",
    "totalPurchased": 48287000
  },
  {
    "customerId": 38,
    "customerName": "Customer 38",
    "city": "Jakarta",
    "totalPurchased": 48266000
  },
  {
    "customerId": 43,
    "customerName": "Customer 43",
    "city": "Jakarta",
    "totalPurchased": 45953000
  }
]

  ```
</details>


## Task 5
Untuk menampilkan data total penjualan setiap cabang dalam 1 tahun.

##### How to achieve:


#### Result:


## Task 6
Untuk menampilkan 5 data pakaian yang mengalami peningkatan tertinggi penjualan dalam bulan ini dibandingkan bulan sebelumnya. Dengan cara membandingkan quantity yg terjual bulan ini dengan quantity yang terjual bulan sebelumnya.

##### How to achieve:

- https://localhost:44308/api/Items/hiandlow

#### Result:


