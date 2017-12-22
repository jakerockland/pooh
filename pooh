#!/usr/local/bin/ruby

# Requirements
require 'optparse'
require 'net/http'
require 'uri'

# This holds lookups for filenames
filenames = Hash[
  "actionscript" => "Actionscript.gitignore",
  "ada" => "Ada.gitignore",
  "agda" => "Agda.gitignore",
  "android" => "Android.gitignore",
  "appengine" => "AppEngine.gitignore",
  "appceleratortitanium" => "AppceleratorTitanium.gitignore",
  "archlinuxpackages" => "ArchLinuxPackages.gitignore",
  "autotools" => "Autotools.gitignore",
  "c++" => "C++.gitignore",
  "c" => "C.gitignore",
  "cfwheels" => "CFWheels.gitignore",
  "cmake" => "CMake.gitignore",
  "cuda" => "CUDA.gitignore",
  "cakephp" => "CakePHP.gitignore",
  "chefcookbook" => "ChefCookbook.gitignore",
  "clojure" => "Clojure.gitignore",
  "codeigniter" => "CodeIgniter.gitignore",
  "commonlisp" => "CommonLisp.gitignore",
  "composer" => "Composer.gitignore",
  "concrete5" => "Concrete5.gitignore",
  "coq" => "Coq.gitignore",
  "craftcms" => "CraftCMS.gitignore",
  "d" => "D.gitignore",
  "dm" => "DM.gitignore",
  "dart" => "Dart.gitignore",
  "delphi" => "Delphi.gitignore",
  "drupal" => "Drupal.gitignore",
  "episerver" => "EPiServer.gitignore",
  "eagle" => "Eagle.gitignore",
  "elisp" => "Elisp.gitignore",
  "elixir" => "Elixir.gitignore",
  "elm" => "Elm.gitignore",
  "erlang" => "Erlang.gitignore",
  "expressionengine" => "ExpressionEngine.gitignore",
  "extjs" => "ExtJs.gitignore",
  "fancy" => "Fancy.gitignore",
  "finale" => "Finale.gitignore",
  "forcedotcom" => "ForceDotCom.gitignore",
  "fortran" => "Fortran.gitignore",
  "fuelphp" => "FuelPHP.gitignore",
  "gwt" => "GWT.gitignore",
  "gcov" => "Gcov.gitignore",
  "gitbook" => "GitBook.gitignore",
  "go" => "Go.gitignore",
  "gradle" => "Gradle.gitignore",
  "grails" => "Grails.gitignore",
  "haskell" => "Haskell.gitignore",
  "igorpro" => "IGORPro.gitignore",
  "idris" => "Idris.gitignore",
  "java" => "Java.gitignore",
  "jboss" => "Jboss.gitignore",
  "jekyll" => "Jekyll.gitignore",
  "joomla" => "Joomla.gitignore",
  "julia" => "Julia.gitignore",
  "kicad" => "KiCad.gitignore",
  "kohana" => "Kohana.gitignore",
  "kotlin" => "Kotlin.gitignore",
  "labview" => "LabVIEW.gitignore",
  "laravel" => "Laravel.gitignore",
  "leiningen" => "Leiningen.gitignore",
  "lemonstand" => "LemonStand.gitignore",
  "lilypond" => "Lilypond.gitignore",
  "lithium" => "Lithium.gitignore",
  "lua" => "Lua.gitignore",
  "magento" => "Magento.gitignore",
  "maven" => "Maven.gitignore",
  "mercury" => "Mercury.gitignore",
  "metaprogrammingsystem" => "MetaProgrammingSystem.gitignore",
  "nanoc" => "Nanoc.gitignore",
  "nim" => "Nim.gitignore",
  "node" => "Node.gitignore",
  "ocaml" => "OCaml.gitignore",
  "objective-c" => "Objective-C.gitignore",
  "opa" => "Opa.gitignore",
  "opencart" => "OpenCart.gitignore",
  "oracleforms" => "OracleForms.gitignore",
  "packer" => "Packer.gitignore",
  "perl" => "Perl.gitignore",
  "phalcon" => "Phalcon.gitignore",
  "playframework" => "PlayFramework.gitignore",
  "plone" => "Plone.gitignore",
  "prestashop" => "Prestashop.gitignore",
  "processing" => "Processing.gitignore",
  "purescript" => "PureScript.gitignore",
  "python" => "Python.gitignore",
  "qooxdoo" => "Qooxdoo.gitignore",
  "qt" => "Qt.gitignore",
  "r" => "R.gitignore",
  "ros" => "ROS.gitignore",
  "rails" => "Rails.gitignore",
  "rhodesrhomobile" => "RhodesRhomobile.gitignore",
  "ruby" => "Ruby.gitignore",
  "rust" => "Rust.gitignore",
  "scons" => "SCons.gitignore",
  "sass" => "Sass.gitignore",
  "scala" => "Scala.gitignore",
  "scheme" => "Scheme.gitignore",
  "scrivener" => "Scrivener.gitignore",
  "sdcc" => "Sdcc.gitignore",
  "seamgen" => "SeamGen.gitignore",
  "sketchup" => "SketchUp.gitignore",
  "smalltalk" => "Smalltalk.gitignore",
  "stella" => "Stella.gitignore",
  "sugarcrm" => "SugarCRM.gitignore",
  "swift" => "Swift.gitignore",
  "symfony" => "Symfony.gitignore",
  "symphonycms" => "SymphonyCMS.gitignore",
  "tex" => "TeX.gitignore",
  "terraform" => "Terraform.gitignore",
  "textpattern" => "Textpattern.gitignore",
  "turbogears2" => "TurboGears2.gitignore",
  "typo3" => "Typo3.gitignore",
  "umbraco" => "Umbraco.gitignore",
  "unity" => "Unity.gitignore",
  "unrealengine" => "UnrealEngine.gitignore",
  "vvvv" => "VVVV.gitignore",
  "visualstudio" => "VisualStudio.gitignore",
  "waf" => "Waf.gitignore",
  "wordpress" => "WordPress.gitignore",
  "xojo" => "Xojo.gitignore",
  "yeoman" => "Yeoman.gitignore",
  "yii" => "Yii.gitignore",
  "zendframework" => "ZendFramework.gitignore",
  "zephir" => "Zephir.gitignore"
]

