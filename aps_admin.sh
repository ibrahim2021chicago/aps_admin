#!/bin/bash

clear

. aps_admin.cfg

# ACARS WL Admin
ACARSWLAdmin () {
    clear
    echo "
ACARS WL Admin
--------------

`hostname`
DR Site: $DRSite
"

    local PS3='Choose an option: '
    local options=("Grep Process" "Stop Admin Server" "Start Admin Server" "Tail Admin Server Log" "Tail APS WebService log" "Back to main menu")
    local opt
    COLUMNS=12
    select opt in "${options[@]}"
    do
        case $opt in
            "Grep Process")
                ps_out=`ps -ef | grep "$server-aps-admin" | grep -v grep`;
                test $? -eq 0 && echo "$ps_out" || echo "Service is not running"
                echo""
		        ;;
            "Stop Admin Server")
                ${cmd_stop_admin[@]};
                test $? -eq 0 && echo "Service stopped successfully" || echo "Service couldn't be stopped"
		        echo""
		        ;;
            "Start Admin Server")
                ${cmd_start_admin[@]};
                test $? -eq 0 && echo "Service started successfully" || echo "Service couldn't be started"
		        echo""
		        ;;
            "Tail Admin Server Log")
                ${cmd_tail_admin_log[@]};
                echo""
                ;;
            "Tail APS WebService log")
                ${cmd_tail_aps_webservice_log[@]};
                echo""
                ;;
            "Back to main menu")
                exec "$0"
                ;;
            *) echo "Invalid option $REPLY"
		        echo""
		        ;;
        esac
    done
}

# ACARS WL Managed
ACARSWLManaged () {
    clear
    echo "
ACARS WL Managed
----------------

`hostname`
DR Site: $DRSite
"

    local PS3='Choose an option: '
    local options=("Grep Process" "Stop Managed Server" "Start Managed Server" "Tail Managed Server Log" "Tail APS WebService log" "Back to main menu")
    local opt
    COLUMNS=12
    select opt in "${options[@]}"
    do
        case $opt in
            "Grep Process")
                ps_out=`ps -ef | grep "$server-aps-managed" | grep -v grep`;
                test $? -eq 0 && echo "$ps_out" || echo "Service is not running"
		        echo""
		        ;;
            "Stop Managed Server")
                ${cmd_stop_managed[@]};
                test $? -eq 0 && echo "Service stopped successfully" || echo "Service couldn't be stopped"
		        echo""
		        ;;
            "Start Managed Server")
                ${cmd_start_managed[@]};
                test $? -eq 0 && echo "Service started successfully" || echo "Service couldn't be started"
		        echo""
		        ;;
            "Tail Managed Server Log")
                ${cmd_tail_managed_log[@]};
                echo""
                ;;
            "Tail APS WebService log")
                ${cmd_tail_aps_webservice_log[@]};
                echo""
                ;;
            "Back to main menu")
                exec "$0"
                ;;
            *) echo "Invalid option $REPLY"
		        echo""
		        ;;
        esac
    done
}

# FPS WL Admin
FPSWLAdmin () {
    clear
    echo "
FPS WL Admin
--------------

`hostname`
DR Site: $DRSite
"

    local PS3='Choose an option: '
    local options=("Grep Process" "Stop Admin Server" "Start Admin Server" "Tail Admin Server Log" "Back to main menu")
    local opt
    COLUMNS=12
    select opt in "${options[@]}"
    do
        case $opt in
            "Grep Process")
                ps_out=`ps -ef | grep "$server-aps-admin" | grep -v grep`;
                test $? -eq 0 && echo "$ps_out" || echo "Service is not running"
		        echo""
		        ;;
            "Stop Admin Server")
                ${cmd_stop_admin[@]};
                test $? -eq 0 && echo "Service stopped successfully" || echo "Service couldn't be stopped"
		        echo""
		        ;;
            "Start Admin Server")
                ${cmd_start_admin[@]};
                test $? -eq 0 && echo "Service started successfully" || echo "Service couldn't be started"
		        echo""
		        ;;
            "Tail Admin Server Log")
                ${cmd_tail_admin_log[@]};
                echo""
                ;;
            "Back to main menu")
                exec "$0"
                ;;
            *) echo "Invalid option $REPLY"
		        echo""
		        ;;
        esac
    done
}

