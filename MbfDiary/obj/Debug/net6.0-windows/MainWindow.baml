   M S B A M L   `   `   `  ����C  ?MbfDiary, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:MbfDiaryMbfDiary  5   	       MbfDiary.MainWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   (localclr-namespace:MbfDiary     5   	   -   5          � Title$  
MainWindow��5   	   $	��450��6   $	��800��6)   .��5	      �  � RowDefinitions 5
      �� 5      $
��Auto �6    �� 5      $��* �6    �� 5      $
��Auto �6    .+�5      �� $��Diary Entries��6   $��Center=�6,   $��20(�6I   �� 5   
   -   5         ��Name$ notesListBox��5      $��1��6   $��10q�66   ��6B   �� ��5      �� 5      .R�5      �� .+�5      �� $
��Bold"�6@   $��CharacterEllipsis=�6R   $	��300��6s   $
��Left=�6�   ��6$   ��  �� Path$ Title�6�   �� 5      $��CharacterEllipsis=�6D   $	��500��6e   ��6$   �� $ 	DiaryNote�6e   �� 5      ��6$   �� $ 
UpdateDate�5      5      5      �� 5      $��2��6    �� Orientation$ 
Horizontal=�6&   $��Center=�6?   $��10q�6\   .+�5      �� -   5        $	��Add��5      $��5q�6'   62   �� 5       -   5         ��Name$ 	editButon��5       $
��Edit��6,   $��5q�6;   6F   �� 5!      -   5        $ deleteButton��5!      $��Delete��6K   $��5q�6\   �� 5"      -   5        $ 
readButton��5"      $
��Read��6)   $��5q�68   6C   �� 5#      -   5         ��Name$ searchTextBox��5#      $��5q�6U   $	��300��6`   5$      5%      5&      