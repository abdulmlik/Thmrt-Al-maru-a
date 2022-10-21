using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel;
using Prism.Commands;
using Prism.Mvvm;
using System.Windows;
using Microsoft.Win32;
using AL_Zakat_Fund_System.Views;
using AL_Zakat_Fund_System.Views.Employe;
using AL_Zakat_Fund_System.Models;
using AL_Zakat_Fund_System.Views.UserControlBackground;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using System.Windows.Input;
using AL_Zakat_Fund_System.ViewModels.Employe;

namespace AL_Zakat_Fund_System.ViewModels
{
    class MainWindowViewModel : BindableBase
    {
        #region private Member

        private string _EmpName;

        public readonly Window mWindow;
        private object _Page;

        private Cursor _Cursor;

        #region Button SideBar ,When Click
        private Thickness ZeroBorderThickness = new Thickness(0);
        private Thickness LeftBorderThickness = new Thickness(0, 0, 10, 0);
        private Thickness _OpenAccountBorderThickness;
        private Thickness _ViewAccountBorderThickness;
        private Thickness _OpenRecordBorderThickness;
        private Thickness _ViewRecordBorderThickness;
        private Thickness _DeliverRecordBorderThickness;
        private Thickness _ViewFollowUpBorderThickness;
        private Thickness _AddNewZakatBorderThickness;
        private Thickness _ViewZakatBorderThickness;
        private Thickness _CreateAuthorizeExpenditureBorderThickness;
        private Thickness _ViewAuthorizeExpenditureBorderThickness;
        private Thickness _ViewFollowUpObserverBorderThickness;
        private Thickness _ViewAlertBorderThickness;
        private Thickness _TransferZakatBorderThickness;
        #endregion

        #region User Priv
        private Visibility _Collector;
        private Visibility _Courier;
        private Visibility _Scribe;
        private Visibility _Observer;
        private Visibility _Supervisor;
        private Visibility _SuperAdmin;


        // permissions
        #region menu list
        private Visibility _DatabaseBackup = Visibility.Visible;
        private Visibility _DatabaseRestore = Visibility.Visible;
        private Visibility _ContactStatusVisibility = Visibility.Visible;
        private Visibility _SwitchView = Visibility.Collapsed;
        #endregion

        #region AccountPoor
        private Visibility _PageViewAccountPoor;
        private Visibility _PageOpenAccountPoor;
        private Visibility _PageEidtAccountPoor;
        private Visibility _PagedeleteAccountPoor;
        private Visibility _ReportApplicant;
        private Visibility _ReportAssistance;
        #endregion

        #region RecordPoor
        private Visibility _PageViweRecordPoor;
        private Visibility _PageOpenRecordPoor;
        private Visibility _PageEditRecordPoor;
        private Visibility _PageDeleteRecordPoor;
        #endregion

        #region DeliverRecord
        private Visibility _PageViweDeliverRecord;
        private Visibility _PageOpenDeliverRecord;
        private Visibility _PageEditDeliverRecord;
        private Visibility _PageDeleteDeliverRecord;
        private Visibility _ReportSocialResearch;
        #endregion

        #region ExchangePermission
        private Visibility _PageViweExchangePermission;
        private Visibility _PageOpenExchangePermission;
        private Visibility _PageEditExchangePermission;
        private Visibility _PageDeletExchangePermission;
        private Visibility _ReportExpenses;
        #endregion

        #region Zakat
        private Visibility _PageViweZakat;
        private Visibility _PageOpenZakat;
        private Visibility _PageEditZakat;
        private Visibility _PageDeletZakat;
        private Visibility _PageTransferZakat;
        private Visibility _ReportNumberZakat;
        private Visibility _ReportCollectZakat;
        private Visibility _ReportZakat;
        #endregion

        #region PageViewFollowUpDataObserver
        private Visibility _PageViewFollowUpDataObserver;
        #endregion

        #region Employes
        private Visibility _PageEmployeList;
        private Visibility _PageNewEmploye;
        private Visibility _PageEidtEmploye;
        private Visibility _PageDeletEmploye;
        private Visibility _ReportEmployes;
        #endregion

        #endregion

        #region reason not use this method because they causes slow startup

        //private OpenAccountPoor PageOAP = new OpenAccountPoor();
        //private OpenRecordPoor PageORP = new OpenRecordPoor();
        //private AddNewZakat PageANZ = new AddNewZakat();
        //private CreateExchangePermission PageCEP = new CreateExchangePermission();
        //private DeliverRecord PageDR = new DeliverRecord();

        //private ViewAccountData PageVAD = new ViewAccountData();
        //private ViewExchangePermissionData PageVEPD = new ViewExchangePermissionData();
        //private ViewFollowUpData PageVFD = new ViewFollowUpData();
        //private ViewFollowUpDataObserver PageVFDO = new ViewFollowUpDataObserver();
        //private ViewRecordData PageVRD = new ViewRecordData();
        //private ViewZakatData PageVZD = new ViewZakatData();

        #endregion

        #region Page Content

        #region add pages 
        private OpenAccountPoor PageOAP;
        private OpenRecordPoor PageORP;
        private AddNewZakat PageANZ;
        private CreateExchangePermission PageCEP;
        private DeliverRecord PageDR;
        #endregion

