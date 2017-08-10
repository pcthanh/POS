using System;
using System.Collections.Generic;
using System.Text;
using System.Drawing.Printing;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Collections;
using System.IO;
namespace Printer
{
   public class POSPrinter:PrintDocument
    {
       public PrintDocument printDocument;
       
        public object Tag { get; set; }
        public POSPrinter()
        {
            printDocument = new PrintDocument();
            printDocument.PrintController = new StandardPrintController();
        }
        public void Print()
        {
            printDocument.Print();
        }
        public void SetPrinterName(string name)
        {
            printDocument.PrinterSettings.PrinterName = name;
        }

        public int GetHeightPrinterLine()
        {
            //if (readconfig.PrinterModel == "PRP-085")
            //{
            //    return 100;
            //}
            //else
            //{
            //    return 10;
            //}
            return 100;
        }


        public float DrawString(string s, System.Drawing.Printing.PrintPageEventArgs e, System.Drawing.Font font, float y, int textAlign,Boolean isName,Boolean isQunatity)
        {
            float x;
            List<string> list = SplitStringLine(s, e, font,isName);
            foreach (string item in list)
            {
                if (textAlign == 1)
                {
                    x = 0;
                    
                }
                else if (textAlign == 2)
                {
                    if(isQunatity)
                        x = (float)Math.Abs(((float)e.PageBounds.Width - e.Graphics.MeasureString(item, font).Width) /1.5);
                    else
                        x = (float)Math.Abs(((float)e.PageBounds.Width - e.Graphics.MeasureString(item, font).Width) / 2);
                }
                else
                {
                    x = (float)Math.Abs(((float)e.PageBounds.Width - e.Graphics.MeasureString(item, font).Width)/1.1);
                    //x = e.PageBounds.Width - e.Graphics.MeasureString(item, font).Width;
                }
                SizeF sf = e.Graphics.MeasureString(s,
                         new Font(new FontFamily("Arial"), 10F), 60);
                //e.Graphics.DrawString("shdadj asdhkj shad adas dash asdl asasdassa",
                //                new Font(new FontFamily("Arial"), 10F), Brushes.Black,
                //                new RectangleF(new PointF(x, y), sf),
                //                StringFormat.GenericTypographic);
                 
                e.Graphics.DrawString(item, font, (System.Drawing.Brushes.Black), x,y);
               
                y += e.Graphics.MeasureString(item, font).Height;
            }

            return y;
        }

        public float DrawString2(string s, System.Drawing.Printing.PrintPageEventArgs e, System.Drawing.Font font, float y, int textAlign, Boolean isName, Boolean isQunatity)
        {
            float x;
            List<string> list = SplitStringLine(s, e, font, isName);
            foreach (string item in list)
            {
                if (textAlign == 1)
                {
                    x = 0;

                }
                else if (textAlign == 2)
                {
                    if (isQunatity)
                        x = (float)Math.Abs(((float)e.PageBounds.Width - e.Graphics.MeasureString(item, font).Width) / 1.5);
                    else
                        x = (float)Math.Abs(((float)e.PageBounds.Width - e.Graphics.MeasureString(item, font).Width) / 2);
                }
                else
                {
                    x = (float)Math.Abs(((float)e.PageBounds.Width - e.Graphics.MeasureString(item, font).Width) / 1.1);
                    //x = e.PageBounds.Width - e.Graphics.MeasureString(item, font).Width;
                }
                SizeF sf = e.Graphics.MeasureString(s,
                         new Font(new FontFamily("Arial"), 10F), 60);
                //e.Graphics.DrawString("shdadj asdhkj shad adas dash asdl asasdassa",
                //                new Font(new FontFamily("Arial"), 10F), Brushes.Black,
                //                new RectangleF(new PointF(x, y), sf),
                //                StringFormat.GenericTypographic);

                e.Graphics.DrawString(item, font, (System.Drawing.Brushes.White), x, y);

                y += e.Graphics.MeasureString(item, font).Height;
            }

            return y;
        }

