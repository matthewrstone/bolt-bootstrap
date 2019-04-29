plan vmware::test (TargetSpec $nodes) {
  run_command("uptime", $nodes)
}
