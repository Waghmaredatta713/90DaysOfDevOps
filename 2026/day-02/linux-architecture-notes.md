**Day 02 – Linux Architecture, Processes, and system**


**Linux Architecture:**

**Users / Applications**  -  These are people or systems interacting with Linux.
                         **(Example - You typing commands)**

        |
        |

**Shell**  -  The shell is the bridge between user and kernel.
           **(Example - bash)**

        |
        |

**Kernel**  -  Heart of Linux **(Brain)**. Only kernel knows how to talk to hardware.

        |
        |

**Hardware**  -  Physical devices.
              **(Example - CPU, RAM, Disk)**






**Flow:**

**User/App → Shell → Kernel → Hardware → Kernel → Shell → Output**



**Core Components of Linux:**

**Kernel (Core of Linux):**

The kernel is the heart of Linux. It talks directly to hardware.
kernel manages- CPU Management, Memory Management, Disk Management, Network Management, Processes Management
Without kernel, system cannot run.


**User Space:**

User Space is the part of Linux where normal programs run. Shell (bash), Libraries, System tools, Applications (nginx, docker).
User space cannot directly access hardware. It communicates with the kernel using system calls.


**init / systemd:**
systemd starts services during boot, stops and restarts them when needed, manages background processes, handles dependencies between services, and collects system logs.


**Example:-**
	systemctl start nginx
	systemctl status nginx



**How a Process is Created:**
In Linux, a process is created using two main system calls:


**fork()** → creates a new child process


**exec()** → loads and runs the actual program inside that process


**Process States:**

A process does not always run continuously. It moves between different states:

**Running (R)** → Using CPU

**Sleeping (S)** → Waiting for input or resource

**Stopped (T)** → Paused manually

**Zombie (Z)** → Finished execution but not cleaned up by parent



**Systemd Does:**

systemd is the manager of your Linux system. When the system starts, systemd is the first process that runs (PID 1). From that moment, it controls all services.

**Starts services at boot**

**Stops and restarts services**

**Manages service dependencies**

**Collects logs**

**Monitors service health**


**Example:**
	systemctl start nginx
	systemctl stop nginx
	systemctl status nginx

	

**5 Commands I Use Daily**

**top**					:	Live view of CPU and memory usage.

**htop**				:	Advanced and easier version of top.

**systemctl status <service>**	:	Checks whether a service is running, failed, or restarting.

**df -h**				:	Checks disk space usage in human-readable format.

**free -m**				:	Shows memory usage in MB.


