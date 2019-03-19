control 'check_website' do
  describe command('curl -sL http://localhost') do
    its('stdout') { should match (/Welcome to NGINX */) }
  end

  describe command('curl -sL http://localhost') do
    its('stdout') { should_not match (/Hello/) }
  end

end
