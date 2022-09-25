server: main.cpp ./threadpool/threadpool.h ./http/http_conn.cpp ./http/http_conn.h ./lock/locker.h ./log/log.cpp ./log/log.h ./log/block_queue.h ./database/sql_connection_pool.cpp ./database/sql_connection_pool.h
	g++ -o server main.cpp ./threadpool/threadpool.h ./http/http_conn.cpp ./http/http_conn.h ./lock/locker.h ./log/log.cpp ./log/log.h ./database/sql_connection_pool.cpp ./database/sql_connection_pool.h -lpthread -lmysqlclient


clean:
	rm  -r server
