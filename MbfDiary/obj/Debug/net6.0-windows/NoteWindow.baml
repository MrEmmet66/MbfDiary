   M S B A M L   `   `   `  ����C  ?MbfDiary, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:MbfDiaryMbfDiary  5   	       MbfDiary.NoteWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   (localclr-namespace:MbfDiary     5   	     � Title$
  Note��5   	   $	��500��6   $	��800��6#   .��5	      �  � RowDefinitions 5
   
   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $��* �6   �� 5      $
��Auto �6   .+�5   
   �� $��Name:��6   $
��Left=�6    $��10q�6;   �� 5   
   -   5         ��Name$ nameTextBox��5      $��0��6>   $��Stretch=�6K   $��100,10,10,0q�6i   ��6'   �� *Title+6i   �� 5   
   $��	Contents:��6   $��1��6%   $
��Left=�62   $��10q�6M   �� 5   
   -   5        $ contentsTextBox��5      $��1��6F   $��100,10,10,30q�6S    �� TextWrapping$
 Wrap=�6i    �� AcceptsReturn$
 True��6}    �� 
AcceptsTab$
 True��6�   $��2��6�   ��6+   �� *	DiaryNote+6�   �� 5   
   $��3��6    �� Orientation$ 
Horizontal=�6"   $��Center=�6;   $��10q�6X   .+�5      �� $��Cancel��6   $��5q�6&    �� IsCancel$
 True��61   �� 5      -   5        $��OK��5      $��5q�6:    �� 	IsDefault$
 True��6E   5      5      5      