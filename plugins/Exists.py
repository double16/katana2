from plugins import Plugin
import os.path
import subprocess
import docker
import katanaerrors


class Exists(Plugin):

    @classmethod
    def get_aliases(cls):
        return ["exists"]

    def path(self, value):
        return os.path.exists(value)

    def service(self, value):
        return_code = subprocess.call(['systemctl', 'status', value, '--no-pager'])
        return return_code != 4

    def docker(self, value):
        if subprocess.call(['systemctl', 'status', 'docker', '--no-pager']) == 0:
            client = docker.DockerClient(base_url='unix://var/run/docker.sock')
            container_list = client.containers.list(filters={'name': value}, all=True)

            return len(container_list) > 0
        else:
            raise katanaerrors.BlockedByDependencyException('docker')
