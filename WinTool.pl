#!/usr/bin/perl 
# Coded By : dr-iman
# Site : Guardiran.org


use URI::URL;
use LWP::UserAgent;
use Term::ANSIColor;
use IO::Socket::INET;
use HTTP::Request;
use HTTP::Request::Common qw(POST);
use HTTP::Request::Common qw(GET);

system(($^O eq 'MSWin32') ? 'cls' : 'clear');

$logo = "                             
 _ _ _ _       _                 
| | | |_|___ _| |___ _ _ _ ___   
| | | | |   | . | . | | | |_ -|  
|_____|_|_|_|___|___|_____|___|  
                                                       
       _____         _           
      |_   _|___ ___| |___       
        | | | . | . | |_ -|      
        |_| |___|___|_|___|  V 1.0 Coded By dr-iman ( Guardiran.org )                                                                                                                          
";

print "$logo";
print "\nSelect Tool : \n";
print colored ("\n1-Ping 2-Hidden & Show Files 3-Set Premission FIles 4-Use Batch Files",'Cyan'),"\n";
print colored ("\n5-Show Active Code Page 6-Health Hard Disk 7-Show Format Drive(NTFS or Not) 8-Change Color Text CMD",'green'),"\n";
print colored ("\n9-Copress And Uncompress Files 10-Copy Files 11-Date Tool 12-Delete Files 13-SHow Installed Driver on System",'red'),"\n";
print colored ("\n14-Group Policy Details 15-Change Driver's Name 16-Make Folder 17-Show Text Files Content 18-Delete Folders",'blue'),"\n";
print colored ("\n19-Recover Files From Bad Sectr Hard 20-Rename Files 21-ShutDown & Restart & LogOff 22-System Information",'yellow'),"\n";
print colored ("\n23-Show Process's List 24-Change CMD Title 25-Show Windows Version 26-Create User : ",'magenta'),"";
$tool =<STDIN>;
chomp($tool);


if ($tool eq "1" or $tool eq "Ping")
{
print "\n Enter Address Website : ";
$ping =<STDIN>;
chomp ($ping);
system ("ping $ping");
}



elsif ($tool eq "2" or $tool eq "Hidden Files")
{
print "\n 1-Hidden 2-Show : ";
$hands =<STDIN>;
chomp ($hands);
if ($hands eq "1" or $hands eq "Hidden")
{
print "Enter Directory ( Example : C:/software/ ) : ";
$dir =<STDIN>;
chomp($dir);
system ("cd ../../../");
system (" cd $dir: ");
print "\n Enter File Name : ";
$hidden =<STDIN>;
chomp ($hidden);
print "\n File Name Is : $hidden \n";
my @hidden = (" ATTRIB +S +H $hidden ");
system (@hidden);
}
elsif ($hands eq "2" or $hands eq "Show")
{
print "Enter Directory ( Example : C:/software/ ) : ";
$dir =<STDIN>;
chomp($dir);
system ("cd ../../../");
system (" cd $dir: ");
print "\n Enter File Name : ";
$show =<STDIN>;
chomp($show);
print "\n File Name Is : $show \n";
my @show = (" ATTRIB -S -H $show ");
system (@show);
}
}


