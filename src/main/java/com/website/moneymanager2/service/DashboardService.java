package com.website.moneymanager2.service;

import com.website.moneymanager2.dto.ExpenseDTO;
import com.website.moneymanager2.dto.IncomeDTO;
import com.website.moneymanager2.entity.ProfileEntity;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

@Service
@RequiredArgsConstructor
public class DashboardService {

    private final IncomeService incomeService;
    private final ExpenseService expenseService;
    private final ProfileService profileService;

}