        public float DrawString1(string s, System.Drawing.Printing.PrintPageEventArgs e, System.Drawing.Font font, float y, int textAlign, Boolean isName, Boolean isQunatity)
        {
            float x;
            List<string> list = SplitStringLine(s, e, font, isName);
            foreach (string item in list)
            {
                if (textAlign == 1)
                {
                    x = 0;

                }
                else if (textAlign == 2)
                {
                    if (isQunatity)
                        x = (float)Math.Abs(((float)e.PageBounds.Width - e.Graphics.MeasureString(item, font).Width) / 1.5);
                    else
                        x = (float)Math.Abs(((float)e.PageBounds.Width - e.Graphics.MeasureString(item, font).Width) / 2);
                }
                else
                {
                    x = (float)Math.Abs(((float)e.PageBounds.Width - e.Graphics.MeasureString(item, font).Width) / 1.1);
                    //x = e.PageBounds.Width - e.Graphics.MeasureString(item, font).Width;
                }
                SizeF sf = e.Graphics.MeasureString(s,
                         new Font(new FontFamily("Arial"), 10F), 60);
                //e.Graphics.DrawString("shdadj asdhkj shad adas dash asdl asasdassa",
                //                new Font(new FontFamily("Arial"), 10F), Brushes.Black,
                //                new RectangleF(new PointF(x, y), sf),
                //                StringFormat.GenericTypographic);
                SolidBrush myBrush = new SolidBrush(Color.Black);

                Rectangle rect = new Rectangle((int)x, (int)y,
                    e.PageBounds.Width, 24);
                StringFormat sf1 = new StringFormat();
                sf1.Alignment = StringAlignment.Near;
                sf1.LineAlignment = StringAlignment.Center;
                e.Graphics.FillRectangle(myBrush, rect);
                e.Graphics.DrawString(item, font, (System.Drawing.Brushes.White),rect,sf1);

                y += e.Graphics.MeasureString(item, font).Height;
            }

            return y;
        }

        public List<string> SplitStringLine(string str, System.Drawing.Printing.PrintPageEventArgs e, System.Drawing.Font font,Boolean isName)
        {
            List<string> list = new List<string>();
            string[] s = str.Split(' ');
            string resuilt = "";
            //float width = e.Graphics.MeasureString("ADD",font).Width;
            for (int i = 0; i < s.Length; i++)
            {
                if (s[i].Length > 0)
                {
                    if (!isName)
                    {
                        if (e.Graphics.MeasureString(resuilt + s[i], font).Width > e.PageBounds.Width && resuilt.Length > 0)
                        {
                            list.Add(resuilt);
                            i--;
                            resuilt = "";
                        }
                        else if (e.Graphics.MeasureString(s[i], font).Width > e.PageBounds.Width)
                        {
                            list.Add(s[i]);
                            resuilt = "";
                        }
                        else
                        {
                            resuilt += s[i] + " ";
                        }
                    }
                    else
                    {
                        float test = e.Graphics.MeasureString(resuilt + s[i], font).Width;
                        SystemLog.LogPOS.WriteLog(test.ToString());
                        if (e.Graphics.MeasureString(resuilt + s[i], font).Width > 200 && resuilt.Length > 0)
                        {
                            list.Add(resuilt);
                            i--;
                            resuilt = "";
                        }
                        else if (e.Graphics.MeasureString(s[i], font).Width > e.PageBounds.Width)
                        {
                            list.Add(s[i]);
                            resuilt = "";
                        }
                        else
                        {
                            resuilt += s[i] + " ";
                        }
                    }
                    
                }
            }
            if (resuilt.Length > 0)
            {
                list.Add(resuilt);
            }
            return list;
        }
        public void DrawCancelLine(System.Drawing.Printing.PrintPageEventArgs e, float y_start, float y_end)
        {
            System.Drawing.Pen pen = new System.Drawing.Pen(System.Drawing.Brushes.Black);
            e.Graphics.DrawLine(pen, 0, y_start, e.PageBounds.Width, y_end);
            e.Graphics.DrawLine(pen, 0, y_end, e.PageBounds.Width, y_start);
        }
        public float DrawLine(string s, System.Drawing.Font font, System.Drawing.Printing.PrintPageEventArgs e, System.Drawing.Drawing2D.DashStyle dashStyle, float y, int textAlign)
        {
            float x;
            float width;
            System.Drawing.Pen pen = new System.Drawing.Pen(System.Drawing.Brushes.Black);
            if (dashStyle != System.Drawing.Drawing2D.DashStyle.Custom)
            {
                pen.DashStyle = dashStyle;
            }
            if (s == "" || s == null)
            {
                width = e.PageBounds.Width;
            }
            else
            {
                width = e.Graphics.MeasureString(s, font).Width;
            }
            if (textAlign == 1)
            {
                x = 0;
            }
            else if (textAlign == 2)
            {
                x = (float)Math.Abs(((float)e.PageBounds.Width - e.Graphics.MeasureString(s, font).Width) / 2);
            }
            else
            {
                x = e.PageBounds.Width - e.Graphics.MeasureString(s, font).Width;
            }   
            e.Graphics.DrawLine(pen, x, y, x + width, y);
            y += 2;
            return y;
        }