elsif ($tool eq "3" or $tool eq "Set Permission FIles")
{
print "\n 1- Show Levels Access 2-Grant Full Access 3-Deny Access 4-Remove Process 5-Reset All : ";
$perm = <STDIN>;
chomp($perm);
if ($perm eq "1" or $perm eq "Show Levels Access")
{
system ("cd ../../../../");
system ("icacls Windows");
}

elsif ($perm eq "2" or $perm eq "Grant Full Access")
{
print "\n Enter Directory ( Example : C:/software/ ) : ";
$dir =<STDIN>;
chomp($dir);
system ("cd ../../../");
system (" cd $dir: ");
print "\n Enter System Username : ";
$user =<STDIN>;
chomp($user);
print "\n User Is : $user \n";
print "\n Enter Folder Name : ";
$dir =<STDIN>;
chomp($dir);
print "\n Folder Name Is : $dir";
my @faccess = (" ICACLS $dir /Grant $user:F /T ");
system (@faccess);
}

elsif ($perm eq "3" or $perm eq "Deny Access")
{
print "\n Enter Directory ( Example : C:/software/ ) : ";
$dir =<STDIN>;
chomp($dir);
system ("cd ../../../");
system (" cd $dir ");
print "\n Enter System Username : ";
$user =<STDIN>;
chomp($user);
print "\n User Is : $user \n";
print "\n Enter Folder Name : ";
$dir =<STDIN>;
chomp($dir);
print "\n Folder Name Is : $dir \n";
my @deny = (" ICACLS $dir /Deny $user:F /T /Q ");
system (@deny);
}

elsif ($perm eq "4" or $perm eq "Remove Process")
{
print "\n Enter Directory ( Example : C:/software/ ) : ";
$dir =<STDIN>;
chomp($dir);
system ("cd ../../../");
system (" cd $dir: ");
print "\n Enter System Username : ";
$user =<STDIN>;
chomp($user);
print "\n User Is : $user \n";
print "\n Enter Folder Name : ";
$dir6 =<STDIN>;
chomp($dir);
print "\n Folder Name Is : $dir";
my @remove = (" ICACLS $dir /Remove:d $user /T /Q ");
system (@remove);
}
elsif ($perm eq "5" or $perm eq "Reset All")
{
print "\n Enter Directory ( Example : C:/software/ ) : ";
$dir =<STDIN>;
chomp($dir);
system ("cd ../../../");
system (" cd $dir: ");
print "\n Enter Folder Name : ";
$dir =<STDIN>;
chomp($dir);
print "\n Folder Name Is : $dir";
my @reset = (" ICACLS $dir /Reset /T /Q ");
system (@reset);
}
}

elsif ($tool eq "4" or $tool eq "Use Batch Files" )
{
print "\n Enter Directory ( Example : C:/software/ ) : ";
$dir =<STDIN>;
chomp($dir);
system ("cd ../../../");
system (" cd $dir: ");
print "\n Enter File Name : ";
$file =<STDIN>;
chomp ($file);
print "\n File Name Is : $file";
my @batch = (" call $file ");
system (@batch);
}



elsif ($tool eq "5" or $tool eq "Show Active Code Page")
{
my @active = ("CHCP");
system (@active);
}



elsif ($tool eq "6" or $tool eq "Health Hard Disk")
{
print "\n Enter Drive Name ( Example : C or D ) : ";
$drive =<STDIN>;
chomp($drive);
print "\n Drive Name Is : $drive ";
my @health = (" CHKDSK $drive: ");
system (@health);
}



elsif ($tool eq "7" or $tool eq "Show Format Drive(NTFS or Not)")
{
print "\n Enter Drive Name ( Example : C or D ) : ";
$drive =<STDIN>;
chomp($drive);
print "\n Drive Name Is : $drive \n";
my @NTFS = (" CHKNTFS $drive: ");
system (@NTFS);
}



