FROM fedora:34
LABEL org.opencontainers.image.source=https://github.com/ferdnyc/gsconnect-ci

RUN dnf -y install glibc-langpack-en && dnf clean all
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8
ENV LC_ALL en_US.UTF-8

RUN dnf -y install appstream gcc gettext git glib2-devel gnome-shell \
  gnome-desktop-testing lcov meson npm xorg-x11-server-Xvfb \
  zip && dnf clean all

# Install eslint
RUN npm install -g eslint