        #region view pages control
        private ViewAccountData PageVAD;
        private ViewExchangePermissionData PageVEPD;
        private ViewFollowUpData PageVFD;
        private ViewFollowUpDataObserver PageVFDO;
        private ViewRecordData PageVRD;
        private ViewZakatData PageVZD;

        private TransferZakat PageTZD;


        private EmployeList PageEL; //PageEmployeList
        #endregion

        #endregion

        #endregion

        #region private function

        private void GetPriv(int priv)
        {
            SuperAdmin = Supervisor = SwitchView = Visibility.Collapsed;
            PageEmployeList =
                PageNewEmploye =
                PageEidtEmploye=
                PageDeletEmploye =
                ReportEmployes= Visibility.Collapsed;
            switch (priv)
            {
                case 1:
                    SelectPage(priv);
                    break;
                case 2:
                    SelectPage(priv);
                    break;
                case 3:
                    SelectPage(priv);
                    break;
                case 4:
                    SelectPage(priv);
                    break;

                case 10:
                    SwitchView = Supervisor = Visibility.Visible;
                    PageEmployeList =
                PageNewEmploye =
                PageEidtEmploye =
                PageDeletEmploye =
                ReportEmployes = Visibility.Visible;
                    SelectPage(3);
                    break;

                case 11:
                    SwitchView = SuperAdmin = Supervisor = Visibility.Visible; PageEmployeList =
                 PageNewEmploye =
                 PageEidtEmploye =
                 PageDeletEmploye =
                 ReportEmployes = Visibility.Visible;
                    SelectPage(3);
                    break;
            }

        }

        public void SelectPage(int priv)
        {
            Collector = Courier = Scribe = Observer = Visibility.Collapsed;
            PageViweZakat = PageOpenZakat = PageEditZakat = PageDeletZakat = PageTransferZakat = ReportNumberZakat = ReportCollectZakat = ReportZakat = Visibility.Collapsed;
            PageViweExchangePermission = PageOpenExchangePermission = PageEditExchangePermission = PageDeletExchangePermission = ReportExpenses = Visibility.Collapsed;
            PageViewAccountPoor = PageOpenAccountPoor = PageEidtAccountPoor = PagedeleteAccountPoor = ReportApplicant = ReportAssistance = Visibility.Collapsed;
            PageViweRecordPoor = PageOpenRecordPoor = PageEditRecordPoor = PageDeleteRecordPoor = Visibility.Collapsed;
            PageViweDeliverRecord = PageOpenDeliverRecord = PageEditDeliverRecord = PageDeleteDeliverRecord = ReportSocialResearch = Visibility.Collapsed;
            PageViewFollowUpDataObserver = Visibility.Collapsed;


            switch (priv)
            {
                case 1:
                    Page = new mainCollector();// main page for user
                    Collector = Visibility.Visible;
                    PageViweZakat = PageOpenZakat = PageEditZakat = PageDeletZakat = PageTransferZakat = ReportNumberZakat = ReportCollectZakat = ReportZakat = Visibility.Visible;
                    break;
                case 2:
                    Page = new mainCourier();
                    Courier = Visibility.Visible;
                    PageViweExchangePermission = PageOpenExchangePermission = PageEditExchangePermission = PageDeletExchangePermission = ReportExpenses = Visibility.Visible;
                    break;
                case 3:
                    Page = new mainScribe();
                    Scribe = Visibility.Visible;
                    PageViewAccountPoor = PageOpenAccountPoor = PageEidtAccountPoor = PagedeleteAccountPoor = ReportApplicant = ReportAssistance = Visibility.Visible;
                    PageViweRecordPoor = PageOpenRecordPoor = PageEditRecordPoor = PageDeleteRecordPoor = Visibility.Visible;
                    PageViweDeliverRecord = PageOpenDeliverRecord = PageEditDeliverRecord = PageDeleteDeliverRecord = ReportSocialResearch = Visibility.Visible;
                    break;
                case 4:
                    Page = new mainObserver();
                    Observer = Visibility.Visible;
                    PageViewFollowUpDataObserver = Visibility.Visible;
                    break;
            }

            }

        public void ZeroThickness()
        {
            OpenAccountBorderThickness = ZeroBorderThickness;
            ViewAccountBorderThickness = ZeroBorderThickness;
            OpenRecordBorderThickness = ZeroBorderThickness;
            ViewRecordBorderThickness = ZeroBorderThickness;
            DeliverRecordBorderThickness = ZeroBorderThickness;
            ViewFollowUpBorderThickness = ZeroBorderThickness;
            AddNewZakatBorderThickness = ZeroBorderThickness;
            ViewZakatBorderThickness = ZeroBorderThickness;
            CreateAuthorizeExpenditureBorderThickness = ZeroBorderThickness;
            ViewAuthorizeExpenditureBorderThickness = ZeroBorderThickness;
            ViewFollowUpObserverBorderThickness = ZeroBorderThickness;
            ViewAlertBorderThickness = ZeroBorderThickness;
            TransferZakatBorderThickness = ZeroBorderThickness;
        }

        public void OnWindowClosing(object sender, CancelEventArgs e)
        {
            // Handle closing logic, set e.Cancel as needed
            try
            {
                Properties.Settings.Default.EmpName = "";
                Properties.Settings.Default.EmPassword = "";
                Properties.Settings.Default.EmpNo = 0;
                Properties.Settings.Default.EmpPriv = 0;
                Properties.Settings.Default.Save();
            }
            catch
            {
                //e.Cancel = true;
            }
            finally
            {
            }
        }