elsif ($tool eq "8" or $tool eq "Change Color Text CMD")
{
print "\n Select Color : 0-Black 1-Blue 2-Green 3-Aqua 4-Red 5-Purple 6-Yellow 7-White
\n 8-Grat 9-Light Blue 10-Light Green 11-Light Aqua 12-Light Red 13-Light Purple
\n 14-Light Yellow 15-Bright White : ";
$color =<STDIN>;
chomp ($color);
if ($color eq "0" or $color eq "Black")
{
system ("color 0");
}
elsif ($color eq "1" or $color eq "Blue")
{
system ("color 1");
}
elsif ($color eq "2" or $color eq "Green")
{
system ("color 2");
}
elsif ($color eq "3" or $color eq "Aqua")
{
system ("color 3");
}
elsif ($color eq "4" or $color eq "red")
{
system ("color 4");
}
elsif ($color eq "5" or $color eq "Purple")
{
system ("color 5");
}
elsif ($color eq "6" or $color eq "Yellow")
{
system ("color 6");
}
elsif ($color eq "7" or $color eq "White")
{
system ("color 7");
}
elsif ($color eq "8" or $color eq "Gray")
{
system ("color 8");
}
elsif ($color eq "9" or $color eq "Light Blue")
{
system ("color 9");
}
elsif ($color eq "10" or $color eq "Light Green")
{
system ("color A");
}
elsif ($color eq "11" or $color eq "Light Aqua")
{
system ("color B");
}
elsif ($color eq "12" or $color eq "Light Red")
{
system ("color C");
}
elsif ($color eq "13" or $color eq "Light Purple")
{
system ("color D");
}
elsif ($color eq "14" or $color eq "Light Yellow")
{
system ("color E");
}
elsif ($color eq "15" or $color eq "Bright White")
{
system ("color F");
}
}



elsif ($tool eq "9" or $color eq "Copress And Uncompress Files")
{
print "1-Compress 2-Uncompress : ";
$compact =<STDIN>;
chomp ($compact);
if ($compact eq "1" or $compact eq "Compress")
{
print "\n Enter File Directory ( Example : C:/software/ ) : ";
$dir =<STDIN>;
chomp ($dir);
system ("cd ../../../../");
system ("cd $dir");
print "\n Enter FileName : ";
$file =<STDIN>;
chomp ($file);
print "\n File Name Is : $file";
system (" Compact /c $file ");
}

if ($compact eq "2" or $compact eq "Uncompress")
{
print "\n Enter File Directory ( Example : C:/software/ ) : ";
$dir =<STDIN>;
chomp ($dir);
system ("cd ../../../../");
system ("cd $dir");
print "\n Enter FileName : ";
$file =<STDIN>;
chomp ($file);
print "\n File Name Is : $file";
system (" Compact /u $file ");
}

}



elsif ($tool eq "10" or $tool eq "Copy Files")
{
print "\n Enter File Directory ( Example : C:/software/ ) : ";
$dir =<STDIN>;
chomp ($dir);
system ("cd ../../../../");
system ("cd $dir");
print "\n Enter FileName (Example : ad.txt): ";
$file =<STDIN>;
chomp ($file);
print "\n File Name Is : $file \n ";
print "\n Move FIle To (Enter Directory 'Example : C:/software/ ') :";
$move =<STDIN>;
chomp ($move);
print "\n ِDirectory Is : $move \n";
my @move = ("copy $dir$file $move");
system (@move);
}



elsif ($tool eq "11" or $tool eq "Date Tool")
{
print "\n 1-Show Time 2-Edit Date : ";
$time =<STDIN>;
chomp($time);
if ($time eq "1" or $time eq "Show Time")
{
my @date = ("Date \t");
system (@date);
}

elsif ($time eq "2" or $time eq "Edit Time")
{
print "\n Enter Date (Format dd/mm/yyyy) : ";
$edit =<STDIN>;
chomp ($edit);
my @edit = ("Date $edit");
system (@date);
}
}


elsif ($tool eq "12" or $tool eq "Delete Files")
{
print "1-Delete One File 2-Delete Folder's Files";
$remove =<STDIN>;
chomp ($remove);
if ($remove eq "1" or $remove eq "Delete One File")
{
print "\n Enter File Directory ( Example : C:/software/ ) : ";
$dir =<STDIN>;
chomp ($dir);
system ("cd ../../../../");
system ("cd $dir");
print "\n Enter FileName (Example : ad.txt): ";
$file =<STDIN>;
chomp ($file);
print "\n File Name Is : $file \n ";
my @del = ("Del $file");
}

elsif ($remove eq "2" or $remove eq "Delete Folder's File")
{
print "\n Enter File Directory ( Example : C:/software/ ) : ";
$dir =<STDIN>;
chomp ($dir);
system ("cd ../../../../");
system ("cd $dir");
print "\n Enter FileName (Example : ad.txt): ";
$file =<STDIN>;
chomp ($file);
print "\n File Name Is : $file \n ";
my @alldel = ("Del /s $file");
system (@alldel);
}
}



