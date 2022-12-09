## Datasets & Models
We use the following datasets: CIFAR-10 (with ResNet), MNIST (with LeNet) and GLD23k (with Mobilenet). These can be downloaded from the official sources.
The models used are part of our experiment scripts.

## Experiment scripts
Please populate the following details in the experiment script.
No of PyTorch dataloader workers, prefetch factor,path to the dataset and storage medium being used. A sample is already present in exp_script.sh

## Checklist to start an experiment
---------
1. reboot the device
2. mount the storage medium to appropriate location
3. set power mode - sudo nvpmodel -m <pm>
4. switch off dvfs and set fan speed to max - sudo jetson_clocks --fan
5. Edit sudoers file to include the path of drop_caches.sh 
6. Run exp_script.sh
