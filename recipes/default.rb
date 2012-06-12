include_recipe "libuuid"

packages = Array.new

case node[:lsb][:codename]
when "lucid", "precise"
  packages |= %w/
    libapr1
  /
end

packages.each do |pkg|
  package pkg do
    action [:install, :upgrade]
  end
end