elsif ($tool eq "13" or $tool eq "Show Installed Driver on System")
{
print "\n All Drivers List : \n";
my @drivers = ("DRIVERQUERY");
system (@drivers);
}




elsif ($tool eq "14" or $tool eq "Group Policy Details")
{
my @groupPolicy  =("GPresult /r");
system (@GroupPolicy);
}




elsif ($tool eq "15" or $tool eq "Change Drive's Name")
{
print "\n Enter Drive Name (Example : C or D) : ";
$drive =<STDIN>;
chomp ($drive);
print "\n Drive Name Is : $$drive \n";
print "\n Enter New Name : ";
$name =<STDIN>;
chomp($name);
print "\n Enter Your New Name : ";
$drivename =<STDIN>;
chomp ($drivename);
print "\n New Name Is : $drivename \n";
my @newname = ("Label $drive: $drivename");
system (@newname);
}




elsif ($tool eq "16" or $tool eq "Make Folder")
{
print "\n 1-Make One Folder 2-Make Several Folders : ";
$folder =<STDIN>;
chomp ($folder);
if ($folder eq "1" or $folder eq "Make One Folder")
{
print "\n Enter Directory ( Example : C:/software/ ) : ";
$dir =<STDIN>;
chomp ($dir);
system ("cd ../../../../");
system ("cd $dir");
print "Enter Folder Name";
$foldername =<STDIN>;
chomp ($foldername);
print "\n Folder Name Is : $foldername \n";
my @foldername = ("md $foldername");
system (@foldername);
}

elsif ($folder eq "2" or $folder eq "Make Several Folders")
{
print "\n  How many folders You Want To Create ? (Min 2 , Max 5 ) : ";
$howmany =<STDIN>;
chomp($howmany);
if ($howmany eq "2")
{
print "\n Enter Directory ( Example : C:/software/ ) : ";
$dir =<STDIN>;
chomp ($dir);
system ("cd ../../../../");
system ("cd $dir");
print "\n Enter Folder Name 1 : ";
$foldername1 =<STDIN>;
chomp ($foldername1);
print "\n Folder Name 1 Is : $foldername1 \n";
print "\n Enter Folder Name 2 : ";
$foldername2 =<STDIN>;
chomp ($foldername2);
print "\n Folder Name 2 Is : $foldername2 \n";
my @foldername = ("md $foldername $foldername2");
system (@foldername);
}

elsif ($howmany eq "3")
{
print "\n Enter Directory ( Example : C:/software/ ) : ";
$dir =<STDIN>;
chomp ($dir);
system ("cd ../../../../");
system ("cd $dir");
print "\n Enter Folder Name 1 : ";
$foldername1 =<STDIN>;
chomp ($foldername1);
print "\n Folder Name 1 Is : $foldername1 \n";
print "\n Enter Folder Name 2 : ";
$foldername2 =<STDIN>;
chomp ($foldername2);
print "\n Folder Name 2 Is : $foldername2 \n";
print "\n Enter Folder Name 3 : ";
$foldername3 =<STDIN>;
chomp ($foldername3);
print "\n Folder Name 3 Is : $foldername3 \n";
my @foldername = ("md $foldername1 $foldername2 $foldername3");
system (@foldername);
}


elsif ($howmany eq "4")
{
print "\n Enter Directory ( Example : C:/software/ ) : ";
$dir =<STDIN>;
chomp ($dir);
system ("cd ../../../../");
system ("cd $dir");
print "\n Enter Folder Name 1 : ";
$foldername1 =<STDIN>;
chomp ($foldername1);
print "\n Folder Name 1 Is : $foldername1 \n";
print "\n Enter Folder Name 2 : ";
$foldername2 =<STDIN>;
chomp ($foldername2);
print "\n Folder Name 2 Is : $foldername2 \n";
print "\n Enter Folder Name 3 : ";
$foldername3 =<STDIN>;
chomp ($foldername3);
print "\n Folder Name 3 Is : $foldername3 \n";
print "\n Enter Folder Name 4 : ";
$foldername4 =<STDIN>;
chomp ($foldername4);
print "\n Folder Name 4 Is : $foldername4 \n";
my @foldername = ("md $foldername1 $foldername2 $foldername3 $foldername4");
system (@foldername);
}


elsif ($howmany eq "5")
{
print "\n Enter Directory ( Example : C:/software/ ) : ";
$dir =<STDIN>;
chomp ($dir);
system ("cd ../../../../");
system ("cd $dir");
print "\n Enter Folder Name 1 : ";
$foldername1 =<STDIN>;
chomp ($foldername1);
print "\n Folder Name 1 Is : $foldername1 \n";
print "\n Enter Folder Name 2 : ";
$foldername2 =<STDIN>;
chomp ($foldername2);
print "\n Folder Name 2 Is : $foldername2 \n";
print "\n Enter Folder Name 3 : ";
$foldername3 =<STDIN>;
chomp ($foldername3);
print "\n Folder Name 3 Is : $foldername3 \n";
print "\n Enter Folder Name 4 : ";
$foldername4 =<STDIN>;
chomp ($foldername4);
print "\n Folder Name 4 Is : $foldername4 \n";
print "\n Enter Folder Name 5 : ";
$foldername5 =<STDIN>;
chomp ($foldername5);
print "\n Folder Name 5 Is : $foldername5 \n";
my @foldername = ("md $foldername1 $foldername2 $foldername3 $foldername4 $foldername5");
system (@foldername);
}



elsif ($howmany eq "6")
{
print "\n Enter Directory ( Example : C:/software/ ) : ";
$dir =<STDIN>;
chomp ($dir);
system ("cd ../../../../");
system ("cd $dir");
print "\n Enter Folder Name 1 : ";
$foldername1 =<STDIN>;
chomp ($foldername1);
print "\n Folder Name 1 Is : $foldername1 \n";
print "\n Enter Folder Name 2 : ";
$foldername2 =<STDIN>;
chomp ($foldername2);
print "\n Folder Name 2 Is : $foldername2 \n";
print "\n Enter Folder Name 3 : ";
$foldername3 =<STDIN>;
chomp ($foldername3);
print "\n Folder Name 3 Is : $foldername3 \n";
print "\n Enter Folder Name 4 : ";
$foldername4 =<STDIN>;
chomp ($foldername4);
print "\n Folder Name 4 Is : $foldername4 \n";
print "\n Enter Folder Name 5 : ";
$foldername5 =<STDIN>;
chomp ($foldername5);
print "\n Folder Name 5 Is : $foldername5 \n";
print "\n Enter Folder Name 6 : ";
$foldername4 =<STDIN>;
chomp ($foldername4);
print "\n Folder Name 6 Is : $foldername6 \n";
my @foldername = ("md $foldername1 $foldername2 $foldername3 $foldername4 $foldername5 $foldername6");
system (@foldername);
}
}
}