# FPS WL Managed
FPSWLManaged () {
    clear
    echo "
FPS WL Managed
---------------

`hostname`
DR Site: $DRSite
"

    local PS3='Choose an option: '
    local options=("Grep Process" "Stop Managed Server" "Start Managed Server" "Tail Managed Server Log" "Tail APS WebService log" "Back to main menu")
    local opt
    COLUMNS=12
    select opt in "${options[@]}"
    do
        case $opt in
            "Grep Process")
                ps_out=`ps -ef | grep "$server-aps-managed" | grep -v grep`;
                test $? -eq 0 && echo "$ps_out" || echo "Service is not running"
		        echo""
		        ;;
            "Stop Managed Server")
                ${cmd_stop_managed[@]};
                test $? -eq 0 && echo "Service stopped successfully" || echo "Service couldn't be stopped"
		        echo""
		        ;;
            "Start Managed Server")
                ${cmd_start_managed[@]};
                test $? -eq 0 && echo "Service started successfully" || echo "Service couldn't be started"
		        echo""
		        ;;
            "Tail Managed Server Log")
                ${cmd_tail_managed_log[@]};
                echo""
                ;;
            "Tail APS WebService log")
                ${cmd_tail_aps_webservice_log[@]};
                echo""
                ;;
            "Back to main menu")
                exec "$0"
                ;;
            *) echo "Invalid option $REPLY"
		        echo""
		        ;;
        esac
    done
}

# FPS WL Managed 2
FPSWLManaged2 () {
    clear
    echo "
FPS WL Managed 2
----------------

`hostname`
DR Site: $DRSite
"

    local PS3='Choose an option: '
    local options=("Grep Process" "Stop Managed Server" "Start Managed Server" "Tail Managed Server Log" "Tail APS WebService log" "Back to main menu")
    local opt
    COLUMNS=12
    select opt in "${options[@]}"
    do
        case $opt in
            "Grep Process")
                ps_out=`ps -ef | grep "$server-aps-managed" | grep -v grep`;
                test $? -eq 0 && echo "$ps_out" || echo "Service is not running"
		        echo""
		        ;;
            "Stop Managed Server")
                ${cmd_stop_managed[@]};
                test $? -eq 0 && echo "Service stopped successfully" || echo "Service couldn't be stopped"
		        echo""
		        ;;
            "Start Managed Server")
                ${cmd_start_managed[@]};
                test $? -eq 0 && echo "Service started successfully" || echo "Service couldn't be started"
		        echo""
		        ;;
            "Tail Managed Server Log")
                ${cmd_tail_managed2_log[@]};
                echo""
                ;;
            "Tail APS WebService log")
                ${cmd_tail_aps_webservice_log[@]};
                echo""
                ;;
            "Back to main menu")
                exec "$0"
                ;;
            *) echo "Invalid option $REPLY"
		        echo""
		        ;;
        esac
    done
}

# ACARS Listener
ACARSListener () {
    clear
    echo "
ACARS Listener
--------------

`hostname`
DR Site: $DRSite
"

    local PS3='Choose an option: '
    local options=("Grep Listener Process" "Stop Listener" "Start Listener" "Tail Listener Log" "Back to main menu")
    local opt
    COLUMNS=12
    select opt in "${options[@]}"
    do
        case $opt in
            "Grep Listener Process")
                ps_out=`ps -ef | grep 'acars.event.listener' | grep -v grep`;
                test $? -eq 0 && echo "$ps_out" || echo "Service is not running"
		        echo""
		        ;;
            "Stop Listener")
                ${cmd_stop_acars_listener[@]};
                test $? -eq 0 && echo "Service stopped successfully" || echo "Service couldn't be stopped"
		        echo""
		        ;;
            "Start Listener")
                ${cmd_start_acars_listener[@]};
                test $? -eq 0 && echo "Service started successfully" || echo "Service couldn't be started"
		        echo""
		        ;;
            "Tail Listener Log")
                ${cmd_tail_acars_listener_log[@]};
                echo""
                ;;
            "Back to main menu")
                exec "$0"
                ;;
            *) echo "Invalid option $REPLY"
		        echo""
		        ;;
        esac
    done
}

