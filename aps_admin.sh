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
                ps_out=`ps -ef | grep 'prod-aps-admin' | grep -v grep`;
                if [[ "$ps_out" != "" ]];then
                    echo "$ps_out"
                else
                    echo "Service is not running"
                fi
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
                ps_out=`ps -ef | grep 'prod-aps-managed' | grep -v grep`;
                if [[ "$ps_out" != "" ]];then
                    echo "$ps_out"
                else
                    echo "Service is not running"
                fi
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
                ps_out=`ps -ef | grep 'prod-aps-admin' | grep -v grep`;
                if [[ "$ps_out" != "" ]];then
                    echo "$ps_out"
                else
                    echo "Service is not running"
                fi
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
                ps_out=`ps -ef | grep 'prod-aps-managed' | grep -v grep`;
                if [[ "$ps_out" != "" ]];then
                    echo "$ps_out"
                else
                    echo "Service is not running"
                fi
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
                if [[ "$ps_out" != "" ]];then
                    echo "$ps_out"
                else
                    echo "Service is not running"
                fi
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
            ACARSWLAdmin
            ;;
        "ACARS WL Managed")
            ACARSWLManaged
            ;;
        "FPS WL Admin")
            FPSWLAdmin
            ;;
        "FPS WL Managed")
            FPSWLManaged
            ;;
        "ACARS Listener")
            ACARSListener
            ;;
        "Weather Listener")
            WeatherListener
            ;;
        "WnB Listener")
            WnBListener
            ;;
        "Aerodata Listener")
            AerodataListener
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