        #endregion

        #region public properties
        public string EmpName
        {
            get { return _EmpName; }
            set { SetProperty(ref _EmpName, value); }
        }
        public object Page
        {
            get { return _Page; }
            set { SetProperty(ref _Page, value); }
        }
        public Cursor Cursor
        {
            get { return _Cursor; }
            set { SetProperty(ref _Cursor, value); }
        }


        #region Button SideBar ,When Click
        public Thickness OpenAccountBorderThickness
        {
            get { return _OpenAccountBorderThickness; }
            set { SetProperty(ref _OpenAccountBorderThickness, value); }
        }
        public Thickness ViewAccountBorderThickness
        {
            get { return _ViewAccountBorderThickness; }
            set { SetProperty(ref _ViewAccountBorderThickness, value); }
        }
        public Thickness OpenRecordBorderThickness
        {
            get { return _OpenRecordBorderThickness; }
            set { SetProperty(ref _OpenRecordBorderThickness, value); }
        }
        public Thickness ViewRecordBorderThickness
        {
            get { return _ViewRecordBorderThickness; }
            set { SetProperty(ref _ViewRecordBorderThickness, value); }
        }
        public Thickness DeliverRecordBorderThickness
        {
            get { return _DeliverRecordBorderThickness; }
            set { SetProperty(ref _DeliverRecordBorderThickness, value); }
        }
        public Thickness ViewFollowUpBorderThickness
        {
            get { return _ViewFollowUpBorderThickness; }
            set { SetProperty(ref _ViewFollowUpBorderThickness, value); }
        }
        public Thickness AddNewZakatBorderThickness
        {
            get { return _AddNewZakatBorderThickness; }
            set { SetProperty(ref _AddNewZakatBorderThickness, value); }
        }
        public Thickness ViewZakatBorderThickness
        {
            get { return _ViewZakatBorderThickness; }
            set { SetProperty(ref _ViewZakatBorderThickness, value); }
        }
        public Thickness CreateAuthorizeExpenditureBorderThickness
        {
            get { return _CreateAuthorizeExpenditureBorderThickness; }
            set { SetProperty(ref _CreateAuthorizeExpenditureBorderThickness, value); }
        }
        public Thickness ViewAuthorizeExpenditureBorderThickness
        {
            get { return _ViewAuthorizeExpenditureBorderThickness; }
            set { SetProperty(ref _ViewAuthorizeExpenditureBorderThickness, value); }
        }
        public Thickness ViewFollowUpObserverBorderThickness
        {
            get { return _ViewFollowUpObserverBorderThickness; }
            set { SetProperty(ref _ViewFollowUpObserverBorderThickness, value); }
        }
        public Thickness ViewAlertBorderThickness
        {
            get { return _ViewAlertBorderThickness; }
            set { SetProperty(ref _ViewAlertBorderThickness, value); }
        }
        public Thickness TransferZakatBorderThickness
        {
            get { return _TransferZakatBorderThickness; }
            set { SetProperty(ref _TransferZakatBorderThickness, value); }
        }
        #endregion

        #region User Priv
        public Visibility Collector
        {
            get { return _Collector; }
            set { SetProperty(ref _Collector, value); }
        }
        public Visibility Courier
        {
            get { return _Courier; }
            set { SetProperty(ref _Courier, value); }
        }
        public Visibility Scribe
        {
            get { return _Scribe; }
            set { SetProperty(ref _Scribe, value); }
        }
        public Visibility Observer
        {
            get { return _Observer; }
            set { SetProperty(ref _Observer, value); }
        }
        public Visibility Supervisor
        {
            get { return _Supervisor; }
            set { SetProperty(ref _Supervisor, value); }
        }
        public Visibility SuperAdmin
        {
            get { return _SuperAdmin; }
            set { SetProperty(ref _SuperAdmin, value); }
        }


        #region menu list
        public Visibility DatabaseBackup { get => _DatabaseBackup; set => SetProperty(ref _DatabaseBackup, value); }
        public Visibility DatabaseRestore { get => _DatabaseRestore; set => SetProperty(ref _DatabaseRestore, value); }
        public Visibility ContactStatusVisibility { get => _ContactStatusVisibility; set => SetProperty(ref _ContactStatusVisibility, value); }
        public Visibility SwitchView { get => _SwitchView; set => SetProperty(ref _SwitchView, value); }
        #endregion

        #region AccountPoor
        public Visibility PageViewAccountPoor { get => _PageViewAccountPoor; set => SetProperty(ref _PageViewAccountPoor, value); }
        public Visibility PageOpenAccountPoor { get => _PageOpenAccountPoor; set => SetProperty(ref _PageOpenAccountPoor, value); }
        public Visibility PageEidtAccountPoor { get => _PageEidtAccountPoor; set => SetProperty(ref _PageEidtAccountPoor, value); }
        public Visibility PagedeleteAccountPoor { get => _PagedeleteAccountPoor; set => SetProperty(ref _PagedeleteAccountPoor, value); }
        public Visibility ReportApplicant { get => _ReportApplicant; set => SetProperty(ref _ReportApplicant, value); }
        public Visibility ReportAssistance { get => _ReportAssistance; set => SetProperty(ref _ReportAssistance, value); }
        #endregion

