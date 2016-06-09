FROM ubuntu
RUN apt-get update -y
RUN apt-get install -y bar time binutils gcc g++ libssl-dev gfortran curl git xz-utils python m4 make cmake bzip2
RUN git clone https://github.com/JuliaLang/julia.git /julia
WORKDIR /julia
RUN git checkout def71fe
ADD Make.user .
RUN make
ADD julia_init.jl /root
RUN apt-get install -y hdf5-tools
RUN /julia/julia /root/julia_init.jl
ENTRYPOINT ["/julia/julia"]
