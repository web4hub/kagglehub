pip install --upgrade poetry

# For inference on NVIDIA GPUs:
poetry install --with cuda

# For CPU inference:
poetry install

# For TPU inference:
poetry install --with tpu

# Use default Python version
./docker-hatch run lint:all

# Use specific Python version (Must be a valid tag from: https://hub.docker.com/_/python)
./docker-hatch -v 3.10 run lint:all

# Run test in docker with specific Python version
./docker-hatch -v 3.10 test

# Run python from specific environment (e.g. one with optional dependencies installed)
./docker-hatch run extra-deps-env:python -c "print('hello world')"

# Run commands with other root-level hatch options (everything after -- gets passed to hatch)
./docker-hatch -v 3.10 -- -v env create debug-env-with-verbose-logging
