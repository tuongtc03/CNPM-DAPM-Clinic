﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DoAn_CNPM.Models
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class DoAnCNPMEntities3 : DbContext
    {
        public DoAnCNPMEntities3()
            : base("name=DoAnCNPMEntities3")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Dept> Depts { get; set; }
        public virtual DbSet<DetailForm> DetailForms { get; set; }
        public virtual DbSet<DiseaseStatistic> DiseaseStatistics { get; set; }
        public virtual DbSet<Doctor> Doctors { get; set; }
        public virtual DbSet<DoctorSchedule> DoctorSchedules { get; set; }
        public virtual DbSet<Form> Forms { get; set; }
        public virtual DbSet<FormOnline> FormOnlines { get; set; }
        public virtual DbSet<Patient> Patients { get; set; }
        public virtual DbSet<PriceList> PriceLists { get; set; }
        public virtual DbSet<Staff> Staffs { get; set; }
        public virtual DbSet<Role> Roles { get; set; }
        public virtual DbSet<User> Users { get; set; }
    }
}
