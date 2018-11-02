 2:30 service docker start
 2:34 docker 
 2:37 docker pull swarm
 2:56 docker run --rm swarm create
   2018-05-07 16:33:49 docker run -d -p 8888:2375 swarm manage token://894f19d6679e2b9aed2ede426d11606b
 5:05 ocker run --rm swarm list token://6856663cdefdec325839a4b7e1de38e8
 5:08 docker run --rm swarm list token://6856663cdefdec325839a4b7e1de38e8
 6:58  docker run -d swarm join --addr=192.168.20.1:2375  token://894f19d6679e2b9aed2ede426d11606b
 7:04  docker run -d swarm join --addr=192.168.20.1:2375  token://894f19d6679e2b9aed2ede426d11606b
 7:18  docker run -d swarm join --addr=0.0.0.0:2375  token://894f19d6679e2b9aed2ede426d11606b
 7:21 dir
 7:26 hostname -I
 7:34  docker run -d swarm join --addr=0.0.0.0:2375  token://894f19d6679e2b9aed2ede426d11606b
 7:42 docker run --rm swarm list token://6856663cdefdec325839a4b7e1de38e8
   2018-05-07 17:29:57 docker ps
 0:46 docker run --rm swarm list token://894f19d6679e2b9aed2ede426d11606b
 1:04 ps -ef
 1:11 docker ps
 1:23 docker run --rm swarm list token://894f19d6679e2b9aed2ede426d11606b
 2:24 docker run -H 192.168.20.1:8888 info
 2:48 docker  -H 192.168.20.1:8888 run -d  --name hello-world  info
 3:34 docker  -H 0.0.0.0:8888 run -d  --name hello-world  info
 3:49 docker  -H 0.0.0.0:2375 run -d  --name hello-world  info
 4:07 docker kill 7b1e
   2018-05-07 17:34:12 docker kill a9f4
 4:17 docker kill 6c4
 4:21 history
 15:56 docker ps
 16:06 docker kill c27b
 16:11 docker kill c274b
 16:17 docker kill cad97
 16:19 docker ps
 16:40 docker run --rm swarm create
 17:31 docker run -d -p 8888:2375 swarm manage token://9cc133875a06831e4f599065992126ae
 1  2018-05-07 17:37:42 docker ps
 18:57 hostname -I
 1700  2018-05-07 17:46:25 docker ps
 1701  2018-05-07 17:46:27 docker ps
 1702  2018-05-07 17:46:28 docker ps
 1703  2018-05-07 17:46:40 hostname -I
 1704  2018-05-07 17:47:01  docker run -d swarm join --addr=10.144.85.209  token://9cc133875a06831e4f599065992126ae
 1705  2018-05-07 17:47:12 docke ps 
 1706  2018-05-07 17:47:16 docker ps
 1707  2018-05-07 17:47:29 docker run --rm swarm list token://9cc133875a06831e4f599065992126ae
 1708  2018-05-07 17:47:40 history
 1709  2018-05-07 17:48:18 docker ps
 1710  2018-05-07 17:50:02 docker ps
 1711  2018-05-07 17:50:05 docker ps
 1712  2018-05-07 18:03:18 docker ps
 1713  2018-05-07 18:03:22 dir
 1714  2018-05-07 18:03:30 cd swarm
 1715  2018-05-07 18:03:31 dir
 1716  2018-05-07 18:03:40 history  >  install.sh
