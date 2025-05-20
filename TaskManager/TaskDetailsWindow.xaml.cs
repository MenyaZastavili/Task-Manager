using System;
using System.Collections.ObjectModel;
using System.Windows;
using System.Windows.Controls;
using System.Globalization;
using System.Linq;

namespace TaskManager
{
    public partial class TaskDetailsWindow : Window
    {
        public Task Task { get; set; }

        public TaskDetailsWindow(Task task = null)
        {
            InitializeComponent();

            if (task != null)
            {
                Task = task;
                TitleTextBox.Text = Task.Title;
                DescriptionTextBox.Text = Task.Description;
                DeadlineDatePicker.SelectedDate = Task.Deadline;
                IsCompletedCheckBox.IsChecked = Task.IsCompleted;
                TagsTextBox.Text = string.Join(", ", Task.Tags);
                SubTasksListBox.ItemsSource = Task.SubTasks;
                CreationDateTextBlock.Text = $"Создано: {Task.CreationDate.ToString("yyyy-MM-dd HH:mm:ss", CultureInfo.InvariantCulture)}";
            }
            else
            {
                Task = new Task();
                CreationDateTextBlock.Text = $"Создано: {Task.CreationDate.ToString("yyyy-MM-dd HH:mm:ss", CultureInfo.InvariantCulture)}";
            }
        }

        private void AddSubTaskButton_Click(object sender, RoutedEventArgs e)
        {
            var subTaskWindow = new SubTaskWindow();
            if (subTaskWindow.ShowDialog() == true)
            {
                var subTask = new SubTask { Title = subTaskWindow.SubTaskTitle };
                Task.SubTasks.Add(subTask);
            }
        }

        private void EditSubTaskButton_Click(object sender, RoutedEventArgs e)
        {
            var button = sender as Button;
            var subTask = button.Tag as SubTask;

            if (subTask != null)
            {
                var subTaskWindow = new SubTaskWindow { SubTaskTitle = subTask.Title };
                if (subTaskWindow.ShowDialog() == true)
                {
                    subTask.Title = subTaskWindow.SubTaskTitle;
                }
            }
        }

        private void DeleteSubTaskButton_Click(object sender, RoutedEventArgs e)
        {
            var button = sender as Button;
            var subTask = button.Tag as SubTask;

            if (subTask != null)
            {
                Task.SubTasks.Remove(subTask);
            }
        }

        private void SaveButton_Click(object sender, RoutedEventArgs e)
        {
            Task.Title = TitleTextBox.Text;
            Task.Description = DescriptionTextBox.Text;
            Task.Deadline = DeadlineDatePicker.SelectedDate ?? DateTime.Now;
            Task.IsCompleted = IsCompletedCheckBox.IsChecked ?? false;

            Task.Tags = new ObservableCollection<string>(
                TagsTextBox.Text.Split(new[] { ',' }, StringSplitOptions.RemoveEmptyEntries)
                .Select(tag => tag.Trim())
            );

            DialogResult = true;
            Close();
        }

        private void CancelButton_Click(object sender, RoutedEventArgs e)
        {
            DialogResult = false;
            Close();
        }
    }
}
