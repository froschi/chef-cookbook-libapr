packages = Array.new

case node[:lsb][:codename]
when "lucid"
  packages |= %w/
    libapr1
  /
when "precise"
  packages |= %w/
    libapr1
  /
end

packages.each do |pkg|
  package pkg do
    action [:install, :upgrade]
  end
end
