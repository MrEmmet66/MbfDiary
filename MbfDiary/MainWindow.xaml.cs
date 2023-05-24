using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Collections.ObjectModel;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.ComponentModel;
using System.Runtime.CompilerServices;
using Microsoft.EntityFrameworkCore;

namespace MbfDiary
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        ApplicationContext db = new ApplicationContext();
        public MainWindow()
        {
            InitializeComponent();
        }

        private void addButton_Click(object sender, RoutedEventArgs e)
        {
            NoteWindow noteWindow = new NoteWindow(new Note());
            if(noteWindow.ShowDialog() == true)
            {
                Note Note = noteWindow.Note;
                Note.UpdateDate = DateTime.Now;
                db.Notes.Add(Note);
                db.SaveChanges();
            }
        }

        private void testButton2_Click(object sender, RoutedEventArgs e)
        {
            Note note = notesListBox.SelectedItem as Note;
            MessageBox.Show($"{note.Id}\n{note.Title}\n{note.DiaryNote}");
            db.Notes.Remove(note);
            db.SaveChanges();
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            db.Database.EnsureCreated();
            db.Notes.Load();
            DataContext = db.Notes.Local.ToObservableCollection();
        }

        private void notesListBox_MouseDoubleClick(object sender, MouseButtonEventArgs e)
        {
        }

        private void readButton_Click(object sender, RoutedEventArgs e)
        {
            Note? note = notesListBox.SelectedItem as Note;
            if (note is null) return;

            EntryNoteWindow entryNoteWindow = new EntryNoteWindow(note);
            entryNoteWindow.Show();
        }

        private void editButon_Click(object sender, RoutedEventArgs e)
        {
            Note? note = notesListBox.SelectedItem as Note;

            if (note is null) return;

            NoteWindow noteWindow = new NoteWindow(new Note
            {
                Id = note.Id,
                Title = note.Title,
                DiaryNote = note.DiaryNote,
                UpdateDate = note.UpdateDate
            });

            if(noteWindow.ShowDialog() == true)
            {
                note = db.Notes.Find(noteWindow.Note.Id);
                if(note != null)
                {
                    note.Title = noteWindow.Note.Title;
                    note.DiaryNote = noteWindow.Note.DiaryNote;
                    note.UpdateDate = DateTime.Now;
                    notesListBox.Items.Refresh();
                    db.SaveChanges();
                }
            }


        }

        private void deleteButton_Click(object sender, RoutedEventArgs e)
        {
            Note note = notesListBox.SelectedItem as Note;
            db.Notes.Remove(note);
            db.SaveChanges();
            MessageBox.Show("Item removed", "Remove");
        }

        private void searchTextBox_TextChanged(object sender, TextChangedEventArgs e)
        {
            var notes = db.Notes.Local.ToObservableCollection().Where(n => n.Title.Contains(searchTextBox.Text));
            
            if(searchTextBox.Text != "")
            {
                DataContext = notes;
            }
            else
            {
                DataContext = db.Notes.Local.ToObservableCollection();
            }

        }
    }
}