# This will hold the options we parse
options = {}

# This allows us to parse options for our CLI
OptionParser.new do |parser|
  parser.banner = "Usage: pooh LANG [options]"

  parser.on("-h", "--help", "Show this help message") do ||
    puts parser
  end

  # Whenever we see -q or --force,
  # set the force flag.
  parser.on("-f", "--force", "Overwrite current .gitignore if it exists .") do ||
    options[:force] = true
  end

  # Whenever we see -q or --quiet,
  # set the quiet flag.
  parser.on("-q", "--quiet", "Run command without outputting to console.") do ||
   	options[:quiet] = true
  end
end.parse!

# This allows us to do conditional logging
def log (string, quiet = false)
   if !quiet then
     puts string
   end
end

# Download appropriate Gitignore file
if ARGV.count == 1 then
  if !File.file?(".gitignore") || options[:force] then
    quiet = options[:quiet]

    # Get correct desired Gitignore filename
    filename = filenames[ARGV.first.downcase]

    # If we do not have a filename, we cannot perform request
    if filename then
      # Perform HTTP request
      log "Downloading #{ filename }...", quiet
      uri = URI.parse("https://raw.githubusercontent.com/github/gitignore/master/#{ filename }")
      response = Net::HTTP.get_response(uri)

      # Handle response
      if response.code == '200' then
        File.write('.gitignore', response.body)
        log "Successfully downloaded #{ filename } and saved as .gitignore", quiet
      else
        puts "Could not download #{ filename }.gitignore, error #{ response.code }"

        # Any nonzero argument to `exit` counts as failure.
        exit(1)
      end
    else
      puts "No known Gitignore for #{ ARGV.first }."

      # Any nonzero argument to `exit` counts as failure.
      exit(1)
    end

    # Zero argument to `exit` counts as success.
    exit(0)
  else
    puts "This directory already contains a .gitignore, run with `-f` option to overwrite existing file."

    # Any nonzero argument to `exit` counts as failure.
    exit(1)
  end
else
  puts "Command improperly formatted, run `pooh --help` for more info."

  # Any nonzero argument to `exit` counts as failure.
  exit(1)
end
