 def remote = [:]
 remote.name = 'annadocker'
 remote.host = '192.168.56.112'
 remote.user = 'annadocker'
 remote.password = 'homenet'
 remote.allowAnyHosts = true
 remote.identityFile = '/home/annadocker/.ssh/id_rsa'
 node {
        stage("SSH Steps Rocks!") {
            writeFile file: 'abc.sh', text: 'ls'
            sshCommand remote: remote, command: 'for i in {1..5}; do echo -n \"Loop \$i \"; date ; sleep 1; done'
            sshPut remote: remote, from: 'abc.sh', into: '.'
            sshGet remote: remote, from: 'abc.sh', into: 'bac.sh', override: true
            sshScript remote: remote, script: 'abc.sh'
        }
    }
}
 
