   M S B A M L   `   `   `  ����F  BTaskManager, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:TaskManagerTaskManager  5      #    TaskManager.TaskDetailsWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      +localclr-namespace:TaskManager     5        � Title$)  #Подробности задачи��5	      $	��450��6"   $	��800��6/   .��5      � ���#fff$��10q�6    � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $��* �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6    � ColumnDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $��* �6   .+�5   
   �� $��0��6   $��0��6   $��Название:��6-   �� 5   
   -   5         ��Name$ TitleTextBox��5      $��0��6(   $��1��65   $��0,0,0,5q�6E   �� 5    
   $��1��6   $��0��6   $��Описание:��6-   �� 5!   
   -   5        $ DescriptionTextBox��5!      $��1��6.   $��1��6;   $��0,0,0,5q�6K   $��80��6\    �� AcceptsReturn .  �� TextWrapping$
 Wrap=�6}   �� 5#   
   $��2��6   $��0��6   $��Дедлайн:��6-   (  "System.Windows.Controls.DatePicker  5$   
   -   5          Name$ DeadlineDatePicker��5$      $��2��61   $��1��6>   $��0,0,0,5q�6N   �� 5&   
   $��3��6   $��0��6   $��Добавлена:��6-   �� 5'   
   -   5         ��Name$ CreationDateTextBlock��5'      $��3��63   $��1��6@   $��Center=�6P   �� 5)   
   $��4��6   $��0��6   $��	Теги:��6-   �� 5*   
   -   5        $ TagsTextBox��5*      $��4��6'   $��1��64   $��0,0,0,5q�6D    . $
 Wrap=�6j   �� 5,   
   $��5��6   $��0��6   $��Подзадачи:��6-   �� 5.   
   -   5         ��Name$ SubTasksListBox��5.      $��5��6+   $��1��68   $��0,0,0,5q�6H   $��80��6Y   ��5/      �� 50      .R�51      �� 	 �� Orientation$	 
Horizontal=�6!   .+�52      �� $��0,0,5,0q�6R   
 d� 	IsChecked
 6#   �� *IsCompleted+ �� Mode$ TwoWay=�6R   �� 53      $��0,0,10,0q�6;   ��6$   �� *Title+6;   �� 54      -   5        $ ��Редактировать��54   !   $	��100��6i   $��0,0,5,0q�6u   
 � Tag 6Y   �� 6u   �� 55      -   5        $��Удалить��55   !   $��80��6e   $��0,0,0,0q�6p    6U   �� 6p   56      57      59      �� 5;   
   -	   5        $��6��5;      $��1��6   $)��#Добавить подзадачу��6.   $��0,5,0,0q�6j   �� 5=   
   $��7��6   $��1��6"   $
��Left=�62   $��Center=�6M   .+�5>      �� -
   5         ��Name$ IsCompletedCheckBox��5>      $��Выполнена��64   $��	0,10,0,10q�6H   5?      �� 5A   
   $��9��6   $��0��6"   $��2��62   $	 
Horizontal=�6F   $��Right=�6_   .+�5B      �� -   5        $��Сохранить��5B      $��	0,10,10,0q�6)   $	��100��6U   $��25��6a   �� 5C      -   5        $��Отмена��5C      $��0,10,0,0q�6&   $��80��6S   5D      5E      5F      