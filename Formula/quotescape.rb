class Quotescape < Formula
  desc "Generate beautiful quote wallpapers for your desktop"
  homepage "https://github.com/codeabiswas/quotescape"
  url "https://github.com/codeabiswas/quotescape/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "fc1af0e082b24f03ee4c25eb537a35c096cf9972e3c52d82fac97ccd4754c61d"
  license "MIT"
  head "https://github.com/codeabiswas/quotescape.git", branch: "main"

  depends_on "python@3.11"

  resource "Pillow" do
    url "https://files.pythonhosted.org/packages/source/p/pillow/pillow-10.4.0.tar.gz"
    sha256 "166c1cd4d24309b30d61f79f4a9114b7b2313d7450912277855ff5dfd7cd4a06"
  end

  resource "PyYAML" do
    url "https://files.pythonhosted.org/packages/source/P/PyYAML/PyYAML-6.0.1.tar.gz"
    sha256 "bfdf460b1736c775f2ba9f6a92bca30bc2095067b8a9d77876d1fad6cc3b4a43"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/source/r/requests/requests-2.31.0.tar.gz"
    sha256 "942c5a758f98d790eaed1a29cb6eefc7ffb0d1cf7af05c3d2791656dbd6ad1e1"
  end

  resource "selenium" do
    url "https://files.pythonhosted.org/packages/source/s/selenium/selenium-4.17.0.tar.gz"
    sha256 "4c19e6aac202719373108d53a5a112d2bb9b24e6074a7acae06ceab32ca9840e"
  end

  resource "beautifulsoup4" do
    url "https://files.pythonhosted.org/packages/source/b/beautifulsoup4/beautifulsoup4-4.12.3.tar.gz"
    sha256 "74e3d1928edc070d21748185c46e3fb33490f22f52a3addee9aee0f4f7781051"
  end

  resource "soupsieve" do
    url "https://files.pythonhosted.org/packages/source/s/soupsieve/soupsieve-2.5.tar.gz"
    sha256 "5663d5a7b3bfaeee0bc4372e7fc48f9cff4940b3eec54a6451cc5299f1097690"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/source/c/certifi/certifi-2024.2.2.tar.gz"
    sha256 "0569859f95fc761b18b45ef421b1290a0f65f147e92a1e5eb3e635f9a5e4e66f"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/source/c/charset-normalizer/charset-normalizer-3.3.2.tar.gz"
    sha256 "f30c3cb33b24454a82faecaf01b19c18562b1e89558fb6c56de4d9118a032fd5"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/source/i/idna/idna-3.6.tar.gz"
    sha256 "9ecdbbd083b06798ae1e86adcbfe8ab1479cf864e4ee30fe4e46a003d12491ca"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/source/u/urllib3/urllib3-2.2.0.tar.gz"
    sha256 "051d961ad0c62a94e50ecf1af379c3aba230c66c710493493560c0c223c49f20"
  end

  resource "typing_extensions" do
    url "https://files.pythonhosted.org/packages/source/t/typing-extensions/typing_extensions-4.9.0.tar.gz"
    sha256 "23478f88c37f27d76ac8aee6c905017a143b0b1b886c3c9f66bc2fd94f9f5783"
  end

  resource "attrs" do
    url "https://files.pythonhosted.org/packages/source/a/attrs/attrs-23.2.0.tar.gz"
    sha256 "935dc3b529c262f6cf76e50877d35a4bd3c1de194fd41f47a2b7ae8f19971f30"
  end

  resource "outcome" do
    url "https://files.pythonhosted.org/packages/source/o/outcome/outcome-1.3.0.post0.tar.gz"
    sha256 "9dcf02e65f2971b80047b377468e72a268e15c0af3cf1238e6ff14f7f91143b8"
  end

  resource "sniffio" do
    url "https://files.pythonhosted.org/packages/source/s/sniffio/sniffio-1.3.0.tar.gz"
    sha256 "e60305c5e5d314f5389259b7f22aaa33d8f7dee49763119234af3755c55b9101"
  end

  resource "sortedcontainers" do
    url "https://files.pythonhosted.org/packages/source/s/sortedcontainers/sortedcontainers-2.4.0.tar.gz"
    sha256 "25caa5a06cc30b6b83d11423433f65d1f9d76c4c6a0c90e3379eaa43b9bfdb88"
  end

  resource "trio" do
    url "https://files.pythonhosted.org/packages/source/t/trio/trio-0.24.0.tar.gz"
    sha256 "ffa09a74a6bf81b84f8613909fb0beaee84757450183a7a2e0b47b455c0cac5d"
  end

  resource "trio-websocket" do
    url "https://files.pythonhosted.org/packages/source/t/trio-websocket/trio-websocket-0.11.1.tar.gz"
    sha256 "18c11793647703c158b1f6e62de638acada927344d534e3c7628eedcb746839f"
  end

  resource "wsproto" do
    url "https://files.pythonhosted.org/packages/source/w/wsproto/wsproto-1.2.0.tar.gz"
    sha256 "ad565f26ecb92588a3e43bc3d96164de84cd9902482b130d0ddbaa9664a85065"
  end

  resource "h11" do
    url "https://files.pythonhosted.org/packages/source/h/h11/h11-0.14.0.tar.gz"
    sha256 "8f19fbbe99e72420ff35c00b27a34cb9937e902a8b810e2c88300c6f0a3b699d"
  end

  resource "PySocks" do
    url "https://files.pythonhosted.org/packages/source/P/PySocks/PySocks-1.7.1.tar.gz"
    sha256 "3f8804571ebe159c380ac6de37643bb4685970655d3bba243530d6558b799aa0"
  end

  def install
    # Create a virtual environment
    venv = libexec/"venv"
    python = "python3.11"
    system python, "-m", "venv", venv
    venv_python = venv/"bin/python"
    venv_pip = venv/"bin/pip"

    # Upgrade pip in the virtual environment
    system venv_python, "-m", "pip", "install", "--upgrade", "pip"

    # Install Python dependencies
    resources.each do |r|
      r.stage do
        system venv_pip, "install", "--no-deps", "--no-binary", ":all:", "."
      end
    end

    # Copy the source code to libexec
    libexec.install Dir["*"]

    # Create the wrapper script
    (bin/"quotescape").write <<~EOS
      #!/bin/bash
      export PYTHONPATH="#{libexec}/src:$PYTHONPATH"
      exec "#{venv}/bin/python" "#{libexec}/run_quotescape.py" "$@"
    EOS

    # Make the wrapper script executable
    chmod 0755, bin/"quotescape"

    # Create directories for output and cache
    (var/"quotescape").mkpath
    (var/"quotescape/wallpapers").mkpath
    (var/"quotescape/cache").mkpath

    # Create symlinks for output directories
    ln_sf var/"quotescape/wallpapers", libexec/"src/output/wallpapers"
    ln_sf var/"quotescape/cache", libexec/"src/output/cache"

    # Create config directory
    (etc/"quotescape").mkpath

    # Copy default config if it doesn't exist
    unless (etc/"quotescape/quotescape.yaml").exist?
      (etc/"quotescape").install libexec/"config/quotescape.yaml"
    end
  end

  def post_install
    # Ensure output directories exist with correct permissions
    (var/"quotescape").mkpath
    (var/"quotescape/wallpapers").mkpath
    (var/"quotescape/cache").mkpath
  end

  def caveats
    <<~EOS
      Quotescape has been installed! 🎨

      Configuration file location:
        #{etc}/quotescape/quotescape.yaml

      To use custom quotes, create:
        #{etc}/quotescape/custom_quotebook.json

      To use Kindle highlights, create:
        #{etc}/quotescape/kindle_secrets.json

      Generated wallpapers will be saved to:
        #{var}/quotescape/wallpapers/

      Quick start:
        quotescape                    # Generate random quote wallpaper
        quotescape --source custom    # Use custom quotes
        quotescape --source kindle    # Use Kindle highlights
        quotescape --help            # Show all options

      For more information:
        https://github.com/codeabiswas/quotescape
    EOS
  end

  test do
    # Test that the wrapper script exists and is executable
    assert_predicate bin/"quotescape", :exist?
    assert_predicate bin/"quotescape", :executable?

    # Test help command
    assert_match "Quotescape", shell_output("#{bin}/quotescape --help 2>&1")
    assert_match "quote wallpapers", shell_output("#{bin}/quotescape --help 2>&1")

    # Test version command
    assert_match "1.0.0", shell_output("#{bin}/quotescape --version 2>&1")
  end
end