        #region RecordPoor
        public Visibility PageViweRecordPoor { get => _PageViweRecordPoor; set => SetProperty(ref _PageViweRecordPoor, value); }
        public Visibility PageOpenRecordPoor { get => _PageOpenRecordPoor; set => SetProperty(ref _PageOpenRecordPoor, value); }
        public Visibility PageEditRecordPoor { get => _PageEditRecordPoor; set => SetProperty(ref _PageEditRecordPoor, value); }
        public Visibility PageDeleteRecordPoor { get => _PageDeleteRecordPoor; set => SetProperty(ref _PageDeleteRecordPoor, value); }
        #endregion

        #region DeliverRecord
        public Visibility PageViweDeliverRecord { get => _PageViweDeliverRecord; set => SetProperty(ref _PageViweDeliverRecord, value); }
        public Visibility PageOpenDeliverRecord { get => _PageOpenDeliverRecord; set => SetProperty(ref _PageOpenDeliverRecord, value); }
        public Visibility PageEditDeliverRecord { get => _PageEditDeliverRecord; set => SetProperty(ref _PageEditDeliverRecord, value); }
        public Visibility PageDeleteDeliverRecord { get => _PageDeleteDeliverRecord; set => SetProperty(ref _PageDeleteDeliverRecord, value); }
        public Visibility ReportSocialResearch { get => _ReportSocialResearch; set => SetProperty(ref _ReportSocialResearch, value); }

        #endregion

        #region ExchangePermission
        public Visibility PageViweExchangePermission { get => _PageViweExchangePermission; set => SetProperty(ref _PageViweExchangePermission, value); }
        public Visibility PageOpenExchangePermission { get => _PageOpenExchangePermission; set => SetProperty(ref _PageOpenExchangePermission, value); }
        public Visibility PageEditExchangePermission { get => _PageEditExchangePermission; set => SetProperty(ref _PageEditExchangePermission, value); }
        public Visibility PageDeletExchangePermission { get => _PageDeletExchangePermission; set => SetProperty(ref _PageDeletExchangePermission, value); }
        public Visibility ReportExpenses { get => _ReportExpenses; set => SetProperty(ref _ReportExpenses, value); }
        #endregion

        #region Zakat
        public Visibility PageViweZakat { get => _PageViweZakat; set => SetProperty(ref _PageViweZakat, value); }
        public Visibility PageOpenZakat { get => _PageOpenZakat; set => SetProperty(ref _PageOpenZakat, value); }
        public Visibility PageEditZakat { get => _PageEditZakat; set => SetProperty(ref _PageEditZakat, value); }
        public Visibility PageDeletZakat { get => _PageDeletZakat; set => SetProperty(ref _PageDeletZakat, value); }
        public Visibility PageTransferZakat { get => _PageTransferZakat; set => SetProperty(ref _PageTransferZakat, value); }
        public Visibility ReportNumberZakat { get => _ReportNumberZakat; set => SetProperty(ref _ReportNumberZakat, value); }
        public Visibility ReportCollectZakat { get => _ReportCollectZakat; set => SetProperty(ref _ReportCollectZakat, value); }
        public Visibility ReportZakat { get => _ReportZakat; set => SetProperty(ref _ReportZakat, value); }
        #endregion

        #region PageViewFollowUpDataObserver
        public Visibility PageViewFollowUpDataObserver { get => _PageViewFollowUpDataObserver; set => SetProperty(ref _PageViewFollowUpDataObserver, value); }
        #endregion

        #region Employes
        public Visibility PageEmployeList { get => _PageEmployeList; set => SetProperty(ref _PageEmployeList, value); }
        public Visibility PageNewEmploye { get => _PageNewEmploye; set => SetProperty(ref _PageNewEmploye, value); }
        public Visibility PageEidtEmploye { get => _PageEidtEmploye; set => SetProperty(ref _PageEidtEmploye, value); }
        public Visibility PageDeletEmploye { get => _PageDeletEmploye; set => SetProperty(ref _PageDeletEmploye, value); }
        public Visibility ReportEmployes { get => _ReportEmployes; set => SetProperty(ref _ReportEmployes, value); }
        #endregion

        #endregion

        #endregion

        #region Delegate Command

        #region add page Command
        public DelegateCommand PageOpenAccountPoorCommand { get; set; }
        public DelegateCommand PageOpenRecordPoorCommand { get; set; }
        public DelegateCommand PageAddNewZakatCommand { get; set; }
        public DelegateCommand PageCreateExchangePermissionCommand { get; set; }
        public DelegateCommand PageDeliverRecordCommand { get; set; }
        public DelegateCommand PageNewEmployeCommand { get; set; }
        #endregion

        #region file meun Command
        public DelegateCommand LogoutCommand { get; set; }
        public DelegateCommand ContactStatusCommand { get; set; }
        public DelegateCommand<string> GetPrivCommand { get; set; }
        public DelegateCommand CloseCommand { get; set; }
        public DelegateCommand DatabaseBackupCommand { get; set; }
        public DelegateCommand DatabaseRestoreCommand { get; set; }
        public DelegateCommand AboutCommand { get; set; }
        #endregion

        #region view page Command
        public DelegateCommand PageTransferZakatDataCommand { get; set; }

