using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DataScienceWebForm.App_Code
{
    public class CacmsRLang
    {
        /// <summary>
        /// Path to RScript File - Default location ------> C:\Program Files\R\R-3.4.3\bin\x64\Rscript.exe
        /// </summary>
        public string bin = @"C:\Program Files\Microsoft\R Client\R_SERVER\bin\Rscript.exe";
        /// <summary>
        /// Path to Script File
        /// </summary>
        private string filetoscript = "";
        /// <summary>
        /// Runs R Script
        /// </summary>
        /// <returns>VOID</returns>
        public string executeR()
        {
            if (filetoscript.Length == 0)
            {
                return "ERROR - Script sent is null";
            }
            System.Diagnostics.Process process = new System.Diagnostics.Process();
            process.StartInfo.FileName = bin;
            process.StartInfo.Arguments = filetoscript;
            process.StartInfo.WorkingDirectory = HttpContext.Current.Server.MapPath("/");
            process.StartInfo.UseShellExecute = false;
            process.StartInfo.RedirectStandardOutput = true;
            process.StartInfo.RedirectStandardError = true;
            process.Start();
            string output = process.StandardOutput.ReadToEnd();
            string err = process.StandardError.ReadToEnd();
            process.WaitForExit();
            return output + err;
        }
        /// <summary>
        /// Write Augmented Script to R Console
        /// </summary>
        /// <param name="content">Script Code</param>
        public void WriteScript(string content)
        {
            string pathtofile = HttpContext.Current.Server.MapPath("/script.r");
            System.IO.File.WriteAllText(pathtofile, content);
            this.filetoscript = @pathtofile;
        }
    }
}