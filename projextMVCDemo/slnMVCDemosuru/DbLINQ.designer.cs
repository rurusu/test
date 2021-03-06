﻿#pragma warning disable 1591
//------------------------------------------------------------------------------
// <auto-generated>
//     這段程式碼是由工具產生的。
//     執行階段版本:4.0.30319.42000
//
//     對這個檔案所做的變更可能會造成錯誤的行為，而且如果重新產生程式碼，
//     變更將會遺失。
// </auto-generated>
//------------------------------------------------------------------------------

namespace slnMVCDemosuru
{
	using System.Data.Linq;
	using System.Data.Linq.Mapping;
	using System.Data;
	using System.Collections.Generic;
	using System.Reflection;
	using System.Linq;
	using System.Linq.Expressions;
	using System.ComponentModel;
	using System;
	
	
	[global::System.Data.Linq.Mapping.DatabaseAttribute(Name="SuruTest")]
	public partial class DbLINQDataContext : System.Data.Linq.DataContext
	{
		
		private static System.Data.Linq.Mapping.MappingSource mappingSource = new AttributeMappingSource();
		
    #region 擴充性方法定義
    partial void OnCreated();
    partial void Insertbjuser(bjuser instance);
    partial void Updatebjuser(bjuser instance);
    partial void Deletebjuser(bjuser instance);
    partial void Insertpersonal_sport_menu(personal_sport_menu instance);
    partial void Updatepersonal_sport_menu(personal_sport_menu instance);
    partial void Deletepersonal_sport_menu(personal_sport_menu instance);
    #endregion
		
		public DbLINQDataContext() : 
				base(global::System.Configuration.ConfigurationManager.ConnectionStrings["SuruTestConnectionString"].ConnectionString, mappingSource)
		{
			OnCreated();
		}
		