        public DelegateCommand PageViewAccountDataCommand { get; set; }
        public DelegateCommand PageViewExchangePermissionDataCommand { get; set; }
        public DelegateCommand PageViewFollowUpDataCommand { get; set; }
        public DelegateCommand PageViewFollowUpDataObserverCommand { get; set; }
        public DelegateCommand PageViewRecordDataCommand { get; set; }
        public DelegateCommand PageViewZakatDataCommand { get; set; }
        public DelegateCommand PageEmployeListCommand { get; set; }
        


        #endregion

        #region Report Window Command

        #region Report Zakat
        public DelegateCommand ReportZakatCommand { get; set; }
        public DelegateCommand ReportCollectZakatCommand { get; set; }
        public DelegateCommand ReportNumberZakatCommand { get; set; }
        #endregion

        #region Report Expenses
        public DelegateCommand ReportExpensesCommand { get; set; }
        #endregion

        #region Report Social Research
        public DelegateCommand ReportSocialResearchCommand { get; set; }
        #endregion

        #region Report Applicant
        public DelegateCommand ReportApplicantCommand { get; set; }
        #endregion

        #region Report Assistance
        public DelegateCommand ReportAssistanceCommand { get; set; }

        #endregion

        #endregion

        #endregion

        #region Execute and CanExecute Functions

        #region functions file meun

        #region LogOut
        private void LogOut()
        {
            Cursor saveCursor = Cursor;
            //Cursor = Cursors.Wait;
            Mouse.OverrideCursor = Cursors.Wait;

            Properties.Settings.Default.EmpName = "";
            Properties.Settings.Default.EmPassword = "";
            Properties.Settings.Default.EmpNo = 0;
            Properties.Settings.Default.EmpPriv = 0;
            Properties.Settings.Default.Save();

            loginWindow LWindow = new loginWindow();
            mWindow.Close();

            //Cursor = saveCursor;
            Mouse.OverrideCursor = saveCursor;

            LWindow.ShowDialog();
        }
        #endregion

        #region Contact Status
        private void ContactStatus()
        {
            Cursor saveCursor = Cursor;
            //Cursor = Cursors.Wait;
            Mouse.OverrideCursor = Cursors.Wait;

            if (DBConnection.ConnectionStatus())
            {
                MessageBox.Show("لا يوجد مشاكل في الاتصال بالخادم", "", MessageBoxButton.OK, MessageBoxImage.None,
                                MessageBoxResult.OK, MessageBoxOptions.RightAlign | MessageBoxOptions.RtlReading);
            }

            //Cursor = saveCursor;
            Mouse.OverrideCursor = saveCursor;
        }
        #endregion

        #region Get Priv
        private void GetPrivExecute(string sender)
        {
            Page = null;
            ZeroThickness();
            SelectPage(int.Parse(sender));
        }
        #endregion

        #region Close
        private void CloseExecute()
        {
            mWindow.Close();
        }
        #endregion

        #region Database Backup
        private void DatabaseBackupExecute()
        {
            SaveFileDialog FilePath = new SaveFileDialog
            {
                InitialDirectory = @"D:\",
                FileName = "ZakatDB_" + DateTime.Now.ToShortDateString().Replace('/', '-') + "_"
                                 + DateTime.Now.ToLongTimeString().Replace(':', '-').Replace("PM", "").Replace("AM", "").Trim(),
                Filter = "Text Files (*.bak)|*.bak|All Files|*.*"
            };

            bool? result = FilePath.ShowDialog();
            if (result == true)
            {
                Cursor saveCursor = Cursor;
                //Cursor = Cursors.Wait;
                Mouse.OverrideCursor = Cursors.Wait;
                try
                {
                    int succ = 0;
                    DBConnection.OpenConnection();

                    DBConnection.cmd.CommandType = CommandType.StoredProcedure;
                    DBConnection.cmd.CommandText = "sp_Backup";

                    DBConnection.cmd.Parameters.Add(new SqlParameter("@FilePath", SqlDbType.NVarChar,500));
                    DBConnection.cmd.Parameters.Add(new SqlParameter("@Success", SqlDbType.Int));
                    
                    DBConnection.cmd.Parameters["@FilePath"].Value = FilePath.FileName;

                    DBConnection.cmd.Parameters["@Success"].Direction = ParameterDirection.Output;

                    DBConnection.cmd.ExecuteNonQuery();

                    succ = (int)DBConnection.cmd.Parameters["@Success"].Value;


                    if (succ == 1)
                    {
                        MessageBox.Show("تم أخد النسخة الإحتياطية بنجاح");
                    }
                    else if (succ == 0)
                    {
                        throw new Exception("مشكلة في تنفيذ الاجراء المخزن الرجاء التأكد من اختيار قرص غير قرص C");
                    }
                }
                catch (Exception ex)
                {
                    MessageBox.Show("لم يتم أخد النسخة الإحتياطية " + Environment.NewLine + "الخطا :" + ex.Message.ToString(), "", MessageBoxButton.OK, MessageBoxImage.Error,
                                    MessageBoxResult.OK, MessageBoxOptions.RightAlign | MessageBoxOptions.RtlReading);
                }
                finally
                {
                    DBConnection.CloseConnection();
                }
                //Cursor = saveCursor;
                Mouse.OverrideCursor = saveCursor;
            }
        }
        private bool DatabaseBackupCanExecute()
        {
            return DBConnection.ConnectionStatus();
        }
        #endregion

