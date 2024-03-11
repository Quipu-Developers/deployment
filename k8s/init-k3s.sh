# config before k3s
sudo echo ' cgroup_enable=cpuset cgroup_memory=1 cgroup_enable=memory' > /boot/cmdline.txt

# install k3s
sudo curl -sfL https://get.k3s.io | sudo sh -

# run k3s
sudo k3s server