# Weather Listener
WeatherListener () {
    clear
    echo "
Weather Listener
----------------

`hostname`
DR Site: $DRSite
"

    local PS3='Choose an option: '
    local options=("Grep Listener Process" "Stop Listener" "Start Listener" "Tail Listener Log" "Back to main menu")
    local opt
    COLUMNS=12
    select opt in "${options[@]}"
    do
        case $opt in
            "Grep Listener Process")
                ps_out=`ps -ef | grep 'weather.event.listener' | grep -v grep`;
                test $? -eq 0 && echo "$ps_out" || echo "Service is not running"
		        echo""
		        ;;
            "Stop Listener")
                ${cmd_stop_weather_listener[@]};
                test $? -eq 0 && echo "Service stopped successfully" || echo "Service couldn't be stopped"
		        echo""
		        ;;
            "Start Listener")
                ${cmd_start_weather_listener[@]};
                test $? -eq 0 && echo "Service started successfully" || echo "Service couldn't be started"
		        echo""
		        ;;
            "Tail Listener Log")
                ${cmd_tail_weather_listener_log[@]};
                echo""
                ;;
            "Back to main menu")
                exec "$0"
                ;;
            *) echo "Invalid option $REPLY"
		        echo""
		        ;;
        esac
    done
}

# WnB Listener
WnBListener () {
    clear
    echo "
WnB Listener
------------

`hostname`
DR Site: $DRSite
"

    local PS3='Choose an option: '
    local options=("Grep Listener Process" "Stop Listener" "Start Listener" "Tail Listener Log" "Back to main menu")
    local opt
    COLUMNS=12
    select opt in "${options[@]}"
    do
        case $opt in
            "Grep Listener Process")
                ps_out=`ps -ef | grep 'wnb.event.listener' | grep -v grep`;
                test $? -eq 0 && echo "$ps_out" || echo "Service is not running"
		        echo""
		        ;;
            "Stop Listener")
                ${cmd_stop_wnb_listener[@]};
                test $? -eq 0 && echo "Service stopped successfully" || echo "Service couldn't be stopped"
		        echo""
		        ;;
            "Start Listener")
                ${cmd_start_wnb_listener[@]};
                test $? -eq 0 && echo "Service started successfully" || echo "Service couldn't be started"
		        echo""
		        ;;
            "Tail Listener Log")
                ${cmd_tail_wnb_listener_log[@]};
                echo""
                ;;
            "Back to main menu")
                exec "$0"
                ;;
            *) echo "Invalid option $REPLY"
		        echo""
		        ;;
        esac
    done
}

# Aerodata Listener
AerodataListener () {
    clear
    echo "
Aerodata Listener
------------

`hostname`
DR Site: $DRSite
"

    local PS3='Choose an option: '
    local options=("Grep Listener Process" "Stop Listener" "Start Listener" "Tail Listener Log" "Back to main menu")
    local opt
    COLUMNS=12
    select opt in "${options[@]}"
    do
        case $opt in
            "Grep Listener Process")
                ps_out=`ps -ef | grep 'aps.scheduler.aerodata' | grep -v grep`;
                test $? -eq 0 && echo "$ps_out" || echo "Service is not running"
		        echo""
		        ;;
            "Stop Listener")
                ${cmd_stop_aerodata_listener[@]};
                test $? -eq 0 && echo "Service stopped successfully" || echo "Service couldn't be stopped"
		        echo""
		        ;;
            "Start Listener")
                ${cmd_start_aerodata_listener[@]};
                test $? -eq 0 && echo "Service started successfully" || echo "Service couldn't be started"
		        echo""
		        ;;
            "Tail Listener Log")
                ${cmd_tail_aerodata_listener_log[@]};
                echo""
                ;;
            "Back to main menu")
                exec "$0"
                ;;
            *) echo "Invalid option $REPLY"
		        echo""
		        ;;
        esac
    done
}

