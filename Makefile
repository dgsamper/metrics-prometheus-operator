# Variables
NAMESPACE=daniel
SAMPLE_APP=sample-app.yaml
PROM_OPERATOR=prom-operator.yaml

# Install rules
install:
	kubectl apply -f $(SAMPLE_APP) -n $(NAMESPACE)
	kubectl apply -f $(PROM_OPERATOR) -n $(NAMESPACE)

# Uninstall rules
uninstall:
	kubectl delete -f $(SAMPLE_APP) -n $(NAMESPACE)
	kubectl delete -f $(PROM_OPERATOR) -n $(NAMESPACE)
