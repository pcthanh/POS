﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ServicePOS.Model;

namespace ServicePOS
{
    public interface IUserService:IDisposable
    {
        IEnumerable<DepartmentModel> GetListDepartment();
        int SaveDataDeparment(DepartmentModel data);
        int RemoveDepartment(int departmentid, int userid);

        IEnumerable<SubMenuModel> GetSubMenuByDepartment(int departmentid);
        IEnumerable<SubMenuModel> GetAllListSubMenuByDepartment(int departmentid);
        int SaveMapPermission(List<SubMenuModel> data, int departmentid, int userid);

        IEnumerable<StaffModel> GetListStaff();
        int SaveDataStaff(StaffModel data);
        int RemoveStaff(int staffid, int userid);
        IEnumerable<StaffModel> getStaffById(int id);
    }
}