        public float DrwaImage(System.Drawing.Printing.PrintPageEventArgs e, System.Drawing.Font font, float y, int textAlign)
        {
            float x = 0 ;
            
            string path = System.Reflection.Assembly.GetExecutingAssembly().Location;
            string mImageFullFolder = System.IO.Path.GetDirectoryName(path) + "\\logo\\logo.png";
            Image image1 =(Image.FromFile(mImageFullFolder));
            
            if (textAlign == 2)
            {

                x = e.PageBounds.Width - 80;
                if (x < 0)
                {
                    x = 0;
                }
                else
                    x = x / 2;
                //if (image1.Width >= e.PageBounds.Width)
                //{
                //    x = 0;
                //}
                //else
                //    x = (e.PageBounds.Width / 3)+7;
            }
            //resized.SetResolution(300, 300);
            e.Graphics.SmoothingMode =
                  SmoothingMode.AntiAlias;
            
            e.Graphics.InterpolationMode =
                InterpolationMode.High;


            //e.Graphics.DrawImage(resized,
            //    x, y,80,80);
            e.Graphics.DrawImage(image1, (int)x, (int)y,80,80);
            y += 80+2;
            return y;

        }
        public float DrwaImage1(System.Drawing.Printing.PrintPageEventArgs e, System.Drawing.Font font, float y, int textAlign)
        {
            float x = 0;

            string path = System.Reflection.Assembly.GetExecutingAssembly().Location;
            string mImageFullFolder = System.IO.Path.GetDirectoryName(path) + "\\logo\\panel.png";
            Image image1 = (Image.FromFile(mImageFullFolder));

            if (textAlign == 2)
            {

                x = e.PageBounds.Width - 80;
                if (x < 0)
                {
                    x = 0;
                }
                else
                    x = x / 2;
                //if (image1.Width >= e.PageBounds.Width)
                //{
                //    x = 0;
                //}
                //else
                //    x = (e.PageBounds.Width / 3)+7;
            }
            //resized.SetResolution(300, 300);
            e.Graphics.SmoothingMode =
                  SmoothingMode.AntiAlias;

            e.Graphics.InterpolationMode =
                InterpolationMode.High;


            //e.Graphics.DrawImage(resized,
            //    x, y,80,80);
            e.Graphics.DrawImage(image1, (int)x, (int)y, 249, 24);
            y += 80 + 2;
            return y;

        }
        public Bitmap GrayScaleFilter(Bitmap image)
        {
            Bitmap grayScale = new Bitmap(image.Width, image.Height);

            for (Int32 y = 0; y < grayScale.Height; y++)
                for (Int32 x = 0; x < grayScale.Width; x++)
                {
                    Color c = image.GetPixel(x, y);

                    Int32 gs = (Int32)(c.R * 0.3 + c.G * 0.59 + c.B * 0.11);

                    grayScale.SetPixel(x, y, Color.FromArgb(gs, gs, gs));
                }
            return grayScale;
        }
        private Bitmap CreateLargeIconForImage(Bitmap src)
        {
            Bitmap bmp = new Bitmap(128, 128);
            Graphics g = Graphics.FromImage(bmp);

            float scale = Math.Max((float)src.Width / 128.0f, (float)src.Height / 128.0f);
            PointF p = new PointF(128.0f - ((float)src.Width / scale), 128.0f - ((float)src.Height / scale));
            SizeF size = new SizeF((float)src.Width / scale, (float)src.Height / scale);

            g.DrawImage(src, new RectangleF(p, size));

            return bmp;
        }

