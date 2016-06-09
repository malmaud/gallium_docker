FROM julia
WORKDIR /
RUN git clone https://d45f1ed0aa470b8f69b73b16b1e92d26df0bb59b@github.com/malmaud/vision_language_physics
WORKDIR /vision_language_physics/src
ENV VIDEOID pickup1
CMD ["/julia/julia", "process_scene.jl"]
