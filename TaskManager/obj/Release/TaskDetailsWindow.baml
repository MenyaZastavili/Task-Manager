   M S B A M L   `   `   `  ���� F  BTaskManager, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:TaskManagerTaskManager  #    TaskManager.TaskDetailsWindow   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     +localclr-namespace:TaskManager       � Title$)  #Подробности задачи��$	��450��$	��800��.��� ���#fff$��10q� � RowDefinitions �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $��* ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto � � ColumnDefinitions �� $
��Auto ��� $��* �.+��� $��0��$��0��$��Название:���� -    ��Name$ TitleTextBox��$��0��$��1��$��0,0,0,5q��� $��1��$��0��$��Описание:���� -   $ DescriptionTextBox��$��1��$��1��$��0,0,0,5q�$��80�� �� AcceptsReturn .  �� TextWrapping$
 Wrap=��� $��2��$��0��$��Дедлайн:��(  "System.Windows.Controls.DatePicker  -     Name$ DeadlineDatePicker��$��2��$��1��$��0,0,0,5q��� $��3��$��0��$��Добавлена:���� -    ��Name$ CreationDateTextBlock��$��3��$��1��$��Center=��� $��4��$��0��$��	Теги:���� -   $ TagsTextBox��$��4��$��1��$��0,0,0,5q� . $
 Wrap=��� $��5��$��0��$��Подзадачи:���� -    ��Name$ SubTasksListBox��$��5��$��1��$��0,0,0,5q�$��80������ .R��� 	 �� Orientation$	 
Horizontal=�.+��� $��0,0,5,0q�
 d� 	IsChecked
 �� *IsCompleted+ �� Mode$ TwoWay=��� $��0,0,10,0q����� *Title+�� -   $ ��Редактировать��$	��100��$��0,0,5,0q�
 � Tag �� �� -   $��Удалить��$��80��$��0,0,0,0q� �� �� -	   $��6��$��1��$)��#Добавить подзадачу��$��0,5,0,0q��� $��7��$��1��$
��Left=�$��Center=�.+��� -
    ��Name$ IsCompletedCheckBox��$��Выполнена��$��	0,10,0,10q��� $��9��$��0��$��2��$	 
Horizontal=�$��Right=�.+��� -   $��Сохранить��$��	0,10,10,0q�$	��100��$��25���� -   $��Отмена��$��0,10,0,0q�$��80��