        //public float DrawBarcode(string dataBarcode, System.Drawing.Printing.PrintPageEventArgs e, float y,int align)
        //{            
        //    Linear barcode = new Linear();

        //    // EAN 13 Barcode Basic Settings
        //    barcode.Type = BarcodeType.EAN13;

        //    /*
        //       EAN 13 Valid data char set:
        //                0, 1, 2, 3, 4, 5, 6, 7, 8, 9 (Digits)

        //       EAN 13 Valid data length: 12 digits only, excluding the last checksum digit
        //    */
        //    barcode.Data = dataBarcode;
        //    barcode.AddCheckSum = true;            
        //    // for EAN13 with supplement data (2 or 5 digits)
        //    /*
        //    barcode.SupData = "12";
        //    // supplement bar height vs bar height ratio
        //    barcode.SupHeight = 0.8f;
        //    // space between barcode and supplement barcode (in pixel)
        //    barcode.SupSpace = 15;
        //    */            
        //    // Barcode Size Related Settings
        //    barcode.UOM = UnitOfMeasure.PIXEL;            
        //    barcode.X = 1;
        //    barcode.Y = 40;
        //    barcode.LeftMargin = 0;
        //    barcode.RightMargin = 0;
        //    barcode.TopMargin = 0;
        //    barcode.BottomMargin = 0;
        //    barcode.Resolution = 96;
        //    barcode.Rotate = Rotate.Rotate0;
        //    barcode.BarAlignment = AlignmentHori.Center;
        //    // Barcode Text Settings
        //    barcode.ShowText = true;
        //    barcode.TextFont = new Font("Arial", 9f, FontStyle.Regular);
        //    barcode.TextMargin = 6;            

        //    Image img= (Image)barcode.drawBarcode();
        //    float x = 0;

        //    if (align == 1)
        //    {
        //        x = 0;
        //    }
        //    else if (align == 2)
        //    {
        //        x = e.PageBounds.Width - img.Width;
        //        if (x < 0)
        //        {
        //            x = 0;
        //        }
        //        x = x / 2;
        //    }
        //    else
        //    {
        //        x = e.PageBounds.Width - img.Width;
        //        if (x<0)
        //        {
        //            x = 0;
        //        }
        //    }
        //    e.Graphics.DrawImage(img, x, y);
        //    y += img.Height + 2;
        //    return y;
        //}
        //public float DrawBarcode(string dataBarcode, System.Drawing.Printing.PrintPageEventArgs e, float y, int align)
        //{
        //    //if (dataBarcode.Length != 12)
        //    //{
        //    //    y = DrawString("", e, new Font("Arial", 11), y, 1);
        //    //    return y;
        //    //}
        //    //Barcode.Ean13 ean13 = new Barcode.Ean13(dataBarcode);
        //    ////ean13.Width = 80;
        //    ////ean13.Height = 40;
        //    //float x = 0;