elsif ($tool eq "17" or $tool eq "Show Text Files Content")
{
print "\n Enter Directory ( Example : C:/software/ ) : ";
$dir =<STDIN>;
chomp ($dir);
system ("cd ../../../../");
system ("cd $dir");
print "\n Enter File Name (Example : ads.txt): ";
$file =<STDIN>;
chomp ($file);
print "\n File Name Is : $file ";
my @text = ("more $file");
system (@text);
}




elsif ($tool eq "18" or $tool eq "Delete Folders")
{
print "\n Enter Directory ( Example : C:/software/ ) : ";
$dir =<STDIN>;
chomp ($dir);
system ("cd ../../../../");
system ("cd $dir");
print "\n Enter Folder Name: ";
$folder =<STDIN>;
chomp ($folder);
print "\n File Name Is : $folder ";
my @rmdir = (" RD $folder ");
system (@rmdir);
}


elsif ($tool eq "19" or $tool eq "Recover Files From Bad Sectr Hard")
{
print "\n Enter Drive Name ( Example : C or D ) : ";
$drivename =<STDIN>;
chomp ($drivename);
print "\n Drive Name Is : $drivename \n";
print "\n Enter File Name You Want To Recover From Hard : ";
$recover =<STDIN>;
chomp ($recover);
print "\n File Name Is : $recover \n";
my @recover = (" Recover $drivename:$recover ");
system (@recover);
 }
 
 
 
