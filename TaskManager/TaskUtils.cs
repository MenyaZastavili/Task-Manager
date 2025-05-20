using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TaskManager
{
    public static class TaskUtils
    {
        public static void SortTasksDescendingByPriority(ObservableCollection<Task> tasks)
        {
            var sorted = tasks.OrderByDescending(t => t.IsPriority).ToList();
            tasks.Clear();
            foreach (var task in sorted)
            {
                tasks.Add(task);
            }
        }
    }
}
