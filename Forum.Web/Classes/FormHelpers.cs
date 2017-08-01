using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;

namespace Forum.Web.Classes
{
    public class FormHelpers
    {
        public static bool UploadFileTooBig(HttpPostedFileBase fileBeingUploaded)
        {
            //  validate file length
            if (fileBeingUploaded.ContentLength > 2000000)
                return true;

            return false;
        }

        public static bool UploadFileIncorrectType(HttpPostedFileBase fileBeingUploaded) 
        {
            //  validate file extension
            switch (Path.GetExtension(fileBeingUploaded.FileName))
            {
                case ".exe":
                case ".bat":
                case ".msg":
                    return true;
            }

            return false;
        }

        public static string FormatUploadFileName(string uploadFileName)
        {
            return DateTime.Now.Ticks + "_" + uploadFileName.Replace(" ", "_");
        }
    }
}