# Playbook.Template
To create a new Playbook service, perform the following steps
1. Build a service using a Dockerfile. The final Docker result image will be deployed as a service. For a very simple example, see https://github.com/stratsys/Playbook.Sample.Go
2. Copy all files in this repository (except README.md) to the service repository from step 1
3. In `build_config.sh`, modify `CONTAINER_REGISTRY_REPOSITORY`. This name will be used as the repository name when pushing / pulling from the container registry.
4. In playbook/stack, rename the stack file and folders from my-stack to the name of your stack. Also remember to change `MY_SERVICE_IMAGE` 
5. If you don't want to use environment variables, delete the *.env file. If needed, this file can be added later.
6. If you don't want to use special pre- and post-deploy steps, delete the *.sh file. If needed, this file can be added later.
7. If you don't require any additional config files, delete the sub-directory with the config.json file. If needed, files here can be added later.
8. In your stack.yaml file, change the service name (line 4) to the name of your service. Note that stack and service names must be unique within the GIT branch and runtime environment. To see all services deployed, go to https://swarm.svc.XXX
9. In your stack.yaml file, change the port and HostRegexp to expose your service on the given port, using the given host regexp. 
10. In `build_config.sh`, modify `PLAYBOOK_SERVICE` to be stack:service, as set in steps 4 and 8
11. Push all changes to GIT.
12. Create a new Azure DevOps pipeline in your project and import the .yaml-file file. Make sure that the variable group Github-Playbook exists in your Devops library.
13. 
14. Profit!
