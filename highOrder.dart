void eventA() {
  print("Event  A dieksekusi");
}

void eventB() {
  print("Event  B dieksekusi");
}

void eventC() {
  print("Event  C dieksekusi");
}

//list untuk menyimpan event
List<Function> eventList = [];

//fungsi untuk menambahkan event ke dalam list
void tambahEvent(Function event) {
  eventList.add(event);
  print("Event berhasil ditambahkan!");
}

// fungsi untuk menghapus event dari list
void hapusEvent(Function event) {
  eventList.remove(event);
  print("Event berhasil dihapus!");
}

// fungsi untuk mengeksekusi semua event dalam list
void eksekusiSemuaEvent() {
  for (var event in eventList) {
    event();
  }
}

void main() {
  // Menambahkan event ke dalam daftar
  tambahEvent(eventA);
  tambahEvent(eventB);
  tambahEvent(eventC);
  // Eksekusi semua event
  print("Eksekusi semua event:");
  eksekusiSemuaEvent();
  // Menghapus satu event
  hapusEvent(eventB);
  // Eksekusi semua event setelah penghapusan
  print("Eksekusi semua event setelah penghapusan:");
  eksekusiSemuaEvent();
}
