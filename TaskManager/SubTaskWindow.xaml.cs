using System.Windows;

namespace TaskManager
{
    public partial class SubTaskWindow : Window
    {
        public string SubTaskTitle { get; set; }

        public SubTaskWindow()
        {
            InitializeComponent();
        }

        private void AddSubTaskButton_Click(object sender, RoutedEventArgs e)
        {
            SubTaskTitle = SubTaskTitleTextBox.Text;
            this.DialogResult = true;
            this.Close();
        }
    }
}
