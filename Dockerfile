FROM ubuntu:22.04

# Đặt kiến trúc ARM64
# Nếu bạn đang dùng Docker Desktop với WSL2 thì có thể build được ARM64 qua emulation

# Cài các dependencies cần thiết
RUN apt-get update && apt-get install -y \
    git cmake gperf zlib1g-dev libssl-dev \
    libcurl4-openssl-dev libexpat1-dev \
    build-essential clang pkg-config \
    && rm -rf /var/lib/apt/lists/*

# Clone TDLib
WORKDIR /tdlib
RUN git clone https://github.com/tdlib/td.git .

# Build TDLib
RUN mkdir build && cd build && \
    cmake -DCMAKE_BUILD_TYPE=Release .. && \
    cmake --build . --target tdjson

# Tạo entrypoint tạm thời
CMD ["bash"]
