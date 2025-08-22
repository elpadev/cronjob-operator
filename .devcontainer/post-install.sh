#!/bin/bash
set -x

echo "Running the post-install.sh script"

# Install latest version of kubebuilder
echo "Installing kubebuilder..."
# download kubebuilder and install locally.
curl -L -o kubebuilder "https://go.kubebuilder.io/dl/latest/$(go env GOOS)/$(go env GOARCH)"
chmod +x kubebuilder && sudo mv kubebuilder /usr/local/bin/
kubebuilder version

go mod tidy # Clean up go.mod and go.sum files

exit 0