FROM zephyrprojectrtos/zephyr-build:latest

WORKDIR /workspace

COPY . /workspace

# RUN sudo apt-get update \
  # && sudo rm -rf /var/lib/apt/lists/*

RUN sudo west init -l /workspace
RUN sudo west update

# ENV ZEPHYR_TOOLCHAIN_VARIANT=espressif
# ENV ZEPHYR_SDK_INSTALL_DIR=<path-to-sdk>

RUN sudo west build -b esp32 /workspace


CMD ["/bin/bash"]