		public DbLINQDataContext(string connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public DbLINQDataContext(System.Data.IDbConnection connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public DbLINQDataContext(string connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public DbLINQDataContext(System.Data.IDbConnection connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public System.Data.Linq.Table<bjuser> bjuser
		{
			get
			{
				return this.GetTable<bjuser>();
			}
		}
		
		public System.Data.Linq.Table<personal_sport_menu> personal_sport_menu
		{
			get
			{
				return this.GetTable<personal_sport_menu>();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.bjuser")]
	public partial class bjuser : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private int _user_id;
		
		private string _u_photo;
		
		private string _u_name;
		
		private string _u_password;
		
		private string _u_email;
		
		private System.Nullable<System.DateTime> _u_birth;
		
		private System.Nullable<bool> _u_gender;
		
		private EntitySet<personal_sport_menu> _personal_sport_menu;
		
    #region 擴充性方法定義
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void Onuser_idChanging(int value);
    partial void Onuser_idChanged();
    partial void Onu_photoChanging(string value);
    partial void Onu_photoChanged();
    partial void Onu_nameChanging(string value);
    partial void Onu_nameChanged();
    partial void Onu_passwordChanging(string value);
    partial void Onu_passwordChanged();
    partial void Onu_emailChanging(string value);
    partial void Onu_emailChanged();
    partial void Onu_birthChanging(System.Nullable<System.DateTime> value);
    partial void Onu_birthChanged();
    partial void Onu_genderChanging(System.Nullable<bool> value);
    partial void Onu_genderChanged();
    #endregion
		
		public bjuser()
		{
			this._personal_sport_menu = new EntitySet<personal_sport_menu>(new Action<personal_sport_menu>(this.attach_personal_sport_menu), new Action<personal_sport_menu>(this.detach_personal_sport_menu));
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_user_id", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
		public int user_id
		{
			get
			{
				return this._user_id;
			}
			set
			{
				if ((this._user_id != value))
				{
					this.Onuser_idChanging(value);
					this.SendPropertyChanging();
					this._user_id = value;
					this.SendPropertyChanged("user_id");
					this.Onuser_idChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_u_photo", DbType="NVarChar(MAX)")]
		public string u_photo
		{
			get
			{
				return this._u_photo;
			}
			set
			{
				if ((this._u_photo != value))
				{
					this.Onu_photoChanging(value);
					this.SendPropertyChanging();
					this._u_photo = value;
					this.SendPropertyChanged("u_photo");
					this.Onu_photoChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_u_name", DbType="NVarChar(50)")]
		public string u_name
		{
			get
			{
				return this._u_name;
			}
			set
			{
				if ((this._u_name != value))
				{
					this.Onu_nameChanging(value);
					this.SendPropertyChanging();
					this._u_name = value;
					this.SendPropertyChanged("u_name");
					this.Onu_nameChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_u_password", DbType="NVarChar(50)")]
		public string u_password
		{
			get
			{
				return this._u_password;
			}
			set
			{
				if ((this._u_password != value))
				{
					this.Onu_passwordChanging(value);
					this.SendPropertyChanging();
					this._u_password = value;
					this.SendPropertyChanged("u_password");
					this.Onu_passwordChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_u_email", DbType="NVarChar(50)")]
		public string u_email
		{
			get
			{
				return this._u_email;
			}
			set
			{
				if ((this._u_email != value))
				{
					this.Onu_emailChanging(value);
					this.SendPropertyChanging();
					this._u_email = value;
					this.SendPropertyChanged("u_email");
					this.Onu_emailChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_u_birth", DbType="Date")]
		public System.Nullable<System.DateTime> u_birth
		{
			get
			{
				return this._u_birth;
			}
			set
			{
				if ((this._u_birth != value))
				{
					this.Onu_birthChanging(value);
					this.SendPropertyChanging();
					this._u_birth = value;
					this.SendPropertyChanged("u_birth");
					this.Onu_birthChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_u_gender", DbType="Bit")]
		public System.Nullable<bool> u_gender
		{
			get
			{
				return this._u_gender;
			}
			set
			{
				if ((this._u_gender != value))
				{
					this.Onu_genderChanging(value);
					this.SendPropertyChanging();
					this._u_gender = value;
					this.SendPropertyChanged("u_gender");
					this.Onu_genderChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.AssociationAttribute(Name="bjuser_personal_sport_menu", Storage="_personal_sport_menu", ThisKey="user_id", OtherKey="user_id")]
		public EntitySet<personal_sport_menu> personal_sport_menu
		{
			get
			{
				return this._personal_sport_menu;
			}
			set
			{
				this._personal_sport_menu.Assign(value);
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
		
		private void attach_personal_sport_menu(personal_sport_menu entity)
		{
			this.SendPropertyChanging();
			entity.bjuser = this;
		}
		
		private void detach_personal_sport_menu(personal_sport_menu entity)
		{
			this.SendPropertyChanging();
			entity.bjuser = null;
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.personal_sport_menu")]
	public partial class personal_sport_menu : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private int _p_menu_num;
		
		private System.Nullable<int> _user_id;
		
		private System.Nullable<System.DateTime> _spdate;
		
		private System.Nullable<int> _SportID;
		
		private System.Nullable<double> _distance;
		
		private System.Nullable<int> _reps;
		
		private System.Nullable<int> _sets;
		
		private System.Nullable<System.TimeSpan> _times;
		
		private System.Nullable<bool> _finish;
		
		private EntityRef<bjuser> _bjuser;
		
    #region 擴充性方法定義
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void Onp_menu_numChanging(int value);
    partial void Onp_menu_numChanged();
    partial void Onuser_idChanging(System.Nullable<int> value);
    partial void Onuser_idChanged();
    partial void OnspdateChanging(System.Nullable<System.DateTime> value);
    partial void OnspdateChanged();
    partial void OnSportIDChanging(System.Nullable<int> value);
    partial void OnSportIDChanged();
    partial void OndistanceChanging(System.Nullable<double> value);
    partial void OndistanceChanged();
    partial void OnrepsChanging(System.Nullable<int> value);
    partial void OnrepsChanged();
    partial void OnsetsChanging(System.Nullable<int> value);
    partial void OnsetsChanged();
    partial void OntimesChanging(System.Nullable<System.TimeSpan> value);
    partial void OntimesChanged();
    partial void OnfinishChanging(System.Nullable<bool> value);
    partial void OnfinishChanged();
    #endregion
		
		public personal_sport_menu()
		{
			this._bjuser = default(EntityRef<bjuser>);
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_p_menu_num", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
		public int p_menu_num
		{
			get
			{
				return this._p_menu_num;
			}
			set
			{
				if ((this._p_menu_num != value))
				{
					this.Onp_menu_numChanging(value);
					this.SendPropertyChanging();
					this._p_menu_num = value;
					this.SendPropertyChanged("p_menu_num");
					this.Onp_menu_numChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_user_id", DbType="Int")]
		public System.Nullable<int> user_id
		{
			get
			{
				return this._user_id;
			}
			set
			{
				if ((this._user_id != value))
				{
					if (this._bjuser.HasLoadedOrAssignedValue)
					{
						throw new System.Data.Linq.ForeignKeyReferenceAlreadyHasValueException();
					}
					this.Onuser_idChanging(value);
					this.SendPropertyChanging();
					this._user_id = value;
					this.SendPropertyChanged("user_id");
					this.Onuser_idChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_spdate", DbType="Date")]
		public System.Nullable<System.DateTime> spdate
		{
			get
			{
				return this._spdate;
			}
			set
			{
				if ((this._spdate != value))
				{
					this.OnspdateChanging(value);
					this.SendPropertyChanging();
					this._spdate = value;
					this.SendPropertyChanged("spdate");
					this.OnspdateChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_SportID", DbType="Int")]
		public System.Nullable<int> SportID
		{
			get
			{
				return this._SportID;
			}
			set
			{
				if ((this._SportID != value))
				{
					this.OnSportIDChanging(value);
					this.SendPropertyChanging();
					this._SportID = value;
					this.SendPropertyChanged("SportID");
					this.OnSportIDChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_distance", DbType="Float")]
		public System.Nullable<double> distance
		{
			get
			{
				return this._distance;
			}
			set
			{
				if ((this._distance != value))
				{
					this.OndistanceChanging(value);
					this.SendPropertyChanging();
					this._distance = value;
					this.SendPropertyChanged("distance");
					this.OndistanceChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_reps", DbType="Int")]
		public System.Nullable<int> reps
		{
			get
			{
				return this._reps;
			}
			set
			{
				if ((this._reps != value))
				{
					this.OnrepsChanging(value);
					this.SendPropertyChanging();
					this._reps = value;
					this.SendPropertyChanged("reps");
					this.OnrepsChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_sets", DbType="Int")]
		public System.Nullable<int> sets
		{
			get
			{
				return this._sets;
			}
			set
			{
				if ((this._sets != value))
				{
					this.OnsetsChanging(value);
					this.SendPropertyChanging();
					this._sets = value;
					this.SendPropertyChanged("sets");
					this.OnsetsChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_times", DbType="Time")]
		public System.Nullable<System.TimeSpan> times
		{
			get
			{
				return this._times;
			}
			set
			{
				if ((this._times != value))
				{
					this.OntimesChanging(value);
					this.SendPropertyChanging();
					this._times = value;
					this.SendPropertyChanged("times");
					this.OntimesChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_finish", DbType="Bit")]
		public System.Nullable<bool> finish
		{
			get
			{
				return this._finish;
			}
			set
			{
				if ((this._finish != value))
				{
					this.OnfinishChanging(value);
					this.SendPropertyChanging();
					this._finish = value;
					this.SendPropertyChanged("finish");
					this.OnfinishChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.AssociationAttribute(Name="bjuser_personal_sport_menu", Storage="_bjuser", ThisKey="user_id", OtherKey="user_id", IsForeignKey=true)]
		public bjuser bjuser
		{
			get
			{
				return this._bjuser.Entity;
			}
			set
			{
				bjuser previousValue = this._bjuser.Entity;
				if (((previousValue != value) 
							|| (this._bjuser.HasLoadedOrAssignedValue == false)))
				{
					this.SendPropertyChanging();
					if ((previousValue != null))
					{
						this._bjuser.Entity = null;
						previousValue.personal_sport_menu.Remove(this);
					}
					this._bjuser.Entity = value;
					if ((value != null))
					{
						value.personal_sport_menu.Add(this);
						this._user_id = value.user_id;
					}
					else
					{
						this._user_id = default(Nullable<int>);
					}
					this.SendPropertyChanged("bjuser");
				}
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
	}
}
#pragma warning restore 1591
