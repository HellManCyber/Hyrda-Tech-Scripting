#!/usr/bin/env bash

function HomeScreen(){

	# user display
	echo "********************************************************************************"
	echo "********************************************************************************"
	echo "*                          (#%%%%%%%%%%%%# &                                   *"
	echo "*                         %%%%%%%%%%%%%%%%%#                                   *"
	echo "*                         %%%%%%%%%%%%%%%%%#                                   *"
	echo "*                         %%%%%#&    (#%%%%#                                   *"
	echo "*                         %%%%%#&                                              *"
	echo "*                         %%%%%#&  /###########                                *"
	echo "*                         %%%%%#&  /#%%%%%%%%%%                                *"
	echo "*                         %%%%%#&  /#%%%%%%%%%%                                *"
	echo "*                         %%%%%#&     ((%%%%%(                                 *"
	echo "*                         %%%%%%%%%%%%%#%%%%%(                                 *"
	echo "*                         %%%%%%%%%%%%%%%%%%%(                                 *"
	echo "*                          (#%%%%%%%%%%%%%%%%(                                 *"
	echo "*                                     ((%%%%%(  #((((((                        *"
	echo "*                                     ((%%%%%(  (#%%%%(                        *"
	echo "*                                     %#%%%%%%%%%%%%%%(                        *"
	echo "*                                     %%%%%%%%%%%%%%%%(                        *"
	echo "*//////////////////////WELCOME TO HYDRATECH'S CYBERSCRIPT//////////////////////*"
	echo "*                                                                              *"
	echo "*///////////////////////////////ENTER 1 TO BEGIN///////////////////////////////*"
	echo "********************************************************************************"
	echo "********************************************************************************"
	
	homeAns=" "

	read homeAns

	case $homeAns in

		1 )
			MainScreen
			;;

		* )
			HomeScreen
			;;

	esac
}

function MainScreen(){
	echo "********************************************************************************"
	echo "********************************************************************************"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*//////////////////////////////1. User Management      ////////////////////////*"
	echo "*//////////////////////////////2. Updates              ////////////////////////*"
	echo "*//////////////////////////////3. Unauthorized Media   ////////////////////////*"
	echo "*//////////////////////////////4. Unauthorized software////////////////////////*"
	echo "*//////////////////////////////5. Guest Removal        ////////////////////////*"
	echo "*//////////////////////////////6. Disable Root         ////////////////////////*"
	echo "*//////////////////////////////7. Open SSH             ////////////////////////*"
	echo "*//////////////////////////////8. Firewall             ////////////////////////*"	
	echo "*//////////////////////////////X. Exit Program         ////////////////////////*"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "********************************************************************************"
	echo "********************************************************************************"

	mainAns=" "

	read mainAns

	case $mainAns in

		1 )
			UserManagement
			;;

		2 )
			AutomaticUpdates
			;;

		3 )
			MediaRemoval
			;;

		4 )
			UnauthorizedSoftware
			;;

		5 )
			GuestRemoval
			;;

		6 )
			DisableRoot
			;;		

		7 )
			OpenSSH
			;;

		8 )
			Firewall
			;;


		[xX] )
			AreYouSure
			;;

		* )
			MainScreen
			;;

	esac

}

#read list of authorized users
#delete all users not on it. and change administrator positions
function UserManagement(){
	echo "********************************************************************************"
	echo "********************************************************************************"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*/////////////////////////1. Delete Unauthorized Users////////////////////////*"
	echo "*                                                                              *"
	echo "*/////////////////////////2. Change Weak Passwords    /////////////////////////*"
	echo "*                                                                              *"
	echo "*/////////////////////////3. Change Admin Access      /////////////////////////*"
	echo "*                                                                              *"
	echo "*/////////////////////////4. Main Screen              /////////////////////////*"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "********************************************************************************"
	echo "********************************************************************************"

	userAns=" "

	read userAns

	case $userAns in

		1 )
			echo "Delete Unauthorized Users"
			;;

		2 )
			echo "Change Passwords"
			;;

		3 )
			echo "Change Admin Access"

			MainScreen
			;;

		4 )
			MainScreen
			;;
		* )
			UserManagement
			;;
	esac

}

