---
title: "Cadvisor"
date: 2023-04-29T17:09:07+02:00
tags: ["Monitoring", "Bonus"]
draft: false
---

What is cAdvisor?
cAdvisor stands for container advisor. As it is evident from the name it provides resource usage, performance characteristics & related information about the containers running on the cloud. It is an open-source tool & runs as a daemon process in the background collecting, processing & aggregating useful DevOps information.

The tool has native support for Docker & enables us to track historical resource usage with histograms & stuff. This helps in understanding the resource consumption, memory footprint of the code running on the servers.

The information extracted helps us figure & weed out the performance bottlenecks if any, track the processes too hungry for memory & make better decisions regarding the scalability of our systems.

For this Project we can access the Cadvisor site via:
$CADVISOR