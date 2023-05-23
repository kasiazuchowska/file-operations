/*
 Celem zadania jest napisanie kilku klas związanych relacją
 dziedziczenia. Klasy te opisują pliki.
 Klasy te opisuja pliki:
 - File - plik (ogólnie)
 - Symlink - link symboliczny
 - Directory - katalog

 dodatkowo, tylko Directory ma funkcję wyszukiwania: search. 
 Możliwe jest wyszukiwanie plików po nazwach. W tym celu 
 proszę użyć dynamic_cast.
 Jeśli pliki znaleziono, wypisana jest ścieżka do nich.

 Kolejnym dodatkiem jest funkcja rename.
 Dodatkowo, tworzymy nowy rodzaj pliku, czyli Symlink - link symboliczny.
 Symlink ma nazwę oraz wskazuje na określony plik.
 Proszę rozbudować program o mozliwość odpowiedniego kopiowania linku.
 */

#include <iostream>
#include "File.h"
#include "Directory.h"
#include "Symlink.h"

int main() {
  Directory *ppo = new Directory("PPO");
  *ppo += new File("main.cpp");
  
  Directory *src = new Directory("src");
  File* cppFile = new File("Klasa1.cpp");
  *src += cppFile;
  *src += new File("Klasa2.cpp");

  std::cout << "=========== src: ===========" << std::endl;
  src->print(); // src/
                // ..Klasa1.cpp
                // ..Klasa2.cpp

  std::cout << "==== Seaching in src: ====" << std::endl;
  src->search("Klasa1.cpp");  // Klasa1.cpp: 
                              //  -src/Klasa1.cpp
  src->search("brak_pliku");  // brak_pliku:

  std::cout << "=========== ppo: ===========" << std::endl;
  *ppo += src;
  *ppo += new File("Klasa2.cpp");
  ppo->print(); //  PPO/
                //  ..main.cpp 
                //  ..src/
                //  ....Klasa1.cpp
                //  ....Klasa2.cpp
                //  ..Klasa2.cpp

  std::cout << "==== Seaching in ppo: ==== " << std::endl;
  ppo->search("Klasa2.cpp");  // Klasa2.cpp: 
                              //  -PPO/src/Klasa2.cpp
                              //  -PPO/Klasa2.cpp

  std::cout << "======== Copying: ======== " << std::endl;
  Symlink * sl = new Symlink("link", cppFile);
  *ppo += sl;
  
  Directory lab02("Lab02");
// przekopiowanie do lab02 całego katalogu src z podkatalogami
  lab02.copy(ppo);
  src->rename("SOURCE");
  
  std::cout << "========= copied: =========" << std::endl;
  lab02.print(); 
  std::cout << "======== original: ========" << std::endl;
  ppo->print(); 
    
  delete ppo;
}
/* wynik
=========== src: ===========
src
..Klasa1.cpp
..Klasa2.cpp
==== Seaching in src: ====
Klasa1.cpp:
 -src/Klasa1.cpp
brak_pliku:
=========== ppo: ===========
PPO
..main.cpp
..src
....Klasa1.cpp
....Klasa2.cpp
..Klasa2.cpp
==== Seaching in ppo: ==== 
Klasa2.cpp:
 -PPO/src/Klasa2.cpp
 -PPO/Klasa2.cpp
======== Copying: ======== 
========= copied: =========
Lab02
..PPO
....main.cpp
....src
......Klasa1.cpp
......Klasa2.cpp
....Klasa2.cpp
....link -> Klasa1.cpp
======== original: ========
PPO
..main.cpp
..SOURCE
....Klasa1.cpp
....Klasa2.cpp
..Klasa2.cpp
..link -> Klasa1.cpp

 */
