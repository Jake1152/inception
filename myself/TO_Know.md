# TO Know

# docker-compose
- LAMP
    - 실제 실행순서 파악
    - DB - wordpress - web-server순서인가?
- depens_on
    - 순서
- expose
    - expose, ports차이점
    - Dockerfile에서의 expose가 진짜이고 compose에서는 Dockerfile에서 expose한것을 단지 명시해줄 뿐인가?
    그러므로 compose파일에서 expose명령을 넣지않아도 동작하는가?
- driver
    - volumes
    - networks
- driver_opts
    - type
    - device
    - o
- env_file
- services, volumes, networks 순서
    알기로는 networks, volumes, services순서인데 실제로도 그러한가?

# Dockerfile
- expose,
  compose에서의 expose와의 차이점

# .env
- 어떤 항목이 wordpress, DB 실행에 필수적으로 필요한가

# Makefile
- NAME을 쓰고 안쓰고 차이점


# MariaDB
- conf
    - 50-server.cnf
        https://github.com/sismics/docker-mariadb/blob/master/etc/mysql/mariadb.conf.d/50-server.cnf
- setting basic info



# 
