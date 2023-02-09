if warp h foo >/dev/null 2>&1; then
    echo "##############################"
    echo ""
    echo "Warp detected, Proceeding in 10 seconds"
    echo ""
    echo "For help contact vincyxirt#1098v or open Ticket"
    echo ""
    echo "##############################"
    sleep 10
    apt update -y && apt install curl -y
    curl -SsL https://playit-cloud.github.io/ppa/key.gpg | sudo apt-key add - && apt-get update -y && apt-get install -y gnupg2 && apt-get install -y gnupg && curl -SsL -o /etc/apt/sources.list.d/playit-cloud.list https://playit-cloud.github.io/ppa/playit-cloud.list && sudo apt update -y && sudo apt install playit -y && apt install screen -y



else
    echo "##############################"
    echo ""
    echo "Install warp first"
    echo ""
    echo "For help contact vincyxirt#1098"
    echo ""
    echo "##############################"
    
    fi