        #region Database Restore
        private void DatabaseRestoreExecute()
        {
            OpenFileDialog FilePath = new OpenFileDialog
            {
                InitialDirectory = @"D:\",
                Filter = "Text Files (*.bak)|*.bak|All Files|*.*"
            };

            MessageBoxResult result1 = MessageBox.Show("لإسترجاع النسخة الإحتياطية الرجاء التأكد من إغلاق جميع الإتصالات بالسيرفر", "", MessageBoxButton.YesNo, MessageBoxImage.Question
                                                            , MessageBoxResult.No, MessageBoxOptions.RightAlign | MessageBoxOptions.RtlReading);
            if (result1 == MessageBoxResult.Yes)
            {
                bool? result = FilePath.ShowDialog();
                if (result == true)
                {
                    Cursor saveCursor = Cursor;
                    //Cursor = Cursors.Wait;
                    Mouse.OverrideCursor = Cursors.Wait;

                    
                    try
                    {
                        int succ = 0;
                        DBConnection.OpenConnection();

                        DBConnection.cmd.CommandType = CommandType.StoredProcedure;
                        DBConnection.cmd.CommandText = "sp_Restore";

                        DBConnection.cmd.Parameters.Add(new SqlParameter("@FilePath", SqlDbType.NVarChar, 255));
                        DBConnection.cmd.Parameters.Add(new SqlParameter("@Success", SqlDbType.Int));

                        DBConnection.cmd.Parameters["@FilePath"].Value = FilePath.FileName;

                        DBConnection.cmd.Parameters["@Success"].Direction = ParameterDirection.Output;

                        DBConnection.cmd.ExecuteNonQuery();

                        succ = (int)DBConnection.cmd.Parameters["@Success"].Value;

                        if (succ == 1)
                        {
                            MessageBox.Show("تم إسترجاع النسخة الإحتياطية بنجاح");
                        }
                        else if (succ == 0)
                        {
                            throw new Exception("مشكلة في تنفيذ الاجراء المخزن تأكد من إغلاق جميع الإتصالات بالسيرفر");
                        }
                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show("لم يتم إسترجاع النسخة الإحتياطية" + Environment.NewLine + "الخطا :" + ex.Message.ToString(), "", MessageBoxButton.OK, MessageBoxImage.Error,
                                        MessageBoxResult.OK, MessageBoxOptions.RightAlign | MessageBoxOptions.RtlReading);
                    }
                    finally
                    {
                        DBConnection.CloseConnection();
                    }
                    //Cursor = saveCursor;
                    Mouse.OverrideCursor = saveCursor;
                }
            }
        }
        private bool DatabaseRestoreCanExecute()
        {
            return DBConnection.ConnectionStatus() && Properties.Settings.Default.EmpPriv == 10;
        }
        #endregion

        #region about
        private void AboutExecute()
        {
            Cursor saveCursor = Cursor;
            Cursor = Cursors.Wait;

            AboutWindow PageRZ = new AboutWindow
            {
                Owner = mWindow
            };
            bool? result = PageRZ.ShowDialog();
            if (result == true)
            { }

            Cursor = saveCursor;
        }
        #endregion

        #endregion

