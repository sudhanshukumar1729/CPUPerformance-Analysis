   M S B A M L   `   `   `  ����  ResourcesWidget    ResourcesWidget.MyWidget   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      -   5          � WindowStyle$
  None=�5       � SizeToContent$ WidthAndHeight=�6    � 
ResizeMode$ NoResize=�65    � AllowsTransparency . $��20(�5   :   $	��120��5       � Title 5   H   �� *TaskBarTitle+ � DataContext 5      ��  �� RelativeSource �� *Self+ � ShowInTaskbar 6@   �� *TaskbarIcon+ � Topmost 5      �� *AlwaysOnTop+	 �� Mode$	 OneWay=���5	      �� 5
   
   
 �� Opacity
 6   �� *WindowOpacity+$	 OneWay=� �� Color 6H   �� *WindowColor+$	 OneWay=� � 	Resources 5         
PinnedIcon  UnPinnedIcon  ToggleButtonStyle �� 
TargetType �� Property �� Value �� Triggers P� Property P� Value  ToggleButtonControlTemplate �� 
TargetType ��Name J� SnapsToDevicePixels ��Name �� ContentStringFormat �� ContentStringFormat �� Triggers �� 
TargetName��%b  &	        &	 >     &	 ~     7  7   &	 +    �� 5   
   $��/Images/PinnedIcon.png��6#   $��25��6C   �� 5   
   $��/Images/UnPinnedIcon.png��6%   $��25��6G   �� 5   
   " d�6+   .�5      ��  � ��8   6(    5      P� 5       �@d�	IsChecked$
 TrueY�6/   . �5      ��  � ��8  60   5      5      �� 5   
   " d�6>   .R�5      �� $ border��6   #��z��6%   $��0q�6Q    . ��5      �� *WindowColor+$	 OneWay=�._�5      �� $ contentPresenter��6#   #��z��6=   #��z��5   #   # z 6G   |�.  #��z��5   5   #��z��5   #   ��. # z 6a   #��z��5   #   5       5       P� 5!       �@��IsDefaulted . . �5"      �� $ border��64   # � ��6H    � ��5#      P� 5$       �@J�IsMouseOver . . �5%      �� $ border��64    � �� �	#80DADADA6H   �� 5&      $ border��63    � �� �	#210080FF6G   5'      P� 5(       � �� . . �5)      �� $ border��64    � �� �	#90006CD96H   �� 5*      $ border��63    � �� �	#400080FF6G   5+      5-      5.      .��50      ]� .+�51   
   ��  �� Orientation$ Vertical=�6   $	��Top=�6,   $	��0,3q�6A   $��64��6N   .+�52      �� 
���   �6   �� 53      
���   �6   �� 54      
���   �6   55      � 56   
   $��Stretch=�6   $��Center=�6-   $	��Top=�6H   ��57      �� 58      
 6"   �� *WindowOpacity+$	 OneWay=� 6P   �� *WindowColor+$	 OneWay=� � ColumnDefinitions 5:      �� 5;      �� 5<      �� 5=      �� 5>      .+�5@      d�  � ToolTip$ Always On Top��6   $��0��63   $��38��6e   $��30��6q   $	��5,2q�6   #��[ 5A      #��[ 6F    d� 	IsChecked 5@   C   �� *AlwaysOnTop+5A   F   �� 5C      -   5        $ Settings��5C      $��1��6?   #��[" �6O   $��38��5D      $��30��6!   $��Stretch=�6/   $	��5,2q�6M   .��5E      �� $��/Images/SettingsIcon.png��6   5F      �� 5G      -   5        $  Refresh Network Interfaces��5G      $��2��6P   #��[" �6`   $��38��5H      $��30��6!   $��Stretch=�6/   $	��5,2q�6M   .��5I      �� $��/Images/RefreshIcon.png��6   5J      �� 5K      -   5        $ Close��5K      $��3��69   #��[" �6I   $��38��5L      $��30��6!   $��Stretch=�6/   $	��5,2q�6M   .��5M      �� $��/Images/CloseIcon.png��6   $��25��67   5N      5O      �� 5P   
   $��Stretch=�6   $	��Top=�62   � 5Q   
   $��Center=�6   $��Bottom=�6,   $	��3,0q�6D    5R      �� 5S      $
��Auto �6#   �� 5T      $
��Auto �6#    � RowDefinitions 5V      �� 5W      �� 5X      �� 5Y      �� 5Z      �� 5[      �� 5\      �� 5]      �� 5^      �� 5_      �� 5`      .+�5d      �� $��Center=�6     �� DisplayMemberPath$
  Name��6d   $��5q�5e   4   $��1��6?   $��2��6L   ��5d   4   �� *
