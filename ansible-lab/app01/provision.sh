#/bin/sh
echo "nameserver 8.8.8.8" | sudo tee /etc/resolv.conf > /dev/null
echo "nameserver 8.8.4.4" | sudo tee -a /etc/resolv.conf > /dev/null


cat << EOT >> /home/vagrant/.ssh/authorized_keys
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDXBQocjX5rZPSb8TJiB/rWAVM7/qcefN26OfFyo5phdpRaVnB5vpgI5eurD1lArzbKreJCmTLlhOCz9yBx4Ce7Gj1Fpvm5OJZ+ptegnv9KnPUuK+P4zcmNkJdO5AIELLusIXv7aWlD7knsx6tXl7Pi9z2ot4FZGj4Z3j0YsrFZ1gQpUOUL3/of1nblUxrTUkZ2bhdcQ8FPaY6oEQjIP1RTnS0i1cFusaspNCP9zHcMjEwJgblT+0aa6Fl037amhU19hiclkDoVxo1GfCsnLjXtF9gRUH6SpFuGjmST7M9osBcFBhSBKU0L/UhklYbYduihanlqyKnZ1OcRr18KaUbMzZkIOuZum9x/8IghA7pI0Wq9Wh3052kywkHQCxqRudgWlj3B9qhrp8qzv32888AYRix2b0OULSCcwnSzQJEs/56YamXVHjC+5bYj7VstsEKNfdTRgDTEJGvBAoOFpDgyohd1/Epd3HZ83HQ04nMd+DI1z19cqqJeloGkYJbAy9E= vagrant@control-node
EOT