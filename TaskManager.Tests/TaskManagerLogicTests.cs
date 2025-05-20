using Microsoft.VisualStudio.TestTools.UnitTesting;
using Newtonsoft.Json;
using System;
using System.Collections.ObjectModel;
using System.IO;
using TaskManager;

namespace TaskManager.Tests
{
    [TestClass]
    public class TaskManagerLogicTests
    {
        private string tempFilePath;

        [TestInitialize]
        public void Setup()
        {
            // Временный файл
            tempFilePath = Path.GetTempFileName();
        }

        [TestCleanup]
        public void Cleanup()
        {
            if (File.Exists(tempFilePath))
            {
                File.Delete(tempFilePath);
            }
        }

        //Проверка корректной сериализации в JSON и десериализации
        [TestMethod]
        public void SerializeAndDeserializeTasks_ShouldMaintainData()
        {
            var tasks = new ObservableCollection<Task>
            {
                new Task { Title = "Task 1", IsPriority = false, Description = "Desc 1" },
                new Task { Title = "Task 2", IsPriority = true, Description = "Desc 2" }
            };

            string json = JsonConvert.SerializeObject(tasks, Formatting.Indented);
            File.WriteAllText(tempFilePath, json);

            string readJson = File.ReadAllText(tempFilePath);
            var loadedTasks = JsonConvert.DeserializeObject<ObservableCollection<Task>>(readJson);

            Assert.IsNotNull(loadedTasks);
            Assert.AreEqual(2, loadedTasks.Count);
            Assert.AreEqual("Task 1", loadedTasks[0].Title);
            Assert.AreEqual("Desc 2", loadedTasks[1].Description);
            Assert.IsFalse(loadedTasks[0].IsPriority);
            Assert.IsTrue(loadedTasks[1].IsPriority);
        }

        //Проверка на корректность работы приоритетов
        [TestMethod]
        public void SortingTasks_ShouldOrderByPriorityDescending()
        {
            var task1 = new Task { Title = "Low priority", IsPriority = false };
            var task2 = new Task { Title = "High priority", IsPriority = true };
            var tasks = new ObservableCollection<Task> { task1, task2 };

            TaskUtils.SortTasksDescendingByPriority(tasks);

            Assert.AreEqual("High priority", tasks[0].Title);
            Assert.AreEqual("Low priority", tasks[1].Title);
        }
    }
}