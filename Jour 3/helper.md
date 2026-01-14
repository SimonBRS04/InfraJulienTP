<h1>Références et sources documentaires — TPs DevOps</h1>

<p>
Ce document liste l’ensemble des sources officielles utilisées pour concevoir,
implémenter et comprendre les TPs DevOps réalisés avec OpenTofu et Docker.
</p>

<hr/>

<h2>Sources — TP1<br/>
Plateforme DevSecOps locale (PostgreSQL, Gitea, Jenkins, SonarQube)</h2>

<h3>OpenTofu / Infrastructure as Code</h3>
<ul>
  <li>Documentation OpenTofu  
    <br/>https://opentofu.org/docs/
  </li>
  <li>Provider Docker (kreuzwerker)  
    <br/>https://registry.terraform.io/providers/kreuzwerker/docker/latest/docs
  </li>
  <li>Ressource docker_container  
    <br/>https://registry.terraform.io/providers/kreuzwerker/docker/latest/docs/resources/container
  </li>
  <li>Ressource docker_volume  
    <br/>https://registry.terraform.io/providers/kreuzwerker/docker/latest/docs/resources/volume
  </li>
  <li>Ressource docker_network  
    <br/>https://registry.terraform.io/providers/kreuzwerker/docker/latest/docs/resources/network
  </li>
</ul>

<h3>Docker — Concepts fondamentaux</h3>
<ul>
  <li>Réseaux Docker  
    <br/>https://docs.docker.com/network/
  </li>
  <li>Volumes Docker  
    <br/>https://docs.docker.com/storage/volumes/
  </li>
  <li>Bind mounts  
    <br/>https://docs.docker.com/storage/bind-mounts/
  </li>
</ul>

<h3>Images Docker et documentations officielles</h3>

<ul>
  <li>PostgreSQL (image officielle)  
    <br/>https://hub.docker.com/_/postgres  
    <br/>https://github.com/docker-library/docs/tree/master/postgres
  </li>

  <li>Gitea  
    <br/>https://hub.docker.com/r/gitea/gitea  
    <br/>https://docs.gitea.com/
  </li>

  <li>Jenkins  
    <br/>https://hub.docker.com/r/jenkins/jenkins  
    <br/>https://www.jenkins.io/doc/
  </li>

  <li>SonarQube Community  
    <br/>https://hub.docker.com/_/sonarqube  
    <br/>https://docs.sonarsource.com/sonarqube/
  </li>
</ul>

<h3>Ports et comportements par défaut</h3>
<ul>
  <li>PostgreSQL — port 5432  
    <br/>https://www.postgresql.org/docs/current/runtime-config-connection.html
  </li>
  <li>Jenkins — port 8080  
    <br/>https://www.jenkins.io/doc/book/installing/docker/
  </li>
  <li>SonarQube — port 9000  
    <br/>https://docs.sonarsource.com/sonarqube/latest/setup-and-upgrade/install-the-server/
  </li>
  <li>Gitea — port 3000  
    <br/>https://docs.gitea.com/installation/install-with-docker
  </li>
</ul>

<hr/>

<h2>Sources — TP2<br/>
Observabilité locale (Prometheus, Grafana, Loki, Podinfo)</h2>

<h3>OpenTofu / Terraform</h3>
<ul>
  <li>Documentation OpenTofu  
    <br/>https://opentofu.org/docs/
  </li>
  <li>Provider Docker (kreuzwerker)  
    <br/>https://registry.terraform.io/providers/kreuzwerker/docker/latest/docs
  </li>
  <li>Ressource docker_container  
    <br/>https://registry.terraform.io/providers/kreuzwerker/docker/latest/docs/resources/container
  </li>
  <li>Fonction abspath (chemins absolus requis pour les bind mounts)  
    <br/>https://developer.hashicorp.com/terraform/language/functions/abspath
  </li>
</ul>

<h3>Docker — Concepts utilisés</h3>
<ul>
  <li>Réseaux Docker  
    <br/>https://docs.docker.com/network/
  </li>
  <li>Volumes Docker  
    <br/>https://docs.docker.com/storage/volumes/
  </li>
  <li>Bind mounts (chemins absolus requis)  
    <br/>https://docs.docker.com/storage/bind-mounts/
  </li>
</ul>

<h3>Prometheus</h3>
<ul>
  <li>Présentation générale  
    <br/>https://prometheus.io/docs/introduction/overview/
  </li>
  <li>Configuration Prometheus  
    <br/>https://prometheus.io/docs/prometheus/latest/configuration/configuration/
  </li>
  <li>Image Docker officielle  
    <br/>https://hub.docker.com/r/prom/prometheus
  </li>
  <li>API de management et endpoint /-/ready  
    <br/>https://prometheus.io/docs/prometheus/latest/management_api/
  </li>
</ul>

<h3>Grafana</h3>
<ul>
  <li>Documentation officielle  
    <br/>https://grafana.com/docs/grafana/latest/
  </li>
  <li>Provisioning des datasources  
    <br/>https://grafana.com/docs/grafana/latest/administration/provisioning/
  </li>
  <li>Image Docker officielle  
    <br/>https://hub.docker.com/r/grafana/grafana
  </li>
  <li>Configuration par défaut (ports, utilisateurs)  
    <br/>https://grafana.com/docs/grafana/latest/setup-grafana/configure-grafana/
  </li>
</ul>

<h3>Loki</h3>
<ul>
  <li>Documentation officielle  
    <br/>https://grafana.com/docs/loki/latest/
  </li>
  <li>Configuration Loki  
    <br/>https://grafana.com/docs/loki/latest/configure/
  </li>
  <li>Image Docker officielle  
    <br/>https://hub.docker.com/r/grafana/loki
  </li>
  <li>API HTTP et endpoint /ready  
    <br/>https://grafana.com/docs/loki/latest/reference/loki-http-api/
  </li>
</ul>

<h3>Podinfo</h3>
<ul>
  <li>Dépôt GitHub  
    <br/>https://github.com/stefanprodan/podinfo
  </li>
  <li>Image Docker  
    <br/>https://hub.docker.com/r/stefanprodan/podinfo
  </li>
  <li>Exposition des métriques Prometheus  
    <br/>https://github.com/stefanprodan/podinfo#metrics
  </li>
</ul>

<hr/>

<h2>Note</h2>
<p>
Toutes les URLs listées correspondent à des documentations officielles ou à des images Docker
maintenues par leurs éditeurs respectifs.  
Elles constituent la base technique utilisée pour concevoir, configurer et justifier les choix
réalisés dans les TPs.
</p>