function AutomaticUpdates(){
	echo "********************************************************************************"
	echo "********************************************************************************"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*/////////////////////////////Enable Auto Updates?/////////////////////////////*"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*////////////////////////////////////Yes/No////////////////////////////////////*"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "********************************************************************************"
	echo "********************************************************************************"

	autoAns=" "

	read autoAns

	case $autoAns in

		"Y" | "Yes" | "yes" | "y" )

			sudo apt-get update
			sudo apt-get upgrade
			sudo apt-get install unattended-upgrades			
			echo "enable auto updates"
			MainScreen
			;;

		"n" | "N" | "No" | "NO" | "no" )

			MainScreen
			;;

		* )

			Automatic Updates
			;;

	esac

}

function MediaRemoval(){
	echo "********************************************************************************"
	echo "********************************************************************************"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*////////////////////////REMOVE ALL UNAUTHORIZED FILES?////////////////////////*"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*////////////////////////////////////Yes/No////////////////////////////////////*"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "********************************************************************************"
	echo "********************************************************************************"

	fileAns=" "

	read fileAns

	case $fileAns in

		"Y" | "Yes" | "yes" | "y" )
			echo "remove the media"

			MainScreen
			;;

		* )
			MainScreen
			;;

	esac

}

function UnauthorizedSoftware(){
	echo "********************************************************************************"
	echo "********************************************************************************"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*////////////////////////REMOVE Unauthorized Software?/////////////////////////*"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*////////////////////////////////////Yes/No////////////////////////////////////*"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "********************************************************************************"
	echo "********************************************************************************"

	softAns=" "

	read softAns

	case $softAns in

		"Y" | "Yes" | "yes" | "y" )
			sudo service pure-ftpd stop
			sudo apt-get autoremove pure-ftpd
			echo "other software"
			MainScreen
			;;

		* )
			MainScreen
			;;

	esac

}

function GuestRemoval(){

	echo "********************************************************************************"
	echo "********************************************************************************"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*///////////////////////////////REMOVE THE GUEST///////////////////////////////*"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*////////////////////////////////////Yes/No////////////////////////////////////*"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "********************************************************************************"
	echo "********************************************************************************"

	guestAns=" "

	read guestAns

	case $guestAns in

		"Y" | "Yes" | "yes" | "y" )
			echo "allow-guest=false" >> /etc/lightdm/lightdm.conf
			MainScreen
			;;

		* )
			MainScreen
			;;

	esac

}

function DisableRoot(){

	echo "********************************************************************************"
	echo "********************************************************************************"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*/////////////////////////////////Disable Root?////////////////////////////////*"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*////////////////////////////////////Yes/no////////////////////////////////////*"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "********************************************************************************"
	echo "********************************************************************************"

	rootAns=" "

	read rootAns

	case $rootAns in

		"Y" | "Yes" | "yes" | "y" )
		
			sed 's/# PermitRootLogin Yes/PermitRootLogin no/' /etc/ssh/sshd_config

			MainScreen
			;;

		* )
			MainScreen
			;;

	esac

}

function OpenSSH(){

	echo "********************************************************************************"
	echo "********************************************************************************"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*///////////////////////////////Install Open SSH?//////////////////////////////*"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*////////////////////////////////////Yes/no////////////////////////////////////*"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "********************************************************************************"
	echo "********************************************************************************"

	exitAns=" "

	read exitAns

	case $exitAns in

		"Y" | "Yes" | "yes" | "y" )
			sudo apt-get update
			sudo apt-get install openssh-server
			sudo systemctl enable ssh
			MainScreen
			;;

		* )
			MainScreen
			;;

	esac

}

function Firewall(){
	sudo ufw enable
	MainScreen
}
	
function AreYouSure(){

	echo "********************************************************************************"
	echo "********************************************************************************"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*////////////////////////Are You Sure You Want to Exit?////////////////////////*"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*////////////////////////////////////Yes/no////////////////////////////////////*"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "********************************************************************************"
	echo "********************************************************************************"

	exitAns=" "

	read exitAns

	case $exitAns in

		"Y" | "Yes" | "yes" | "y" )
			exit
			;;

		* )
			MainScreen
			;;

	esac

}

HomeScreen