elsif ($tool eq "20" or $tool eq "Rename Files")
{
print "\n Enter Directory ( Example : C:/software/ ) : ";
$dir =<STDIN>;
chomp ($dir);
system ("cd ../../../../");
system ("cd $dir");
print "\n Enter File Name: ";
$file =<STDIN>;
chomp ($file);
print "\n File Name Is : $file \n"; 
print "\n Enter New File Name : ";
$rename =<STDIN>;
chomp ($rename);
my @rename =("ren $file $rename"); 
system (@rename); 
}


elsif ($tool eq "21" or $tool eq "ShutDown & Restart & LogOff")
{
print "\n 1-ShutDown 2-Restart 3-Sleep";
$srs=<STDIN>;
chomp ($srs);
if ($srs eq "1" or $srs eq "ShutDown")
{
print "\n Are You Sure To ShutDown ? (Y or N) : ";
$access=<STDIN>;
chomp ($access);
if ($access eq "Y" or $access eq "y")
{
my @shutdown = (" Shutdown /s ");
system (@shutdown);

if ($access eq "N" or $access eq "n")
{
print " Canceled !!";
}
}
}

if ($srs eq "2" or $srs eq "Restart")
{
print "\n Are You Sure To Restart ? (Y or N) : ";
$access=<STDIN>;
chomp ($access);
if ($access eq "Y" or $access eq "y")
{
my @restart = (" Shutdown /r ");
system (@restart);

if ($access eq "N" or $access eq "n")
{
print " Canceled !!";
}
}
}

if ($srs eq "3" or $srs eq "LogOff")
{
print "\n Are You Sure To LogOff ? (Y or N) : ";
$access=<STDIN>;
chomp ($access);
if ($access eq "Y" or $access eq "y")
{
my @logoff = (" Shutdown /l ");
system (@logoff);

if ($access eq "N" or $access eq "n")
{
print " Canceled !!";
}
}
}
}


elsif ($tool eq "22" or $tool eq "System Information")
{
my @systeminfo = ("systeminfo");
system (@systeminfo);
}



elsif ($tool eq "23" or $tool eq "Show Process's List")
{
my @tasklist = ("Tasklist");
system (@tasklist);
}



elsif ($tool eq "24" or $tool eq "Change CMD Title")
{
print "\n Enter New Title : ";
$title =<STDIN>;
chomp ($title);
my @title = ("title $title");
system (@title);
}


elsif ($tool eq "25" or $tool eq "Show Windows Version")
{
my @version = ("VER");
system (@version);
}




elsif ($tool eq "26" or $tool eq "Create User")
{
print "\n Enter Username : ";
$user =<STDIN>;
chomp ($user);
print "\n Username Is : $user \n";
print "\n Enter Password : ";
$pass =<STDIN>;
chomp ($pass);
print "\n Password Is : $pass \n";
my @username = (" net user $user $password ");
system (@username);
my @administrator = (" net localgroup administrators /add $user ");
system (@administrator);
my @register = (' reg add "hklm\software\microsoft\windows nt\currentversion\winlogon\specialaccounts\userlis t" /v username /t reg_dword /d 0 /f ');
system (@register);
}