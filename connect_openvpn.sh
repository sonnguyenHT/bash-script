#!/bin/bash

sudo openvpn --config {{ profile_name }} --auth-user-pass {{path/to/username/password/file}}

# 