        //    //if (align == 1)
        //    //{
        //    //    x = 0;
        //    //}
        //    //else if (align == 2)
        //    //{
        //    //    x = e.PageBounds.Width - ean13.Width;
        //    //    if (x < 0)
        //    //    {
        //    //        x = 0;
        //    //    }
        //    //    x = x / 2;
        //    //}
        //    //else
        //    //{
        //    //    x = e.PageBounds.Width - ean13.Width;
        //    //    if (x < 0)
        //    //    {
        //    //        x = 0;
        //    //    }
        //    //}
        //    //ean13.DrawEan13Barcode(e.Graphics, new Point((int)x, (int)y));
        //    ////Image img = ean13.CreateBitmap();
        //    ////e.Graphics.DrawImage(img, 0, 0);
        //    ////e.Graphics.DrawImage(img, x, y);
        //    //y += ean13.Height + 2;
        //    ////ean13.DrawEan13Barcode(e.Graphics, new Point(0,0));
        //    //return y;
        //}
        //public float DrawBarcode1(string dataBarcode, System.Drawing.Printing.PrintPageEventArgs e, float y, int align)
        //{
        //    //Linear ean128 = new Linear();

        //    //// Barcode data to encode
        //    //ean128.Data = "ONBARCODE";
        //    //// Barcode symbology type
        //    //ean128.Type = BarcodeType.EAN128;
        //    //// Apply checksum digit for EAN-128 / GS1-128
        //    //ean128.AddCheckSum = true;

        //    ///*
        //    // * Barcode Image Related Settings
        //    // */
        //    //// Unit of meature for all size related setting in the library. 
        //    //ean128.UOM = UnitOfMeasure.PIXEL;
        //    //// Bar module width (X), default is 1 pixel;
        //    //ean128.X = 1;
        //    //// Bar module height (Y), default is 60 pixel;
        //    //ean128.Y = 60;
        //    //// Barcode image left, right, top, bottom margins. Defaults are 0.
        //    //ean128.LeftMargin = 0;
        //    //ean128.RightMargin = 0;
        //    //ean128.TopMargin = 0;
        //    //ean128.BottomMargin = 0;
        //    //// Image resolution in dpi, default is 72 dpi.
        //    //ean128.Resolution = 72;
        //    //// Created barcode orientation. 4 options are: facing left, facing right, facing bottom, and facing top
        //    //ean128.Rotate = Rotate.Rotate0;

        //    ///*
        //    // * Linear barcodes human readable text styles
        //    // */
        //    //// Display human readable text under the barcode
        //    //ean128.ShowText = true;
        //    //// Display checksum digit at the end of barcode data.
        //    //ean128.ShowCheckSumChar = true;
        //    //// Human readable text font size, font family and style
        //    //ean128.TextFont = new Font("Arial", 9f, FontStyle.Regular);
        //    //// Space between barcode and text. Default is 6 pixel.
        //    //ean128.TextMargin = 6;
        //    //Image img = (Image)ean128.drawBarcode();
        //    //float x = 0;

        //    //if (align == 1)
        //    //{
        //    //    x = 0;
        //    //}
        //    //else if (align == 2)
        //    //{
        //    //    x = e.PageBounds.Width - img.Width;
        //    //    if (x < 0)
        //    //    {
        //    //        x = 0;
        //    //    }
        //    //    x = x / 2;
        //    //}
        //    //else
        //    //{
        //    //    x = e.PageBounds.Width - img.Width;
        //    //    if (x < 0)
        //    //    {
        //    //        x = 0;
        //    //    }
        //    //}
        //    //e.Graphics.DrawImage(img, x, y);
        //    //y += img.Height + 2;
        //    //return y;
        //}
        public float DrawMessenge(string s, System.Drawing.Printing.PrintPageEventArgs e, System.Drawing.Font font, float y)
        {
            while (s.Contains("  "))
            {
                s = s.Replace("  ", " ");
            }
            string[] list = s.Split(' ');
            string resuilt = "";
            for (int i = 0; i < list.Length; i++)
            //foreach (string data in list)
            {
                string data = list[i];
                //resuilt += data;
                if (e.Graphics.MeasureString(resuilt + " " + data, font).Width > e.PageBounds.Width)
                {
                    y = DrawString(resuilt, e, font, y, 1, false,false);
                    resuilt = data;
                }
                else
                {
                    resuilt += data + " ";
                    if (i == (list.Length - 1))
                    {
                        y = DrawString(resuilt, e, font, y, 1, false,false);
                    }
                }
            }
            SizeF size = e.Graphics.MeasureString(s, font);
            int x = (int)size.Width;
            return y;
        }
        public void CanCelPrint()
        {
        }
        public class BitmapData
        {
            public BitArray Dots
            {
                get;
                set;
            }

