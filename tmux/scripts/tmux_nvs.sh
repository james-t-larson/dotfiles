#!/bin/bash

session_name="$(basename "$PWD")"
nvim --listen "/tmp/nvim-$session_name.pipe"