        #region functions change content of pages
        private void PageOpenAccountPoorExecute()
        {
            Cursor saveCursor = Cursor;
            Cursor = Cursors.Wait;

            ZeroThickness();
            OpenAccountBorderThickness = LeftBorderThickness;
            //true if first opening program or when you press a Close
            if (PageOAP == null || PageOAP.Content == null) { PageOAP = new OpenAccountPoor(); }
            PageOAP.DataContext = new OpenAccountPoorViewModel(PageOAP, this);
            Page = PageOAP;

            Cursor = saveCursor;
        }
        private void PageOpenRecordPoorExecute()
        {
            Cursor saveCursor = Cursor;
            Cursor = Cursors.Wait;

            ZeroThickness();
            OpenRecordBorderThickness = LeftBorderThickness;
            if (PageORP == null || PageORP.Content == null) { PageORP = new OpenRecordPoor(); }
            PageORP.DataContext = new OpenRecordPoorViewModel(PageORP, this);
            Page = PageORP;

            Cursor = saveCursor;
        }
        private void PageAddNewZakatExecute()
        {
            Cursor saveCursor = Cursor;
            Cursor = Cursors.Wait;

            ZeroThickness();
            AddNewZakatBorderThickness = LeftBorderThickness;
            if (PageANZ == null || PageANZ.Content == null) { PageANZ = new AddNewZakat(); }
            PageANZ.DataContext = new AddNewZakatViewModel(PageANZ, this);
            Page = PageANZ;

            Cursor = saveCursor;
        }
        private void PageCreateExchangePermissionExecute()
        {
            Cursor saveCursor = Cursor;
            Cursor = Cursors.Wait;

            ZeroThickness();
            CreateAuthorizeExpenditureBorderThickness = LeftBorderThickness;
            if (PageCEP == null || PageCEP.Content == null) { PageCEP = new CreateExchangePermission(); }
            PageCEP.DataContext = new CreateExchangePermissionViewModel(PageCEP, this);
            Page = PageCEP;

            Cursor = saveCursor;
        }
        private void PageDeliverRecordExecute()
        {
            Cursor saveCursor = Cursor;
            Cursor = Cursors.Wait;

            ZeroThickness();
            DeliverRecordBorderThickness = LeftBorderThickness;
            if (PageDR == null || PageDR.Content == null) { PageDR = new DeliverRecord(); }
            PageDR.DataContext = new DeliverRecordViewModel(PageDR, this);
            Page = PageDR;

            Cursor = saveCursor;
        }
        private void PageViewAccountDataExecute()
        {
            Cursor saveCursor = Cursor;
            Cursor = Cursors.Wait;

            ZeroThickness();
            ViewAccountBorderThickness = LeftBorderThickness;
            PageVAD = new ViewAccountData();
            PageVAD.DataContext = new ViewAccountDataViewModel(PageVAD, this);
            Page = PageVAD;

            Cursor = saveCursor;
        }
        private void PageViewExchangePermissionDataExecute()
        {
            Cursor saveCursor = Cursor;
            Cursor = Cursors.Wait;

            ZeroThickness();
            ViewAuthorizeExpenditureBorderThickness = LeftBorderThickness;
            PageVEPD = new ViewExchangePermissionData();
            PageVEPD.DataContext = new ViewExchangePermissionDataViewModel(PageVEPD, this);
            Page = PageVEPD;

            Cursor = saveCursor;
        }
        private void PageViewFollowUpDataExecute()
        {
            Cursor saveCursor = Cursor;
            Cursor = Cursors.Wait;

            ZeroThickness();
            ViewFollowUpBorderThickness = LeftBorderThickness;
            PageVFD = new ViewFollowUpData();
            PageVFD.DataContext = new ViewFollowUpDataViewModel(PageVFD, this);
            Page = PageVFD;

            Cursor = saveCursor;
        }
        private void PageViewFollowUpDataObserverExecute()
        {
            Cursor saveCursor = Cursor;
            Cursor = Cursors.Wait;

            ZeroThickness();
            ViewFollowUpObserverBorderThickness = LeftBorderThickness;
            PageVFDO = new ViewFollowUpDataObserver();
            PageVFDO.DataContext = new ViewFollowUpDataObserverViewModel(PageVFDO, this);
            Page = PageVFDO;

            Cursor = saveCursor;
        }
        private void PageViewRecordDataExecute()
        {
            Cursor saveCursor = Cursor;
            Cursor = Cursors.Wait;

            ZeroThickness();
            ViewRecordBorderThickness = LeftBorderThickness;
            PageVRD = new ViewRecordData();
            PageVRD.DataContext = new ViewRecordDataViewModel(PageVRD, this);
            Page = PageVRD;

            Cursor = saveCursor;
        }
        private void PageViewZakatDataExecute()
        {
            Cursor saveCursor = Cursor;
            Cursor = Cursors.Wait;

            ZeroThickness();
            ViewZakatBorderThickness = LeftBorderThickness;
            PageVZD = new ViewZakatData();
            PageVZD.DataContext = new ViewZakatDataViewModel(PageVZD, this);
            Page = PageVZD;

            Cursor = saveCursor;
        }
        private void PageTransferZakatDataExecute()
        {
            Cursor saveCursor = Cursor;
            Cursor = Cursors.Wait;

            ZeroThickness();
            TransferZakatBorderThickness = LeftBorderThickness;
            PageTZD = new TransferZakat();
            PageTZD.DataContext = new TransferZakatViewModel(PageTZD, this);
            Page = PageTZD;

            Cursor = saveCursor;
        }
        private void PageEmployeListExecute()
        {
            Cursor saveCursor = Cursor;
            Cursor = Cursors.Wait;

            ZeroThickness();
            // TransferZakatBorderThickness = LeftBorderThickness;
            PageEL = new EmployeList();
            PageEL.DataContext = new EmployeListViewModel(PageEL, this);
            Page = PageEL;

            Cursor = saveCursor;
        }
        private void PageNewEmployeExecute()
        {
            Cursor saveCursor = Cursor;
            Cursor = Cursors.Wait;

            ZeroThickness();
            // TransferZakatBorderThickness = LeftBorderThickness;
            // PageNE = new NewEmploye();
            // PageNE.DataContext = new NewEmployeViewModel(PageNE, this);
            // Page = PageNE;

            Cursor = saveCursor;
        }

        #endregion

        #region Report Window

        #region Zakat
        private void ReportZakatExecute()
        {
            Cursor saveCursor = Cursor;
            Cursor = Cursors.Wait;

            ReportZakat PageRZ = new ReportZakat();
            PageRZ.DataContext = new ReportZakatViewModel(PageRZ);
            PageRZ.Owner = mWindow;
            bool? result = PageRZ.ShowDialog();
            if (result == true)
            { }

            Cursor = saveCursor;
        }
        private void ReportCollectZakatExecute()
        {
            Cursor saveCursor = Cursor;
            Cursor = Cursors.Wait;

            ReportCollectZakat PageRCZ = new ReportCollectZakat();
            PageRCZ.DataContext = new ReportCollectZakatViewModel(PageRCZ);
            PageRCZ.Owner = mWindow;
            bool? result = PageRCZ.ShowDialog();
            if (result == true)
            { }

            Cursor = saveCursor;
        }
        private void ReportNumberZakatExecute()
        {
            Cursor saveCursor = Cursor;
            Cursor = Cursors.Wait;

            ReportNumberZakat PageRNZ = new ReportNumberZakat();
            PageRNZ.DataContext = new ReportNumberZakatViewModel(PageRNZ);
            PageRNZ.Owner = mWindow;
            bool? result = PageRNZ.ShowDialog();
            if (result == true)
            { }

            Cursor = saveCursor;
        }
        #endregion

