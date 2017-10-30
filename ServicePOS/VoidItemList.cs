using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ServicePOS.Model;
using ModelPOS;
using ModelPOS.ModelEntity;
using ServicePOS;

namespace ServicePOS
{
   public class VoidItemList:IVoidItem
    {
       private POSEZ2UEntities _context;
        public VoidItemList()
        {
            _context = new POSEZ2UEntities();
        }

        public VoidItemList(POSEZ2UEntities context)
        {
            _context = context;
        }
        public void SetProxyCreationEnabled(bool proxyCreationEnabled)
        {
            _context.Configuration.ProxyCreationEnabled = proxyCreationEnabled;
        }
        public IEnumerable<Model.VoidItemModel> getVoidItem(DateTime time)
        {
            var data = _context.VOID_ITEM_HISTORY.Where(item => item.CreateDate.Year == time.Year && item.CreateDate.Month == time.Month && item.CreateDate.Day == time.Day)
                .Select(item => new VoidItemModel
                {
                    Staff = item.Staff,
                    OrderId = item.OrderID.ToString(),
                    ItemName =item.ItemName,
                    Price=item.Total.ToString(),
                    Time = item.CreateDate.ToString(),
                    Admin = item.Admin
                });
            return data;
        }

        #region Dispose
        private bool disposed = false;
        protected virtual void Dispose(bool disposing)
        {
            if (!this.disposed)
            {
                if (disposing)
                {
                    // code is here
                    _context.Dispose();
                }
            }
            this.disposed = true;
        }

        public void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(this);
        }
        #endregion
    }
}
