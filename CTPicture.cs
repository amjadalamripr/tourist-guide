
using System;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.ComponentModel;
using System.Collections;
using System.Data;

namespace TouristGuide
{
 
    public class CTPicture : CMainTable
    {
        private int _PictureId;
    private string _picture;
    private int _PositionId;
    private string _Title;
 


    public int PictureId
    {
        get { return _PictureId; }
        set { _PictureId = value; }
    }

    public string picture
    {
        get { return _picture; }
        set { _picture = value; }
    }

    public int PositionId
    {
        get { return _PositionId; }
        set { _PositionId = value; }
    }

    public string Title
    {
        get { return _Title; }
        set { _Title = value; }
    }
 

    protected override bool LoadProperties2List(string userTypeofoperation)
    {
        SortedList SL = null;
        SL = new SortedList();
        SL.Add("@check", userTypeofoperation);
        SL.Add("@PictureId", PictureId);
        SL.Add("@picture", picture);
        SL.Add("@PositionId", PositionId);
        SL.Add("@Title", Title);
 


        procedureName = "dbo.PTPicture";
        if (db.RunProcedure(procedureName, SL) == 1)
        {
            return true;
        }
        else
        {
            return false;
        }

    }

    public string insertMethod()
    {

        return ins();
    }
    private string ins()
    {
        try
        {
            if (Add())
            {
                return "saved..";
            }
            else
            {
                return "Not save";
            }
        }
        catch (Exception ex)
        {
            return "Not save";
        }
    }

    public string updatesMethod()
    {
        try
        {
            if (Update())
            {
                return "updateuser";
            }
            else
            {
                return "Can not UpuserName";
            }
        }
        catch (Exception ex)
        {
            return "Can not UpuserName";
        }

    }
    public string deleteMethod()
    {
        return use_delete();
    }
    private string use_delete()
    {
        try
        {
            if (Delete())
            {
                return "Deleted";
            }
            else
            {
                return "Can not delete";
            }
        }
        catch (Exception ex)
        {
            return ex.ToString();
        }
    }
    public int count(string vuserName)
    {
        string query = "select count(*)  from TPicture where userName= '" + vuserName + "'";
        DataTable t = db.RunQuery(query);
        if (t.Rows.Count > 0)
            return Convert.ToInt32(t.Rows[0][0].ToString());
        else
            return 0;
    }
        public int getmax()
        {
            string query = "select isnull(max(PictureId),0)  from TPicture ";
            DataTable t = db.RunQuery(query);
            if (t.Rows.Count > 0)
                return Convert.ToInt32(t.Rows[0][0].ToString());
            else
                return 0;
        }

        public DataTable searchQuery(string query)
    {
        try
        {
            return db.RunQuery(query);
        }
        catch (Exception ex)
        {
            return new DataTable();
        }
    }
    public void load(int id)
    {
        string query;
        query = string.Format("SELECT *  FROM TPicture where PictureId = {0}", id);
        DataTable t = db.RunQuery(query);
        if (t.Rows.Count > 0)
        {
            this.PictureId = Convert.ToInt32(t.Rows[0][0].ToString());
            this.picture = t.Rows[0][1].ToString();
            this.PositionId = Convert.ToInt32(t.Rows[0][2].ToString());
                this.Title = t.Rows[0][3].ToString();
 


        }
    }
    

}

}