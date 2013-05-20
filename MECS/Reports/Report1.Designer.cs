namespace COMPASS.Reports
{
    partial class Report1
    {
        #region Component Designer generated code
        /// <summary>
        /// Required method for telerik Reporting designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Report1));
            Telerik.Reporting.Drawing.StyleRule styleRule1 = new Telerik.Reporting.Drawing.StyleRule();
            Telerik.Reporting.Drawing.StyleRule styleRule2 = new Telerik.Reporting.Drawing.StyleRule();
            Telerik.Reporting.Drawing.StyleRule styleRule3 = new Telerik.Reporting.Drawing.StyleRule();
            Telerik.Reporting.Drawing.StyleRule styleRule4 = new Telerik.Reporting.Drawing.StyleRule();
            this.sqlDataSource1 = new Telerik.Reporting.SqlDataSource();
            this.labelsGroupHeader = new Telerik.Reporting.GroupHeaderSection();
            this.labelsGroupFooter = new Telerik.Reporting.GroupFooterSection();
            this.labelsGroup = new Telerik.Reporting.Group();
            this.categoryIDGroupHeader = new Telerik.Reporting.GroupHeaderSection();
            this.categoryIDGroupFooter = new Telerik.Reporting.GroupFooterSection();
            this.categoryIDGroup = new Telerik.Reporting.Group();
            this.questionIDGroupHeader = new Telerik.Reporting.GroupHeaderSection();
            this.questionIDGroupFooter = new Telerik.Reporting.GroupFooterSection();
            this.questionIDGroup = new Telerik.Reporting.Group();
            this.pageHeader = new Telerik.Reporting.PageHeaderSection();
            this.reportNameTextBox = new Telerik.Reporting.TextBox();
            this.pageFooter = new Telerik.Reporting.PageFooterSection();
            this.currentTimeTextBox = new Telerik.Reporting.TextBox();
            this.pageInfoTextBox = new Telerik.Reporting.TextBox();
            this.reportHeader = new Telerik.Reporting.ReportHeaderSection();
            this.titleTextBox = new Telerik.Reporting.TextBox();
            this.descriptionCaptionTextBox = new Telerik.Reporting.TextBox();
            this.descriptionDataTextBox = new Telerik.Reporting.TextBox();
            this.reportFooter = new Telerik.Reporting.ReportFooterSection();
            this.detail = new Telerik.Reporting.DetailSection();
            this.questionTextDataTextBox = new Telerik.Reporting.TextBox();
            this.choiceTextDataTextBox = new Telerik.Reporting.TextBox();
            this.textBox1 = new Telerik.Reporting.TextBox();
            this.textBox2 = new Telerik.Reporting.TextBox();
            ((System.ComponentModel.ISupportInitialize)(this)).BeginInit();
            // 
            // sqlDataSource1
            // 
            this.sqlDataSource1.ConnectionString = "RnDConnectionString";
            this.sqlDataSource1.Name = "sqlDataSource1";
            this.sqlDataSource1.SelectCommand = resources.GetString("sqlDataSource1.SelectCommand");
            // 
            // labelsGroupHeader
            // 
            this.labelsGroupHeader.Height = Telerik.Reporting.Drawing.Unit.Inch(0.28125D);
            this.labelsGroupHeader.Name = "labelsGroupHeader";
            this.labelsGroupHeader.PrintOnEveryPage = true;
            // 
            // labelsGroupFooter
            // 
            this.labelsGroupFooter.Height = Telerik.Reporting.Drawing.Unit.Inch(0.28125D);
            this.labelsGroupFooter.Name = "labelsGroupFooter";
            this.labelsGroupFooter.Style.Visible = false;
            // 
            // labelsGroup
            // 
            this.labelsGroup.GroupFooter = this.labelsGroupFooter;
            this.labelsGroup.GroupHeader = this.labelsGroupHeader;
            this.labelsGroup.Name = "labelsGroup";
            // 
            // categoryIDGroupHeader
            // 
            this.categoryIDGroupHeader.Height = Telerik.Reporting.Drawing.Unit.Inch(0.28125D);
            this.categoryIDGroupHeader.Items.AddRange(new Telerik.Reporting.ReportItemBase[] {
            this.textBox2});
            this.categoryIDGroupHeader.Name = "categoryIDGroupHeader";
            // 
            // categoryIDGroupFooter
            // 
            this.categoryIDGroupFooter.Height = Telerik.Reporting.Drawing.Unit.Inch(0.28125D);
            this.categoryIDGroupFooter.Name = "categoryIDGroupFooter";
            // 
            // categoryIDGroup
            // 
            this.categoryIDGroup.GroupFooter = this.categoryIDGroupFooter;
            this.categoryIDGroup.GroupHeader = this.categoryIDGroupHeader;
            this.categoryIDGroup.Groupings.AddRange(new Telerik.Reporting.Grouping[] {
            new Telerik.Reporting.Grouping("=Fields.CategoryID")});
            this.categoryIDGroup.Name = "categoryIDGroup";
            // 
            // questionIDGroupHeader
            // 
            this.questionIDGroupHeader.Height = Telerik.Reporting.Drawing.Unit.Inch(0.22718179225921631D);
            this.questionIDGroupHeader.Name = "questionIDGroupHeader";
            // 
            // questionIDGroupFooter
            // 
            this.questionIDGroupFooter.Height = Telerik.Reporting.Drawing.Unit.Inch(0.28125D);
            this.questionIDGroupFooter.Name = "questionIDGroupFooter";
            // 
            // questionIDGroup
            // 
            this.questionIDGroup.GroupFooter = this.questionIDGroupFooter;
            this.questionIDGroup.GroupHeader = this.questionIDGroupHeader;
            this.questionIDGroup.Groupings.AddRange(new Telerik.Reporting.Grouping[] {
            new Telerik.Reporting.Grouping("=Fields.QuestionID")});
            this.questionIDGroup.Name = "questionIDGroup";
            // 
            // pageHeader
            // 
            this.pageHeader.Height = Telerik.Reporting.Drawing.Unit.Inch(0.28125D);
            this.pageHeader.Items.AddRange(new Telerik.Reporting.ReportItemBase[] {
            this.reportNameTextBox});
            this.pageHeader.Name = "pageHeader";
            // 
            // reportNameTextBox
            // 
            this.reportNameTextBox.Location = new Telerik.Reporting.Drawing.PointU(Telerik.Reporting.Drawing.Unit.Inch(0.02083333395421505D), Telerik.Reporting.Drawing.Unit.Inch(0.02083333395421505D));
            this.reportNameTextBox.Name = "reportNameTextBox";
            this.reportNameTextBox.Size = new Telerik.Reporting.Drawing.SizeU(Telerik.Reporting.Drawing.Unit.Inch(6.4166665077209473D), Telerik.Reporting.Drawing.Unit.Inch(0.20000000298023224D));
            this.reportNameTextBox.StyleName = "PageInfo";
            this.reportNameTextBox.Value = "Report1";
            // 
            // pageFooter
            // 
            this.pageFooter.Height = Telerik.Reporting.Drawing.Unit.Inch(0.28125D);
            this.pageFooter.Items.AddRange(new Telerik.Reporting.ReportItemBase[] {
            this.currentTimeTextBox,
            this.pageInfoTextBox});
            this.pageFooter.Name = "pageFooter";
            // 
            // currentTimeTextBox
            // 
            this.currentTimeTextBox.Location = new Telerik.Reporting.Drawing.PointU(Telerik.Reporting.Drawing.Unit.Inch(0.02083333395421505D), Telerik.Reporting.Drawing.Unit.Inch(0.02083333395421505D));
            this.currentTimeTextBox.Name = "currentTimeTextBox";
            this.currentTimeTextBox.Size = new Telerik.Reporting.Drawing.SizeU(Telerik.Reporting.Drawing.Unit.Inch(3.1979167461395264D), Telerik.Reporting.Drawing.Unit.Inch(0.20000000298023224D));
            this.currentTimeTextBox.StyleName = "PageInfo";
            this.currentTimeTextBox.Value = "=NOW()";
            // 
            // pageInfoTextBox
            // 
            this.pageInfoTextBox.Location = new Telerik.Reporting.Drawing.PointU(Telerik.Reporting.Drawing.Unit.Inch(3.2395832538604736D), Telerik.Reporting.Drawing.Unit.Inch(0.02083333395421505D));
            this.pageInfoTextBox.Name = "pageInfoTextBox";
            this.pageInfoTextBox.Size = new Telerik.Reporting.Drawing.SizeU(Telerik.Reporting.Drawing.Unit.Inch(3.1979167461395264D), Telerik.Reporting.Drawing.Unit.Inch(0.20000000298023224D));
            this.pageInfoTextBox.Style.TextAlign = Telerik.Reporting.Drawing.HorizontalAlign.Right;
            this.pageInfoTextBox.StyleName = "PageInfo";
            this.pageInfoTextBox.Value = "=PageNumber";
            // 
            // reportHeader
            // 
            this.reportHeader.Height = Telerik.Reporting.Drawing.Unit.Inch(1.0290683507919312D);
            this.reportHeader.Items.AddRange(new Telerik.Reporting.ReportItemBase[] {
            this.titleTextBox,
            this.descriptionCaptionTextBox,
            this.descriptionDataTextBox});
            this.reportHeader.Name = "reportHeader";
            // 
            // titleTextBox
            // 
            this.titleTextBox.Location = new Telerik.Reporting.Drawing.PointU(Telerik.Reporting.Drawing.Unit.Inch(0D), Telerik.Reporting.Drawing.Unit.Inch(0D));
            this.titleTextBox.Name = "titleTextBox";
            this.titleTextBox.Size = new Telerik.Reporting.Drawing.SizeU(Telerik.Reporting.Drawing.Unit.Inch(6.4583334922790527D), Telerik.Reporting.Drawing.Unit.Inch(0.78740161657333374D));
            this.titleTextBox.StyleName = "Title";
            this.titleTextBox.Value = "Report1";
            // 
            // descriptionCaptionTextBox
            // 
            this.descriptionCaptionTextBox.CanGrow = true;
            this.descriptionCaptionTextBox.Location = new Telerik.Reporting.Drawing.PointU(Telerik.Reporting.Drawing.Unit.Inch(0.02083333395421505D), Telerik.Reporting.Drawing.Unit.Inch(0.80823493003845215D));
            this.descriptionCaptionTextBox.Name = "descriptionCaptionTextBox";
            this.descriptionCaptionTextBox.Size = new Telerik.Reporting.Drawing.SizeU(Telerik.Reporting.Drawing.Unit.Inch(3.1979167461395264D), Telerik.Reporting.Drawing.Unit.Inch(0.20000000298023224D));
            this.descriptionCaptionTextBox.Style.TextAlign = Telerik.Reporting.Drawing.HorizontalAlign.Right;
            this.descriptionCaptionTextBox.StyleName = "Caption";
            this.descriptionCaptionTextBox.Value = "Description:";
            // 
            // descriptionDataTextBox
            // 
            this.descriptionDataTextBox.CanGrow = true;
            this.descriptionDataTextBox.Location = new Telerik.Reporting.Drawing.PointU(Telerik.Reporting.Drawing.Unit.Inch(3.2395832538604736D), Telerik.Reporting.Drawing.Unit.Inch(0.80823493003845215D));
            this.descriptionDataTextBox.Name = "descriptionDataTextBox";
            this.descriptionDataTextBox.Size = new Telerik.Reporting.Drawing.SizeU(Telerik.Reporting.Drawing.Unit.Inch(3.1979167461395264D), Telerik.Reporting.Drawing.Unit.Inch(0.20000000298023224D));
            this.descriptionDataTextBox.StyleName = "Data";
            this.descriptionDataTextBox.Value = "=Fields.Description";
            // 
            // reportFooter
            // 
            this.reportFooter.Height = Telerik.Reporting.Drawing.Unit.Inch(0.28125D);
            this.reportFooter.Name = "reportFooter";
            // 
            // detail
            // 
            this.detail.Height = Telerik.Reporting.Drawing.Unit.Inch(0.50000017881393433D);
            this.detail.Items.AddRange(new Telerik.Reporting.ReportItemBase[] {
            this.questionTextDataTextBox,
            this.choiceTextDataTextBox,
            this.textBox1});
            this.detail.Name = "detail";
            // 
            // questionTextDataTextBox
            // 
            this.questionTextDataTextBox.CanGrow = true;
            this.questionTextDataTextBox.Location = new Telerik.Reporting.Drawing.PointU(Telerik.Reporting.Drawing.Unit.Inch(0.30000004172325134D), Telerik.Reporting.Drawing.Unit.Inch(3.9418537198798731E-05D));
            this.questionTextDataTextBox.Name = "questionTextDataTextBox";
            this.questionTextDataTextBox.Size = new Telerik.Reporting.Drawing.SizeU(Telerik.Reporting.Drawing.Unit.Inch(6.1000003814697266D), Telerik.Reporting.Drawing.Unit.Inch(0.20000000298023224D));
            this.questionTextDataTextBox.StyleName = "Data";
            this.questionTextDataTextBox.Value = "=Fields.QuestionText";
            // 
            // choiceTextDataTextBox
            // 
            this.choiceTextDataTextBox.CanGrow = true;
            this.choiceTextDataTextBox.Location = new Telerik.Reporting.Drawing.PointU(Telerik.Reporting.Drawing.Unit.Inch(0.099999986588954926D), Telerik.Reporting.Drawing.Unit.Inch(0.30000019073486328D));
            this.choiceTextDataTextBox.Name = "choiceTextDataTextBox";
            this.choiceTextDataTextBox.Size = new Telerik.Reporting.Drawing.SizeU(Telerik.Reporting.Drawing.Unit.Inch(6.1000003814697266D), Telerik.Reporting.Drawing.Unit.Inch(0.20000000298023224D));
            this.choiceTextDataTextBox.StyleName = "Data";
            this.choiceTextDataTextBox.Value = "=Fields.ChoiceText";
            // 
            // textBox1
            // 
            this.textBox1.CanGrow = true;
            this.textBox1.Location = new Telerik.Reporting.Drawing.PointU(Telerik.Reporting.Drawing.Unit.Inch(0D), Telerik.Reporting.Drawing.Unit.Inch(3.9418537198798731E-05D));
            this.textBox1.Name = "textBox1";
            this.textBox1.Size = new Telerik.Reporting.Drawing.SizeU(Telerik.Reporting.Drawing.Unit.Inch(0.30000004172325134D), Telerik.Reporting.Drawing.Unit.Inch(0.20000000298023224D));
            this.textBox1.StyleName = "Data";
            this.textBox1.Value = "=Fields.QuestionID";
            // 
            // textBox2
            // 
            this.textBox2.Location = new Telerik.Reporting.Drawing.PointU(Telerik.Reporting.Drawing.Unit.Inch(0.19999997317790985D), Telerik.Reporting.Drawing.Unit.Inch(0.0084317522123456D));
            this.textBox2.Name = "textBox2";
            this.textBox2.Size = new Telerik.Reporting.Drawing.SizeU(Telerik.Reporting.Drawing.Unit.Inch(6D), Telerik.Reporting.Drawing.Unit.Inch(0.19999997317790985D));
            this.textBox2.Style.Visible = true;
            this.textBox2.Value = "=Fields.Description";
            // 
            // Report1
            // 
            this.DataSource = this.sqlDataSource1;
            this.Groups.AddRange(new Telerik.Reporting.Group[] {
            this.labelsGroup,
            this.categoryIDGroup,
            this.questionIDGroup});
            this.Items.AddRange(new Telerik.Reporting.ReportItemBase[] {
            this.labelsGroupHeader,
            this.labelsGroupFooter,
            this.categoryIDGroupHeader,
            this.categoryIDGroupFooter,
            this.questionIDGroupHeader,
            this.questionIDGroupFooter,
            this.pageHeader,
            this.pageFooter,
            this.reportHeader,
            this.reportFooter,
            this.detail});
            this.Name = "Report1";
            this.PageSettings.Margins.Bottom = Telerik.Reporting.Drawing.Unit.Inch(1D);
            this.PageSettings.Margins.Left = Telerik.Reporting.Drawing.Unit.Inch(1D);
            this.PageSettings.Margins.Right = Telerik.Reporting.Drawing.Unit.Inch(1D);
            this.PageSettings.Margins.Top = Telerik.Reporting.Drawing.Unit.Inch(1D);
            this.PageSettings.PaperKind = System.Drawing.Printing.PaperKind.Letter;
            this.Style.BackgroundColor = System.Drawing.Color.White;
            styleRule1.Selectors.AddRange(new Telerik.Reporting.Drawing.ISelector[] {
            new Telerik.Reporting.Drawing.StyleSelector("Title")});
            styleRule1.Style.Color = System.Drawing.Color.Black;
            styleRule1.Style.Font.Bold = true;
            styleRule1.Style.Font.Italic = false;
            styleRule1.Style.Font.Name = "Tahoma";
            styleRule1.Style.Font.Size = Telerik.Reporting.Drawing.Unit.Point(18D);
            styleRule1.Style.Font.Strikeout = false;
            styleRule1.Style.Font.Underline = false;
            styleRule2.Selectors.AddRange(new Telerik.Reporting.Drawing.ISelector[] {
            new Telerik.Reporting.Drawing.StyleSelector("Caption")});
            styleRule2.Style.Color = System.Drawing.Color.Black;
            styleRule2.Style.Font.Name = "Tahoma";
            styleRule2.Style.Font.Size = Telerik.Reporting.Drawing.Unit.Point(10D);
            styleRule2.Style.VerticalAlign = Telerik.Reporting.Drawing.VerticalAlign.Middle;
            styleRule3.Selectors.AddRange(new Telerik.Reporting.Drawing.ISelector[] {
            new Telerik.Reporting.Drawing.StyleSelector("Data")});
            styleRule3.Style.Font.Name = "Tahoma";
            styleRule3.Style.Font.Size = Telerik.Reporting.Drawing.Unit.Point(9D);
            styleRule3.Style.VerticalAlign = Telerik.Reporting.Drawing.VerticalAlign.Middle;
            styleRule4.Selectors.AddRange(new Telerik.Reporting.Drawing.ISelector[] {
            new Telerik.Reporting.Drawing.StyleSelector("PageInfo")});
            styleRule4.Style.Font.Name = "Tahoma";
            styleRule4.Style.Font.Size = Telerik.Reporting.Drawing.Unit.Point(8D);
            styleRule4.Style.VerticalAlign = Telerik.Reporting.Drawing.VerticalAlign.Middle;
            this.StyleSheet.AddRange(new Telerik.Reporting.Drawing.StyleRule[] {
            styleRule1,
            styleRule2,
            styleRule3,
            styleRule4});
            this.Width = Telerik.Reporting.Drawing.Unit.Inch(6.4583334922790527D);
            ((System.ComponentModel.ISupportInitialize)(this)).EndInit();

        }
        #endregion

        private Telerik.Reporting.SqlDataSource sqlDataSource1;
        private Telerik.Reporting.GroupHeaderSection labelsGroupHeader;
        private Telerik.Reporting.GroupFooterSection labelsGroupFooter;
        private Telerik.Reporting.Group labelsGroup;
        private Telerik.Reporting.GroupHeaderSection categoryIDGroupHeader;
        private Telerik.Reporting.GroupFooterSection categoryIDGroupFooter;
        private Telerik.Reporting.Group categoryIDGroup;
        private Telerik.Reporting.GroupHeaderSection questionIDGroupHeader;
        private Telerik.Reporting.GroupFooterSection questionIDGroupFooter;
        private Telerik.Reporting.Group questionIDGroup;
        private Telerik.Reporting.PageHeaderSection pageHeader;
        private Telerik.Reporting.TextBox reportNameTextBox;
        private Telerik.Reporting.PageFooterSection pageFooter;
        private Telerik.Reporting.TextBox currentTimeTextBox;
        private Telerik.Reporting.TextBox pageInfoTextBox;
        private Telerik.Reporting.ReportHeaderSection reportHeader;
        private Telerik.Reporting.TextBox titleTextBox;
        private Telerik.Reporting.TextBox descriptionCaptionTextBox;
        private Telerik.Reporting.TextBox descriptionDataTextBox;
        private Telerik.Reporting.ReportFooterSection reportFooter;
        private Telerik.Reporting.DetailSection detail;
        private Telerik.Reporting.TextBox questionTextDataTextBox;
        private Telerik.Reporting.TextBox choiceTextDataTextBox;
        private Telerik.Reporting.TextBox textBox1;
        private Telerik.Reporting.TextBox textBox2;

    }
}