# Show Support Notes
ShowSupportNotes () {
    clear
    echo "
Support Notes
-------------

`hostname`
DR Site: $DRSite
"
    local PS3='Choose an option: '
    local options=("Show Support Notes" "Back to main menu")
    local opt
    select opt in "${options[@]}"
    do
        case $opt in
            "Show Support Notes")
                echo "Not available!"
                echo ""
                ;;
            "Back to main menu")
                exec "$0"
                ;;
            *) echo "invalid option $REPLY"
                echo ""
                ;;
        esac
    done
}

#sysinfo
echo "
$env Administration Menu
------------------------

`hostname`
DR Site: $DRSite
"
#main_menu
PS3='Choose an option: '
options=("ACARS WL Admin" "ACARS WL Managed" "FPS WL Admin" "FPS WL Managed" "ACARS Listener" "Weather Listener" "WnB Listener" "Aerodata Listener" "Show Support Notes" "exit")
COLUMNS=12
select opt in "${options[@]}"
do
    case $opt in
        "ACARS WL Admin")
            if [[ `hostname` == @(pje03521.prod.fedex.com|pje03523.prod.fedex.com|sje02521.ute.fedex.com) ]];then
                ACARSWLAdmin
            else
                echo "The service is not available on this server"
            fi
            echo ""
            ;;
        "ACARS WL Managed")
            if [[ `hostname` == @(pje03521.prod.fedex.com|pje03522.prod.fedex.com|pje03523.prod.fedex.com|pje03524.prod.fedex.com|sje02521.ute.fedex.com) ]];then
                ACARSWLManaged
            else
                echo "The service is not available on this server"
            fi
            echo ""
            ;;
        "FPS WL Admin")
            if [[ `hostname` == @(pje99171.prod.fedex.com|pje99173.prod.fedex.com|sje02521.ute.fedex.com) ]];then
                FPSWLAdmin
            else
                echo "The service is not available on this server"
            fi
            echo ""
            ;;
        "FPS WL Managed")
            if [[ `hostname` == @(pje99171.prod.fedex.com|pje99173.prod.fedex.com|sje02521.ute.fedex.com) ]];then
                FPSWLManaged
            elif [[ `hostname` == @(pje99172.prod.fedex.com|pje99174.prod.fedex.com|sje02522.ute.fedex.com) ]];then
                FPSWLManaged2
            else
                echo "The service is not available on this server"
            fi
            echo ""
            ;;
        "ACARS Listener")
            if [[ `hostname` == @(pje03521.prod.fedex.com|pje03523.prod.fedex.com|sje02521.ute.fedex.com) ]];then
                ACARSListener
            else
                echo "The service is not available on this server"
            fi
            echo ""
            ;;
        "Weather Listener")
            if [[ `hostname` == @(pje03521.prod.fedex.com|pje03523.prod.fedex.com|sje02521.ute.fedex.com) ]];then
                WeatherListener
            else
                echo "The service is not available on this server"
            fi
            echo ""
            ;;
        "WnB Listener")
            if [[ `hostname` == @(pje03521.prod.fedex.com|pje03523.prod.fedex.com|sje02521.ute.fedex.com) ]];then
                WnBListener
            else
                echo "The service is not available on this server"
            fi
            echo ""
            ;;
        "Aerodata Listener")
            if [[ `hostname` == @(pje03522.prod.fedex.com|pje03524.prod.fedex.com|sje02521.ute.fedex.com|sje02522.ute.fedex.com) ]];then
                AerodataListener
            else
                echo "The service is not available on this server"
            fi
            echo ""
            ;;
        "Show Support Notes")
            ShowSupportNotes
            ;;
        "exit")
            exit
            ;;
        *) echo "invalid option $REPLY"
            echo ""
            ;;
    esac
done