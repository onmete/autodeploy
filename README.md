# Autodevops - example
<table>
    <tr>
        <th>
            <img src="https://img.shields.io/circleci/project/github/methlock/autodevops/master.svg">
            <img src="https://img.shields.io/codacy/grade/1506cf52558d4eef8b7819656864ea8d.svg">
            <img src="https://img.shields.io/codacy/coverage/c4c88a847c034d6e81fe89f109296f25.svg">
            <img src="https://img.shields.io/github/repo-size/methlock/autodevops.svg">
            <img src="https://img.shields.io/librariesio/github/methlock/autodevops.svg">
            <img src="https://img.shields.io/github/license/methlock/autodevops.svg">
        </th>
    </tr>
</table>

**work in progress**

*CI/CD principle demo consists of simple Python Flask web app in docker container.
After successful CircleCI tests docker image is pushed to DockerHub and then deployed to
VPS.*

##Requires:
 - CircleCI and DockerHub accounts 
 - Set CircleCI project Environment Variables 
     - CODACY_TOKEN - Codacy project token for coverage badge
     - DOCKERHUB_USER - DockerHub login
     - DOCKERHUB_PW - DockerHub password
 - Set CircleCI SSH Permissions to VPS/server
