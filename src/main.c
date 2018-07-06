#include <stdio.h>
#include <sqlite3.h>

int main(){
  sqlite3 *db;

  if (sqlite3_open("demo.sqlite3", &db) != SQLITE_OK) {
    fprintf(stderr, "Can't open database: %s\n", sqlite3_errmsg(db));
    sqlite3_close(db);
    return 1;
  }

  char* createSql = "CREATE TABLE demo (id integer);";

  if(sqlite3_exec(db, createSql, 0, 0, NULL) != SQLITE_OK) {
    fprintf(stderr, "SQL error: %s\n", sqlite3_errmsg(db));
  }

  sqlite3_close(db);

  return 0;
}
