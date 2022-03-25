package com.uca.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.uca.spring.util.Util;
import java.time.LocalDate;
import java.time.Period;
import java.time.format.DateTimeFormatter;

@Controller
public class EmployeeController {


  @GetMapping("/")
  public String getForm() {
    return "index.jsp";
  }

  @PostMapping("/saveDetails")
  public String saveDetails(
      @RequestParam("studentName") String studentName,
      @RequestParam("studentLastName") String studentLastName,
      @RequestParam("studentIdNum") String studentIdNum, 
      @RequestParam("birthday") String birthday,
      @RequestParam("department") String department,
      ModelMap modelMap) {

    if (Util.isDateValid(birthday)) {
      System.out.println("Valid Birthday");      
    }
    
    DateTimeFormatter dateFormat = DateTimeFormatter.ofPattern("dd/MM/yyyy");
    LocalDate date = LocalDate.parse(birthday, dateFormat);
    int ageInt = Period.between(date, LocalDate.now()).getYears();
    
    modelMap.put("studentName", studentName);
    modelMap.put("studentLastName", studentLastName);
    modelMap.put("studentIdNum", studentIdNum);
    modelMap.put("birthday", ageInt);
    modelMap.put("department", department);
    return "success.jsp";
  }


}