            public int Height
            {
                get;
                set;
            }

            public int Width
            {
                get;
                set;
            }
        }
        public BitmapData GetBitmapData(string bmpFileName)
        {
            using (var bitmap = (Bitmap)Bitmap.FromFile(bmpFileName))
            {
                var threshold = 127;
                var index = 0;
                double multiplier = 570; // this depends on your printer model. for Beiyang you should use 1000
                double scale = (double)(multiplier / (double)bitmap.Width);
                int xheight = (int)(bitmap.Height * scale);
                int xwidth = (int)(bitmap.Width * scale);
                var dimensions = xwidth * xheight;
                var dots = new BitArray(dimensions);

                for (var y = 0; y < xheight; y++)
                {
                    for (var x = 0; x < xwidth; x++)
                    {
                        var _x = (int)(x / scale);
                        var _y = (int)(y / scale);
                        var color = bitmap.GetPixel(_x, _y);
                        var luminance = (int)(color.R * 0.3 + color.G * 0.59 + color.B * 0.11);
                        dots[index] = (luminance < threshold);
                        index++;
                    }
                }

                return new BitmapData()
                {
                    Dots = dots,
                    Height = (int)(bitmap.Height * scale),
                    Width = (int)(bitmap.Width * scale)
                };
            }
        }
        public string GetLogo(string files)
        {
            string logo = "";
            if (!File.Exists(files))
                return null;
            BitmapData data = GetBitmapData(files);
            BitArray dots = data.Dots;
            byte[] width = BitConverter.GetBytes(data.Width);

            int offset = 0;
            MemoryStream stream = new MemoryStream();
            BinaryWriter bw = new BinaryWriter(stream);

            bw.Write((char)0x1B);
            bw.Write('@');

            bw.Write((char)0x1B);
            bw.Write('3');
            bw.Write((byte)24);

            while (offset < data.Height)
            {
                bw.Write((char)0x1B);
                bw.Write('*');         // bit-image mode
                bw.Write((byte)33);    // 24-dot double-density
                bw.Write(width[0]);  // width low byte
                bw.Write(width[1]);  // width high byte

                for (int x = 0; x < data.Width; ++x)
                {
                    for (int k = 0; k < 3; ++k)
                    {
                        byte slice = 0;
                        for (int b = 0; b < 8; ++b)
                        {
                            int y = (((offset / 8) + k) * 8) + b;
                            // Calculate the location of the pixel we want in the bit array.
                            // It'll be at (y * width) + x.
                            int i = (y * data.Width) + x;

                            // If the image is shorter than 24 dots, pad with zero.
                            bool v = false;
                            if (i < dots.Length)
                            {
                                v = dots[i];
                            }
                            slice |= (byte)((v ? 1 : 0) << (7 - b));
                        }

                        bw.Write(slice);
                    }
                }
                offset += 24;
                bw.Write((char)0x0A);
            }
            // Restore the line spacing to the default of 30 dots.
            bw.Write((char)0x1B);
            bw.Write('3');
            bw.Write((byte)30);

            bw.Flush();
            byte[] bytes = stream.ToArray();
            string tt = Encoding.Default.GetString(bytes);
            return tt;
        }
    }
}
