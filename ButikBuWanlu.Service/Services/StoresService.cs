﻿using ButikBuWanlu.Domain;
using ButikBuWanlu.Domain.Absctraction.IService;
using ButikBuWanlu.Domain.Entities;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace ButikBuWanlu.Service.Services
{
    public class StoresService : IStoresService
    {
        private readonly IUnitOfWork unitOfWork;

        public StoresService(IUnitOfWork unitOfWork)
        {
            this.unitOfWork = unitOfWork;
        }

        public Store FindById(int id)
        {
            return unitOfWork.StoresRepository.FindById(id);
        }

        public ValueTask<Store> FindByIdAsync(int id)
        {
            return unitOfWork.StoresRepository.FindByIdAsync(id);
        }

        public IEnumerable<Store> GetAll()
        {
            return unitOfWork.StoresRepository.GetAll();
        }

        public Task<List<Store>> GetAllAsync()
        {
            return unitOfWork.StoresRepository.GetAllAsync();
        }
    }
}
