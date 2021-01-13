#!/bin/bash

#Kill all node processes

k=$(pgrep node -d' ')
kill $k &