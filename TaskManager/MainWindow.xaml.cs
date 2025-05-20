using Newtonsoft.Json;
using System;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.IO;
using System.Linq;
using System.Windows;
using TaskManager;

namespace TaskManager
{
    public partial class MainWindow : Window
    {
        private ObservableCollection<Task> tasks;

        public string DataFilePath = "tasks.json";

        public MainWindow()
        {
            InitializeComponent();
            tasks = new ObservableCollection<Task>();
            TasksDataGrid.ItemsSource = tasks;
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            LoadTasks();
        }

        private void Window_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            SaveTasks();
        }

        private void AddTaskButton_Click(object sender, RoutedEventArgs e)
        {
            TaskDetailsWindow detailsWindow = new TaskDetailsWindow();

            if (detailsWindow.ShowDialog() == true)
            {
                var newTask = detailsWindow.Task;
                newTask.PropertyChanged += Task_PropertyChanged;
                tasks.Add(newTask);
                SortTasks();
            }
        }

        private void EditTaskButton_Click(object sender, RoutedEventArgs e)
        {
            Task selectedTask = TasksDataGrid.SelectedItem as Task;

            if (selectedTask != null)
            {
                TaskDetailsWindow detailsWindow = new TaskDetailsWindow(selectedTask);

                if (detailsWindow.ShowDialog() == true)
                {
                    SortTasks();
                }
            }
            else
            {
                MessageBox.Show("Выберите задачу для редактирования.", "Предупреждение", MessageBoxButton.OK, MessageBoxImage.Warning);
            }
        }

        private void DeleteTaskButton_Click(object sender, RoutedEventArgs e)
        {
            Task selectedTask = TasksDataGrid.SelectedItem as Task;

            if (selectedTask != null)
            {
                MessageBoxResult result = MessageBox.Show($"Вы уверены, что хотите удалить задачу \"{selectedTask.Title}\"?", "Подтверждение удаления", MessageBoxButton.YesNo, MessageBoxImage.Question);

                if (result == MessageBoxResult.Yes)
                {
                    tasks.Remove(selectedTask);
                }
            }
            else
            {
                MessageBox.Show("Выберите задачу для удаления.", "Предупреждение", MessageBoxButton.OK, MessageBoxImage.Warning);
            }
        }

        private void SaveTasks()
        {
            try
            {
                string json = JsonConvert.SerializeObject(tasks, Formatting.Indented);
                File.WriteAllText(DataFilePath, json);
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Ошибка при сохранении задач: {ex.Message}", "Ошибка сохранения", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        private void LoadTasks()
        {
            if (File.Exists(DataFilePath))
            {
                try
                {
                    string json = File.ReadAllText(DataFilePath);
                    var loadedTasks = JsonConvert.DeserializeObject<ObservableCollection<Task>>(json);

                    if (loadedTasks != null)
                    {
                        tasks.Clear();
                        foreach (var task in loadedTasks)
                        {
                            task.PropertyChanged += Task_PropertyChanged;
                            tasks.Add(task);
                        }
                        SortTasks();
                    }
                }
                catch (Exception ex)
                {
                    MessageBox.Show($"Ошибка при загрузке задач: {ex.Message}", "Ошибка загрузки", MessageBoxButton.OK, MessageBoxImage.Error);
                }
            }
        }

        private void Task_PropertyChanged(object sender, PropertyChangedEventArgs e)
        {
            if (e.PropertyName == nameof(Task.IsPriority))
            {
                SortTasks();
            }
        }

        private void SortTasks()
        {
            var sortedTasks = tasks.OrderByDescending(t => t.IsPriority).ToList();
            tasks.Clear();
            foreach (var task in sortedTasks)
            {
                tasks.Add(task);
            }
        }
    }
}
