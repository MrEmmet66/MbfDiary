   M S B A M L   `   `   `  ����C  ?MbfDiary, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:MbfDiaryMbfDiary  5   	       MbfDiary.EntryNoteWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   (localclr-namespace:MbfDiary     5   	     � Title$  Diary Entry��5      $	��450��6   $	��600��6"   .��5	      �  � RowDefinitions 5
   
   �� 5      $
��Auto �6   �� 5      $��* �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   .+�5   
   �� $��Title:��6   $
��Left=�6!   $��10q�6<   �� 5   
   -   5         ��Name$ titleTextBlock��5      $��0��6H   $
��Left=�6U   $��100,10,10,0q�6p   $
��Wrap=�6�   ��6,   ��  �� Path$ Title�6�   �� 5   
   $��	Contents:��6   $��1��6$   $
��Left=�61   $��10q�6L   �� 5   
   $��1��6   $��Disabled=�6$   $
��Auto=�6M   $��100,10,10,0q�6p   .��5      �� -   5         ��Name$ contentsTextBox��5   6    �� TextWrapping$
 Wrap=�6O    �� 
IsReadOnly$
 True��6c   " �� VerticalScrollBarVisibility$
 Auto=�6u   ��6   �� $ 	DiaryNote�6u   5      �� 5   
   $��Date Created:��6   $��2��6(   $
��Left=�65   $��10q�6P   �� 5   
   -   5        $ dateTextBlock��5      $��2��6L   $
��Left=�6Y   $��100,10,10,0q�6t   ��6+   �� $ 
UpdateDate�6t   �� 5   
   $��
Record ID:��6   $��3��6%   $
��Left=�62   $��10q�6M   �� 5   
   -   5        $ recordIdTextBlock��5      $��3��6H   $
��Left=�6U   $��100,10,10,0q�6p   ��6/   �� $ Id�6p   �� 5   
   $��4��6    �� Orientation$ 
Horizontal=�6"   $��Center=�6;   $��10q�6X   .+�5       �� -   5        $��Close��5       $��5q�6%   60   5!      5"      5#      