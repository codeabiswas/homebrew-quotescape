class Quotescape < Formula
  desc "Generate beautiful quote wallpapers for your desktop"
  homepage "https://github.com/codeabiswas/quotescape"
  url "https://github.com/codeabiswas/quotescape/archive/refs/tags/v1.0.6.tar.gz"
  sha256 "e4e573ab88d5b8ddf4ed2f8a55e675618d3f4940a25572705c5fe6863669eb23"  # Will be replaced with actual SHA256 after release
  license "MIT"
  head "https://github.com/codeabiswas/quotescape.git", branch: "main"

  depends_on "python@3.11"

  def install
    # Create a virtual environment
    venv = libexec/"venv"
    python = Formula["python@3.11"].opt_bin/"python3.11"
    system python, "-m", "venv", venv
    
    # Activate venv and upgrade pip
    venv_python = venv/"bin/python"
    system venv_python, "-m", "pip", "install", "--upgrade", "pip", "setuptools", "wheel"

    # Copy the source code to libexec first
    libexec.install Dir["*"]

    # Install Python dependencies from requirements.txt
    system venv_python, "-m", "pip", "install", "-r", libexec/"requirements.txt"

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

    # Create proper output directory structure in libexec
    (libexec/"src/output").mkpath
    
    # Create symlinks for output directories
    rm_rf libexec/"src/output/wallpapers"
    rm_rf libexec/"src/output/cache"
    ln_sf var/"quotescape/wallpapers", libexec/"src/output/wallpapers"
    ln_sf var/"quotescape/cache", libexec/"src/output/cache"

    # Create config directory
    (etc/"quotescape").mkpath

    # Copy default config if it doesn't exist
    unless (etc/"quotescape/quotescape.yaml").exist?
      if (libexec/"config/quotescape.yaml").exist?
        (etc/"quotescape").install libexec/"config/quotescape.yaml"
      elsif (libexec/"quotescape.yaml").exist?
        (etc/"quotescape").install libexec/"quotescape.yaml"
      end
    end

    # Create symlink for config in libexec if needed
    config_locations = [
      libexec/"config",
      libexec
    ]
    
    config_locations.each do |loc|
      if loc.exist? && !(loc/"quotescape.yaml").exist?
        ln_sf etc/"quotescape/quotescape.yaml", loc/"quotescape.yaml"
      end
    end
  end

  def post_install
    # Ensure output directories exist with correct permissions
    (var/"quotescape").mkpath
    (var/"quotescape/wallpapers").mkpath
    (var/"quotescape/cache").mkpath
    
    # Ensure config directory exists
    (etc/"quotescape").mkpath
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