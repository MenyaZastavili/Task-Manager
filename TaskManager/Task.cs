using System;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Runtime.CompilerServices;

namespace TaskManager
{
    public class Task : INotifyPropertyChanged
    {
        public event PropertyChangedEventHandler PropertyChanged;

        protected void OnPropertyChanged([CallerMemberName] string propertyName = null)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }

        private Guid _id;
        private string _title;
        private string _description;
        private DateTime? _deadline;
        private bool _isCompleted;
        private DateTime _creationDate;
        private bool _isPriority;

        public string TagsDisplay => string.Join(", ", Tags);

        private ObservableCollection<string> _tags;
        private ObservableCollection<SubTask> _subTasks;

        public Guid Id
        {
            get { return _id; }
            set
            {
                if (_id != value)
                {
                    _id = value;
                    OnPropertyChanged();
                }
            }
        }

        public string Title
        {
            get { return _title; }
            set
            {
                if (_title != value)
                {
                    _title = value;
                    OnPropertyChanged();
                }
            }
        }

        public string Description
        {
            get { return _description; }
            set
            {
                if (_description != value)
                {
                    _description = value;
                    OnPropertyChanged();
                }
            }
        }

        public DateTime? Deadline
        {
            get { return _deadline; }
            set
            {
                if (_deadline != value)
                {
                    _deadline = value;
                    OnPropertyChanged();
                }
            }
        }

        public bool IsCompleted
        {
            get { return _isCompleted; }
            set
            {
                if (_isCompleted != value)
                {
                    _isCompleted = value;
                    OnPropertyChanged();
                }
            }
        }

        public DateTime CreationDate
        {
            get { return _creationDate; }
            set
            {
                if (_creationDate != value)
                {
                    _creationDate = value;
                    OnPropertyChanged();
                }
            }
        }

        public bool IsPriority
        {
            get { return _isPriority; }
            set
            {
                if (_isPriority != value)
                {
                    _isPriority = value;
                    OnPropertyChanged();
                }
            }
        }

        public ObservableCollection<string> Tags
        {
            get { return _tags; }
            set
            {
                if (_tags != value)
                {
                    if (_tags != null)
                    {
                        _tags.CollectionChanged -= Tags_CollectionChanged;
                    }
                    _tags = value;
                    if (_tags != null)
                    {
                        _tags.CollectionChanged += Tags_CollectionChanged;
                    }
                    OnPropertyChanged();
                    OnPropertyChanged(nameof(TagsDisplay));
                }
            }
        }

        private void Tags_CollectionChanged(object sender, System.Collections.Specialized.NotifyCollectionChangedEventArgs e)
        {
            OnPropertyChanged(nameof(TagsDisplay));
        }

        public ObservableCollection<SubTask> SubTasks
        {
            get { return _subTasks; }
            set
            {
                if (_subTasks != value)
                {
                    _subTasks = value;
                    OnPropertyChanged();
                }
            }
        }

        public Task()
        {
            Id = Guid.NewGuid();
            IsCompleted = false;
            CreationDate = DateTime.Now;
            IsPriority = false;
            Tags = new ObservableCollection<string>();
            SubTasks = new ObservableCollection<SubTask>();
        }
    }

    public class SubTask : INotifyPropertyChanged
    {
        private string _title;
        private bool _isCompleted;

        public string Title
        {
            get { return _title; }
            set
            {
                if (_title != value)
                {
                    _title = value;
                    OnPropertyChanged();
                }
            }
        }

        public bool IsCompleted
        {
            get { return _isCompleted; }
            set
            {
                if (_isCompleted != value)
                {
                    _isCompleted = value;
                    OnPropertyChanged();
                }
            }
        }

        public event PropertyChangedEventHandler PropertyChanged;

        protected void OnPropertyChanged([CallerMemberName] string propertyName = null)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
    }
}
