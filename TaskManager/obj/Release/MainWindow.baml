   M S B A M L   `   `   `  ���� F  BTaskManager, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:TaskManagerTaskManager      TaskManager.MainWindow   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     +localclr-namespace:TaskManager     -     � Title$!  Менеджер задач��$
��1065��$	��600��$
��1097�� � Icon$ 	/Icon.jpg�� � 	Resources  �� 
TargetType �� Property �� Value=  7System.Windows.Controls.Primitives.DataGridColumnHeader)  #System.Windows.Controls.DataGridRow*  $System.Windows.Controls.DataGridCell��%�  '��       '  =     '  z     '  �     '�� &    '�� I    �� " ��.���  � ��$ 14(���  � ��$ Center=��� "  .���  � ��$ 14(���  � ��$ Center=��� "  .���  � ��$ 14(���  � ��$ 0,0,0,1q���  � ��
 ������� "  .���  � ��$ 14(���  � ��$ 0,0,0,1q���  � ��
 ������� " ��.���  � ��$ 14(��� " ��.���  � ��$ 14(�.���  � ColumnDefinitions �� $
��Auto ��� $��* �.+��� $��0��$��80�����#1A3957]� $��1��.+�� $��Bottom=� � RowDefinitions �� $
��Auto �.+��� $��0�� �� Orientation$ 
Horizontal=�$��Center=�$��5q� 	 �� 
TargetType
 �� Triggers P� Property P� Value��%�  '��       �� " ��.���  � ��$	 5,0q���  � ��$
 10,5q���  � ��
 �������  � ��
 �   ���  � �� �	#FF807A7A��  � ��$ 1q���  �@�Cursor$
 Hand����  � �� �� "	 ��.R��� #��z��#��z��#��z��._��� $��Center=�$��Center=�
 P�  �@J�IsMouseOver . . ���  � �� �	#FF807A7A��  � �� �	#FF9A9494P�  � �� . . ���  � �� �	#FF504A4A��  � �� �	#FF6A6464.+��� -   $#��Добавить задачу��$	��130��$��25���� -   $-��'Редактировать задачу��$	��140��$��25���� -   $!��Удалить задачу��$	��130��$��25��&   System.Windows.Controls.DataGrid  -     Name$ TasksDataGrid��$��5q�   AutoGenerateColumns .     CanUserResizeColumns .     CanUserAddRows .     HeadersVisibility$ Column=�   GridLinesVisibility$
 None=�   Columns 4  .System.Windows.Controls.DataGridTemplateColumn  ,  &System.Windows.Controls.DataGridColumn   Header$ Приоритет��   MinWidth$	 100Q�   Width5  /System.Windows.Controls.DataGridLengthConverter$ *    CellTemplate �� .R��� $��Center=�$��Center=� d� 	IsChecked �� *
IsPriority+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=����� " ��.���  � �� �� "	 ��.R�� .+�F�  F�Name$
 star��a������� �� � � ��j р���j �@]� �ا ����  $� р�� @]� �@KL  $� ���j �ا р� ��j � z ��j 	
������ 
���   �$��1��$��Center=�$��Center=� �� Triggers P�  �@d�	IsChecked$
 TrueY�. ���  �� 
TargetName$
 star�� � ��
 � ���  $ Название��$	 200Q�$ *  �� .R��� $��Center=�$��Center=����� *Title+0  *System.Windows.Controls.DataGridTextColumn  $ Описание��$	 300 1	  +System.Windows.Controls.DataGridBoundColumn 	  Binding �� *Description+  $ Теги��$	 150Q�$ *  �� .R��� $��Center=�$��Center=����� *TagsDisplay+  $ Дедлайн��$	 125Q�$ *  �� .R��� $��Center=�$��Center=����� *
Deadline+ �� StringFormat$ 
dd.MM.yyyy��  $ Выполнена��$	 112Q�$ *  �� .R��� $��Center=�$��Center=� �� *IsCompleted+$ TwoWay=�$ PropertyChanged=