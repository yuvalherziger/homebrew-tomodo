class Tomodo < Formula
  desc "A Tool for MongoDB on Docker"
  homepage "https://tomodo.dev"
  license "MIT"

  if Hardware::CPU.intel?
    url "https://github.com/yuvalherziger/tomodo/releases/download/1.3.1/tomodo-amd64-1.3.1.tar.gz"
    sha256 "9a33b11d3ed12cb3c4c2af0105cb00194775e62895909d66b0cd90162d934d68"
  elsif Hardware::CPU.arm?
    url "https://github.com/yuvalherziger/tomodo/releases/download/1.3.1/tomodo-arm64-1.3.1.tar.gz"
    sha256 "0b2b1fb50e96c116c63692ed2ca06a8b55bfed7006bd6d834c0ec19285551598"
  end


  def install
    bin.install "tomodo"
    bin.install Dir["*"]
  end

  def caveats
    red = "\e[32m"
    green = "\e[92m"
    yellow = "\e[32m"
    gray = "\e[37m"
    teal = "\e[36m"
    magenta = "\e[94m"
    blue = "\e[34m"
    reset = "\033[0m"
    white = "\e[97m"

    <<~EOS

      #{green}Thank you for installing tomodo!#{reset}

      #{red}              #{reset}#{green},#{reset}#{gray}__#{reset}
      #{red}              #{reset}#{yellow}╣#{reset}#{yellow}▒▒▒▓▓╗#{reset}#{green}▄#{reset}#{gray}_#{reset}
      #{red}              #{reset}#{green}╘#{reset}#{yellow}▒#{reset}#{yellow}▒▒╩▒▒▒▒▒W#{reset}#{green},#{reset}
      #{red}               #{reset}#{yellow}▒#{reset}#{yellow}▒▒▒▒╙D▒╠╠╠▒#{reset}#{green}╦        #{reset}#{gray}╒#{reset}#{yellow}▓#{reset}#{yellow}╩╩╩╩DD▓▓#{reset}#{green}H  #{reset}#{blue}_#{reset}#{blue}_ #{reset}#{gray}▄#{reset}#{teal}▄▄#{reset}
      #{red}               #{reset}#{yellow}D#{reset}#{yellow}▒▒▒▒#{reset}#{green}╕ ╚╠╠╠╠╠▒#{reset}#{green}_       ╙╙#{reset}#{green}'╙#{reset}#{green}╚#{reset}#{green}D[]⌐ #{reset}#{gray}▄#{reset}#{white}█#{reset}#{white}██████#{reset}#{teal}▌#{reset}
      #{red}               #{reset}#{yellow}║#{reset}#{yellow}▒▒╠╠╠▒ #{reset}#{green}'[╠╠╠╠#{reset}#{green}H,      #{reset}#{gray}_#{reset}#{green}▄#{reset}#{yellow}╗▄#{reset}#{gray}_    #{reset}#{magenta}▄#{reset}#{white}█#{reset}#{white}█▓#{reset}#{teal}█#{reset}#{teal}██▀▀#{reset}#{magenta}" #{reset}#{green}|#{reset}#{green}H_#{reset}
      #{red}               #{reset}#{green}╘#{reset}#{yellow}╠#{reset}#{yellow}╠╠╠╠╠D#{reset}#{green}╕ #{reset}#{green}╙#{reset}#{yellow}╩#{reset}#{yellow}╠╠#{reset}#{green}H#{reset}#{green}░ #{reset}#{gray},#{reset}#{gray}▄,'#{reset}#{gray}▀#{reset}#{yellow}Φ#{reset}#{yellow}╠▒╠R▀ #{reset}#{gray}_#{reset}#{magenta}▄#{reset}#{green}_ #{reset}#{teal}╙#{reset}#{teal}███▀  #{reset}#{green}╔#{reset}#{green}░#{reset}#{yellow}║#{reset}#{yellow}▒#{reset}#{green}░#{reset}#{green}H#{reset}#{green}_#{reset}
      #{red}                #{reset}#{green}╚#{reset}#{yellow}╚#{reset}#{yellow}╠╠╠╠╠╠▒#{reset}#{green}╖  #{reset}#{green}²#{reset}#{green}^  #{reset}#{yellow}╠#{reset}#{yellow}D╠ ▀W#{reset}#{gray}▄#{reset}#{gray}▄▄#{reset}#{teal}n#{reset}#{green}▀ ▒#{reset}#{green}░░   #{reset}#{magenta}`     #{reset}#{green}╙#{reset}#{yellow}╣#{reset}#{yellow}╠D#{reset}#{green}▒#{reset}#{green}░╔#{reset}
      #{red}                 ╚░╙╙╙╚╚╚╙╙░#{reset}#{green}=#{reset}#{green}_  ^#{reset}#{yellow}╙#{reset}#{yellow}╩ ▒╠╠#{reset}#{green}H#{reset}#{green}░░░ M╙#{reset}#{green}'   #{reset}#{gray},#{reset}#{gray}▄#{reset}#{yellow}≡#{reset}#{yellow}▓▓#{reset}#{green}▄#{reset}#{gray}, #{reset}#{yellow}╚#{reset}#{yellow}╠╠▒#{reset}#{green}░#{reset}#{green}╠#{reset}
      #{red}               µ  #{reset}#{green}'#{reset}#{green}|#{reset}#{green}░░░#{reset}#{green}'   #{reset}#{green}`    #{reset}#{yellow}╠#{reset}#{yellow}D╗ #{reset}#{gray};#{reset}#{green}└#{reset}#{yellow}╙Ü#{reset}#{green}²#{reset}#{green}`, #{reset}#{teal}n#{reset}#{teal}l#{reset}#{green}Ü   #{reset}#{yellow}║#{reset}#{yellow}╠╠R#{reset}#{green}╙#{reset}#{green}├░  ╙#{reset}#{yellow}╠#{reset}#{yellow}╠D#{reset}#{green}░#{reset}#{green}╠#{reset}
      #{red}              [#{reset}#{yellow}D#{reset}#{green}▒#{reset}#{green}╔#{reset}#{green}_ `²    #{reset}#{teal}▓#{reset}#{teal}▄#{reset}#{magenta},   #{reset}#{yellow}╩#{reset}#{yellow}╠╠ ╠╠▀#{reset}#{gray}*#{reset}#{green}▀#{reset}#{teal}│» ▒░╚   ╚#{reset}#{yellow}D#{reset}#{yellow}╠H#{reset}#{green}░#{reset}#{green}░#{reset}#{green}=   #{reset}#{green}╘#{reset}#{yellow}╠#{reset}#{yellow}╠▒#{reset}#{green}░#{reset}#{green}U#{reset}
      #{red}              #{reset}#{yellow}╣#{reset}#{yellow}▒#{reset}#{green}░#{reset}#{green}░Ü   #{reset}#{magenta}╓#{reset}#{white}█  #{reset}#{teal}╣#{reset}#{teal}╠║▓╗#{reset}#{magenta},  #{reset}#{gray}' #{reset}#{yellow}╩#{reset}#{yellow}╠╠#{reset}#{green}H#{reset}#{green}░░#{reset}#{green}=    #{reset}#{gray}_#{reset}#{gray},    #{reset}#{green}'     #{reset}#{teal}▌  #{reset}#{yellow}╠#{reset}#{yellow}╠#{reset}#{green}▒#{reset}#{green}░#{reset}
      #{red}              #{reset}#{yellow}▒#{reset}#{yellow}▒#{reset}#{green}░#{reset}#{green}░#{reset}#{green}H   #{reset}#{white}█#{reset}#{white}█#{reset}#{teal}█ #{reset}#{green}╙╣▒╬╠╣▓#{reset}#{green}▄    #{reset}#{gray}''      #{reset}#{magenta}└#{reset}#{green}╙#{reset}#{yellow}╙Γ   #{reset}#{magenta}▄#{reset}#{blue}_#{reset}#{blue}_  #{reset}#{teal}█#{reset}#{teal}╠H #{reset}#{green}║#{reset}#{yellow}╠H░#{reset}#{green}H#{reset}
      #{red}              #{reset}#{yellow}D#{reset}#{yellow}▒#{reset}#{green}░#{reset}#{green}░#{reset}#{green}H  #{reset}#{white}╟#{reset}#{white}███#{reset}#{teal}█#{reset}#{magenta}▄ ╣▒D▒╠║▓▄      #{reset}#{gray}╓#{reset}#{yellow}g#{reset}#{yellow}▓╗#{reset}#{green}▄ #{reset}#{gray}╗#{reset}#{yellow}▓#{reset}#{yellow}K#{reset}#{green}⌐ #{reset}#{green}²#{reset}#{teal}╚#{reset}#{teal}╠╠▒R░  #{reset}#{green}░#{reset}#{yellow}╠#{reset}#{yellow}H#{reset}#{green}░#{reset}#{green}r#{reset}
      #{red}              #{reset}#{yellow}▒#{reset}#{yellow}D#{reset}#{green}░#{reset}#{green}░H  #{reset}#{white}╟#{reset}#{white}██#{reset}#{teal}▌#{reset}#{gray}▐#{reset}#{white}█ #{reset}#{teal}╣#{reset}#{teal}▒#{reset}#{magenta}╓#{reset}#{magenta}▄#{reset}#{teal}╚#{reset}#{teal}▒╠║▓#{reset}#{green}▄    #{reset}#{yellow}╗#{reset}#{gray}▄#{reset}#{green}│#{reset}#{green}▄≈ ╙╚#{reset}#{green}²#{reset}#{green}┐   ²#{reset}#{teal}║#{reset}#{teal}▒#{reset}#{green}^  #{reset}#{green}|#{reset}#{green}░#{reset}#{green}jH░#{reset}#{green}H#{reset}
      #{red}              #{reset}#{yellow}║#{reset}#{yellow}╠#{reset}#{green}░#{reset}#{green}░░  #{reset}#{teal}▐#{reset}#{white}█▓#{reset}#{white}█ █#{reset}#{gray}▄#{reset}#{green}╙#{reset}#{teal}W#{reset}#{teal}╓╓é▒╠╠╠╣▌#{reset}#{blue}_  #{reset}#{yellow}D#{reset}#{yellow}╠#{reset}#{green}H#{reset}#{green}░#{reset}#{green}= #{reset}#{green}╚#{reset}#{green}Ü¡#{reset}#{green}⌐    #{reset}#{teal}█#{reset}#{teal}░   #{reset}#{green}▒#{reset}#{yellow}D#{reset}#{yellow}╠#{reset}#{green}░#{reset}#{green}░#{reset}
      #{red}              #{reset}#{green}'#{reset}#{yellow}D#{reset}#{yellow}D#{reset}#{green}░#{reset}#{green}░╔  #{reset}#{white}█#{reset}#{teal}▓█#{reset}#{teal}█ #{reset}#{white}█#{reset}#{magenta}▄#{reset}#{green}╙#{reset}#{teal}D#{reset}#{teal}▒D▒╠╠╠╠╠╣╗#{reset}#{blue}_     #{reset}#{gray},#{reset}#{gray}_     _#{reset}#{white}█#{reset}#{teal}Ü#{reset}#{blue}⌐  #{reset}#{green}[#{reset}#{yellow}╠#{reset}#{yellow}╠#{reset}#{green}D#{reset}#{green}░╚#{reset}
      #{red}               ╙#{reset}#{yellow}╠#{reset}#{yellow}▒#{reset}#{green}░#{reset}#{green}░#{reset}#{green}╓  #{reset}#{white}█#{reset}#{teal}▓#{reset}#{teal}█#{reset}#{white}█#{reset}#{magenta},#{reset}#{teal}╙#{reset}#{teal}█#{reset}#{blue}`╚▒ [╠╠╠╠╠╠║▓▄#{reset}#{green},      #{reset}#{gray}_#{reset}#{gray}▄#{reset}#{teal}█#{reset}#{teal}▒D#{reset}#{magenta}∩  #{reset}#{green}j#{reset}#{yellow}╠#{reset}#{yellow}╠╠#{reset}#{green}░#{reset}#{green}░#{reset}
      #{red}                ╙#{reset}#{yellow}╠#{reset}#{yellow}▒#{reset}#{green}░#{reset}#{green}░╔  #{reset}#{white}▀#{reset}#{white}█#{reset}#{teal}▓█#{reset}#{gray}█#{reset}#{magenta}└#{reset}#{teal}▀#{reset}#{gray}█#{reset}#{magenta}. #{reset}#{teal}║#{reset}#{teal}╠╠╠╠╠╠╠╠╠╠╠╠R╠▀▀╚ÜR░#{reset}#{blue}╙  #{reset}#{green}j#{reset}#{yellow}╠#{reset}#{yellow}╠#{reset}#{green}╠#{reset}#{green}░░#{reset}#{green}-#{reset}
      #{red}                 '#{reset}#{green}╙#{reset}#{yellow}D▒░░#{reset}#{green}_  #{reset}#{white}▀#{reset}#{white}█#{reset}#{teal}▓#{reset}#{teal}██#{reset}#{magenta}▄▓ #{reset}#{blue}²#{reset}#{teal}╠#{reset}#{teal}╠D╠╠╠╠╠╠╠╠╠╠╠╠╠╩░#{reset}#{green}╙  #{reset}#{gray},#{reset}#{yellow}D#{reset}#{yellow}╠╠#{reset}#{green}H#{reset}#{green}░░#{reset}
      #{red}             #{reset}#{magenta},#{reset}#{magenta}▄#{reset}#{teal}╥#{reset}#{teal}╥#{reset}#{magenta}▄#{reset}#{magenta}▄#{reset}#{blue}_  #{reset}#{green}'#{reset}#{green}╙#{reset}#{green}|.  #{reset}#{gray}^#{reset}#{white}▀#{reset}#{white}█#{reset}#{teal}█#{reset}#{teal}▓█#{reset}#{magenta}▄ ╙DH░░╠╠╠╠╠D╚░░#{reset}#{magenta}=#{reset}#{blue}'  #{reset}#{green},#{reset}#{yellow}1#{reset}#{yellow}╠╠#{reset}#{green}R#{reset}#{green}░░#{reset}#{green}╙#{reset}
      #{red}                '╙#{reset}#{teal}╙#{reset}#{teal}╚╠K╗#{reset}#{magenta}▄#{reset}#{blue}_       #{reset}#{gray}"#{reset}#{teal}╙#{reset}#{teal}▀▀#{reset}#{magenta}w#{reset}#{magenta}╓#{reset}#{blue}_ #{reset}#{blue}'²#{reset}#{magenta}┌#{reset}#{magenta}:#{reset}#{green}=#{reset}#{blue}=#{reset}#{blue}'`   #{reset}#{green},#{reset}#{green}φ#{reset}#{yellow}D#{reset}#{yellow}╠╠#{reset}#{green}╚#{reset}#{green}Ü░#{reset}#{green}╚#{reset}
      #{red}                     #{reset}#{blue}'#{reset}#{teal}╙#{reset}#{teal}╚╠╠K╖#{reset}#{green}╔#{reset}#{green}=#{reset}#{green}░░µ╓#{reset}#{green}╓#{reset}#{gray}__       _#{reset}#{gray}_#{reset}#{green}╓#{reset}#{green}╔#{reset}#{green}@#{reset}#{yellow}D#{reset}#{yellow}╠╠╠#{reset}#{green}R#{reset}#{green}╙░░#{reset}#{green}╙#{reset}
      #{red}                         ^#{reset}#{teal}╙#{reset}#{teal}╚╠░░╚#{reset}#{green}╠#{reset}#{green}╠#{reset}#{yellow}╠#{reset}#{yellow}╠╠╠╠╠╠╠╠╠╠╠╠╠#{reset}#{green}╠#{reset}#{green}╚╙░:░#{reset}#{green}╙#{reset}#{green}`#{reset}
      #{red}                             `²╚#{reset}#{green}░#{reset}#{green}░░░░░╙╙╙╙╙░░░»░░#{reset}#{green}=#{reset}#{green}²'#{reset}
      #{red}                                    ```'''```#{reset}
    
      #{green}Remember to ensure #{teal}Docker Desktop#{green} is installed and running!#{reset}
      #{green}For more information, visit https://github.com/yuviherziger/tomodo#{reset}
    EOS
  end
end