        #region Expenses 
        private void ReportExpensesExecute()
        {
            Cursor saveCursor = Cursor;
            Cursor = Cursors.Wait;

            ReportExpenses PageRE = new ReportExpenses();
            PageRE.DataContext = new ReportExpensesViewModel(PageRE);
            PageRE.Owner = mWindow;
            bool? result = PageRE.ShowDialog();
            if (result == true)
            { }

            Cursor = saveCursor;
        }
        #endregion

        #region Social Research
        private void ReportSocialResearchExecute()
        {
            Cursor saveCursor = Cursor;
            Cursor = Cursors.Wait;

            ReportSocialResearch PageRSR = new ReportSocialResearch();
            PageRSR.DataContext = new ReportSocialResearchViewModel(PageRSR);
            PageRSR.Owner = mWindow;
            bool? result = PageRSR.ShowDialog();
            if (result == true)
            { }

            Cursor = saveCursor;
        }
        #endregion

        #region Applicant
        private void ReportApplicantExecute()
        {
            Cursor saveCursor = Cursor;
            Cursor = Cursors.Wait;

            ReportApplicant PageRA = new ReportApplicant();
            PageRA.DataContext = new ReportApplicantViewModel(PageRA);
            PageRA.Owner = mWindow;
            bool? result = PageRA.ShowDialog();
            if (result == true)
            { }

            Cursor = saveCursor;
        }
        #endregion

        #region Assistance
        private void ReportAssistanceExecute()
        {
            Cursor saveCursor = Cursor;
            Cursor = Cursors.Wait;

            ReportAssistance PageRA = new ReportAssistance();
            PageRA.DataContext = new ReportAssistanceViewModel(PageRA);
            PageRA.Owner = mWindow;
            bool? result = PageRA.ShowDialog();
            if (result == true)
            { }

            Cursor = saveCursor;
        }
        #endregion

        #endregion

        #endregion

        #region Construct
        /// <summary>
        /// Default Construct
        /// </summary>
        /// <param name="window">Current Window</param>
        public MainWindowViewModel(Window window)
        {
            mWindow = window;

            Cursor = Cursors.Arrow;

            // Name Employee
            EmpName = Properties.Settings.Default.EmpName;

            // priv Employee
            GetPriv(Properties.Settings.Default.EmpPriv);

            // When close window call OnWindowClosing function
            mWindow.Closing += OnWindowClosing;



            //Create Commands
            PageOpenAccountPoorCommand = new DelegateCommand(PageOpenAccountPoorExecute);
            PageOpenRecordPoorCommand = new DelegateCommand(PageOpenRecordPoorExecute);
            PageAddNewZakatCommand = new DelegateCommand(PageAddNewZakatExecute);
            PageCreateExchangePermissionCommand = new DelegateCommand(PageCreateExchangePermissionExecute);
            PageDeliverRecordCommand = new DelegateCommand(PageDeliverRecordExecute);

            PageViewAccountDataCommand = new DelegateCommand(PageViewAccountDataExecute);
            PageViewExchangePermissionDataCommand = new DelegateCommand(PageViewExchangePermissionDataExecute);
            PageViewFollowUpDataCommand = new DelegateCommand(PageViewFollowUpDataExecute);
            PageViewFollowUpDataObserverCommand = new DelegateCommand(PageViewFollowUpDataObserverExecute);
            PageViewRecordDataCommand = new DelegateCommand(PageViewRecordDataExecute);
            PageViewZakatDataCommand = new DelegateCommand(PageViewZakatDataExecute);

            PageTransferZakatDataCommand = new DelegateCommand(PageTransferZakatDataExecute);

            PageEmployeListCommand = new DelegateCommand(PageEmployeListExecute);
            PageNewEmployeCommand = new DelegateCommand(PageNewEmployeExecute);
            
            LogoutCommand = new DelegateCommand(LogOut);
            ContactStatusCommand = new DelegateCommand(ContactStatus);
            GetPrivCommand = new DelegateCommand<string>(GetPrivExecute);
            CloseCommand = new DelegateCommand(CloseExecute);
            DatabaseBackupCommand = new DelegateCommand(DatabaseBackupExecute,DatabaseBackupCanExecute);
            DatabaseRestoreCommand = new DelegateCommand(DatabaseRestoreExecute, DatabaseRestoreCanExecute);
            AboutCommand = new DelegateCommand(AboutExecute);

            ReportZakatCommand = new DelegateCommand(ReportZakatExecute);
            ReportCollectZakatCommand = new DelegateCommand(ReportCollectZakatExecute);
            ReportNumberZakatCommand = new DelegateCommand(ReportNumberZakatExecute);
            
            ReportExpensesCommand = new DelegateCommand(ReportExpensesExecute);
            ReportSocialResearchCommand = new DelegateCommand(ReportSocialResearchExecute);
            ReportApplicantCommand = new DelegateCommand(ReportApplicantExecute);
            ReportAssistanceCommand = new DelegateCommand(ReportAssistanceExecute);

        }
        #endregion
    }
}