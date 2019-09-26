describe command('terraform state list') do
  its('stdout') { 
    should eq "module.security-group.aws_security_group.tf_security_group\n"
  }
  its('stderr') { should eq '' }
  its('exit_status') { should eq 0 }
end