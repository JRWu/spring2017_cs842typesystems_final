Docker Setup:
https://github.com/prakhar1989/docker-curriculum

docker push jwu424/cs842



cd /home/jia/Documents/Code/spring2017_cs842typesystems_final
docker build -t jwu424/cs842 .
docker run -it jwu424/cs842 

docker run -it -v ~/Documents/Code/spring2017_cs842typesystems_final/src:/testsuite -v /:/host jwu424/cs842


# Works with Hack and Cython
docker run --privileged -it -v ~/Documents/Code/spring2017_cs842typesystems_final/src:/testsuite -v /:/host jwu424/cs842


# 
sudo perf stat docker run -v ~/Documents/Code/spring2017_cs842typesystems_final/src:/testsuite jwu424/cs842 python /testsuite/Python/1_primitives.py




#RUN mkdir /testsuite
#COPY /src /testsuite
