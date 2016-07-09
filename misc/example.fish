# small fish example.

function dpms --description "turn on or off dpms mode"
  switch "$argv[1]"
    case "on"
      command xset -dmps; and xset s off
    case "off"
      command xset +dpms; and xset s on
    case "*"
      echo "usage: dpms [on|off]"
  end
end
