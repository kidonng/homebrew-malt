require 'uri'
require 'net/http'
require 'digest'
require 'open-uri'
require 'base64'

def cask(name)
  puts "Cask: #{name}"

  def version(version = nil)
    if version == nil
      return @version
    else
      puts "Current version: #{version}"
      @version = version
    end
  end

  def sha256(sha256)
    @sha256 = sha256
  end

  def language(language)
  end

  def url(url)
    @url = url
  end

  def appcast(appcast)
    url, pattern = appcast.split('#')
    pattern = Base64.decode64(pattern)
    puts "Pattern: #{pattern}"

    res = Net::HTTP.get_response(URI(url))

    if res.code == "200"
      match = res.body.match pattern
      latest = match[1]

      if Gem::Version.new(@version) < Gem::Version.new(latest)
        puts "Latest version: #{latest}"
        @new_version = latest
      else
        puts "Current version is the latest"
        @new_version = "latest"
      end
    else
      puts "Check update failed"
    end
  end

  def name(name)
  end

  def desc(desc)
  end

  def homepage(homepage)
  end

  def auto_updates(auto_updates)
  end

  def conflicts_with(conflicts_with)
  end

  def depends_on(depends_on)
  end

  def container(container)
  end

  def suite(suite)
  end

  def app(app)
  end

  def pkg(pkg)
  end

  def installer(installer)
  end

  def binary(binary)
  end

  def manpage(manpage)
  end

  def colorpicker(colorpicker)
  end

  def dictionary(dictionary)
  end

  def font(font)
  end

  def input_method(input_method)
  end

  def internet_plugin(internet_plugin)
  end

  def prefpane(prefpane)
  end

  def qlplugin(qlplugin)
  end

  def mdimporter(mdimporter)
  end

  def screen_saver(screen_saver)
  end

  def service(service)
  end

  def audio_unit_plugin(audio_unit_plugin)
  end

  def vst_plugin(vst_plugin)
  end

  def vst3_plugin(vst3_plugin)
  end

  def artifact(artifact)
  end

  def stage_only(stage_only)
  end

  def preflight(preflight)
  end

  def postflight(postflight)
  end

  def uninstall_preflight(uninstall_preflight)
  end

  def uninstall_postflight(uninstall_postflight)
  end

  def uninstall(uninstall)
  end

  def zap(zap)
  end

  def caveats(caveats)
  end

  yield

  if @new_version != "latest"
    @new_url = @url.gsub(@version, @new_version)

    begin
      @new_sha256 = Digest::SHA256.hexdigest URI.open(@new_url).read
      puts "Hash: #{@new_sha256}"
    rescue
      puts "Download failed"
    end
  end

  if @new_sha256 != nil
    filename = "./Casks/#{name}.rb"
    file = File.read(filename).gsub(@version, @new_version).gsub(@sha256, @new_sha256)
    File.write(filename, file)
    system("git add #{filename}")
    system("git commit -m 'Update #{name} from #{@version} to #{@new_version}'")
    puts "Cask updated successfully"
  end
end

Dir['./Casks/*.rb'].map do |file|
  require file
end