Interfaces+$	 OneWay=�! �� SelectedValue! 6}   �� *SelectedInterface+y�5e      �� *InterfaceVisibility+6L   �� 5g      $��Right=�6   $��Center=�64   $��10q�6O   $��0��6[   $��2��6k   $��IP Address :��6x   y�6�   �� *IpLableVisiblity+��5h   	   �� *
LableColor+�� 5i      $
��Left=�6   $��Center=�63   $��10q�6N   $��1��6Z   $��2��6j   ��6w   �� *Ip+$	 OneWay=���5j      �� *	IpColor+$	 OneWay=�y�63   �� *IpVisibility+�� 5l      $��Right=�6   $��Center=�64   $��10q�6O   $��0��6[   $��3��6k   $��Status :��6x   y�6�   �� *StatusLableVisiblity+��5m   
   �� *
LableColor+�� 5n      $
��Left=�6   $��Center=�63   $��10q�6N   $��1��6Z   $��3��6k   ��6x   �� *Status+$	 OneWay=���5o      �� *StatusColor+$	 OneWay=�y�67   �� *StatusVisibility+�� 5q      $��Right=�6   $��Center=�64   $��10q�6O   $��0��6[   $��4��6k   $��
Received :��6x   y�6�   �� *ReceivedLableVisiblity+��5r      �� *
LableColor+�� 5s      $ 
Horizontal=�6   $
��Left=�62   $��Center=�6M   $��10q�6h   $��1��6t   $��4��6�   y�5t      �� *ReceivedVisibility+.+�5u      �� $��0,0,5,0q�6z   ��6   �� *ReceivedBytes+$	 OneWay=���6I   �� *ReceivedColor+$	 OneWay=�6z   �� 5v      ��6   �� *ReceivedUnit+$	 OneWay=���6I   �� *ReceivedColor+$	 OneWay=�5w      �� 5y      $��Right=�6   $��Center=�64   $��10q�6O   $��0��6[   $��5��6k   $��Down Speed :��6x   y�6�   �� *DSpeedLableVisiblity+��5z   
   �� *
LableColor+�� 5{      $ 
Horizontal=�6   $
��Left=�62   $��Center=�6M   $��10q�6h   $��1��6t   $��5��6�   y�5|      �� *DSpeedVisibility+.+�5}      �� $��0,0,5,0q�6l   ��6   �� *DSpeed+$	 OneWay=���6B   �� *DColor+$	 OneWay=�6l   �� 5~      ��6   �� *
DSpeedUnit+$	 OneWay=���6G   �� *DColor+$	 OneWay=�5      �� 5�      $��Right=�6   $��Center=�64   $��10q�6O   $��0��6[   $��6��6k   $��Sent :��6x   y�6�   �� *SentLableVisiblity+��5�   
   �� *
LableColor+�� 5�      $ 
Horizontal=�6   $
��Left=�62   $��Center=�6M   $��10q�6h   $��1��6t   $��6��6�   y�5�      �� *SentVisibility+.+�5�      �� $��0,0,5,0q�6r   ��6   �� *	SentBytes+$	 OneWay=���6E   �� *	SentColor+$	 OneWay=�6r   �� 5�      ��6   �� *
SentUnit+$	 OneWay=���6E   �� *	SentColor+$	 OneWay=�5�      �� 5�      $��Right=�6   $��Center=�64   $��10q�6O   $��0��6[   $��7��6k   $��
Up Speed :��6x   y�6�   �� *USpeedLableVisiblity+��5�   
   �� *
LableColor+�� 5�      $ 
Horizontal=�6   $
��Left=�62   $��Center=�6M   $��10q�6h   $��1��6t   $��7��6�   y�5�      �� *USpeedVisibility+.+�5�      �� $��0,0,5,0q�6l   ��6   �� *USpeed+$	 OneWay=���6B   �� *UColor+$	 OneWay=�6l   �� 5�      ��6   �� *
USpeedUnit+$	 OneWay=���6G   �� *UColor+$	 OneWay=�5�      �� 5�      $��Right=�6   $��Center=�64   $��10q�6O   $��0��6[   $��8��6k   $��CPU :��6x   y�6�   �� *CPULabelVisibility+��5�   
   �� *
LableColor+�� 5�      $ 
Horizontal=�6   $
��Left=�62   $��Center=�6M   $��10q�6h   $��1��6t   $��8��6�   y�5�      �� *CpuVisibility+.+�5�      �� $��0,0,5,0q�6p   ��6   �� *
CpuUsage+$	 OneWay=���6D   �� *
CpuColor+$	 OneWay=�6p   �� 5�      ��6   �� *	CpuUnit+$	 OneWay=���6D   �� *
CpuColor+$	 OneWay=�5�      �� 5�      $��Right=�6   $��Center=�64   $��10q�6O   $��0��6[   $��9��6k   $��Ram :��6x   y�6�   �� *RamLableVisiblity+��5�   
   �� *
LableColor+�� 5�      $ 
Horizontal=�6   $
��Left=�62   $��Center=�6M   $��10q�6h   $��1��6t   $��9��6�   y�5�      �� *RamVisibility+.+�5�      �� $��0,0,5,0q�6p   ��6   �� *
RamUsage+$	 OneWay=���6D   �� *
RamColor+$	 OneWay=�6p   �� 5�      ��6   �� *	RamUnit+$	 OneWay=���6D   �� *
RamColor+$	 OneWay=�5�      5�      5�      5�      