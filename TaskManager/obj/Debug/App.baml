   M S B A M L   `   `   `  ����F  BTaskManager, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:TaskManagerTaskManager  5          TaskManager.App   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      +localclr-namespace:TaskManager     5        �� 	Resources  5         TextBoxWithPlaceholder �� 
TargetType �� Property �� Value �� 
TargetType ��Name �� RelativeSource �� UpdateSourceTrigger ��Name
	 � Tag
 �� Triggers �� Value �� Binding �� 
TargetName P� Property P� Value��%x  &	        �� 5   
   " ��6/   .�5      ��  � �� 5	      �� 5
      " ��6&   .R�5      � .+�5      �� $ textBox��6&   
������ $��0q�5   &   ��5   &   �� *Text+ �� *TemplatedParent+$ PropertyChanged=�5   &   �� 5      $ placeholderTextBlock��6(   #��z	 5   (   
�������$y�	Collapsed=�5   (   $��5,0,0,0q�5   (   5      
 5      �� 5      $  ��6t    6*   �� *Text+ �� *TemplatedParent+.a�5   "   �� $ placeholderTextBlock��6)    � y�$ Visible=�6a   5      �� 5       6*   �� *Text+ �� *TemplatedParent+ 6t   Z� .a�5   "   �� $ placeholderTextBlock��6)    � y�$ Visible=�6a   5      P� 5       �@J�	IsFocused . . �5   "   �� $ placeholderTextBlock��6)    � y�$ 	Collapsed=�6a   5      5!      5#      5$      5%      5&      