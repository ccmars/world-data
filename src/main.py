import os
import subprocess

# Get a list of all Python scripts in the scripts directory
scripts_dir = 'src/scripts'
scripts = [os.path.join(scripts_dir, f) for f in os.listdir(scripts_dir) if f.endswith('.py')]

processes = []
version_string = "v3.0.0 (2024)"

# Run each script in a separate process, asynchronously
for script in scripts:
    processes.append(subprocess.Popen(["python", script, version_string]))

for process in processes:
    process.wait()