using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MbfDiary
{
    public class Note
    {
        public int Id { get; set; }
        public string? Title { get; set; }
        public DateTime UpdateDate { get; set; }
        public string DiaryNote { get; set; }
    }
}
