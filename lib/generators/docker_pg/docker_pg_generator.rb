class DockerPgGenerator < Rails::Generators::Base
  source_root File.expand_path('templates', __dir__)

  def copy_docker_pg_file
    copy_file "docker_pg.rake", "lib/tasks/docker_pg.rake"
  end
end
