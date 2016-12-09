package com.mani.gayi.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mani.gayi.dao.IssueDao;
import com.mani.gayi.model.Issue;

@Controller

public class FormController {

	
@Autowired
private IssueDao issueDao;

	@RequestMapping(value="/", method = RequestMethod.GET)
	public String getMyForm()
	{
		System.out.println("Hi i a m Hit");
		
		return "form";
	}
	
	
/*	@RequestMapping(value="/processMyForm")
	public String processForm(@ModelAttribute("issueP") Issue issi){
		
		System.out.println("issi Name "+issi.getIssueName());
		issueDao.saveIssue(issi);
			
		return "welcome";*/
		
		

		@RequestMapping(value="save")
		public String processForm(@ModelAttribute("issueP") Issue issi){
			System.out.println("issi Name "+issi.getIssueName());
			System.out.println("issi Id"+issi.getIssueId());
			issueDao.saveIssue(issi);
			return "welcome";
			
		
		
		
		
		
	}
	
	
	@RequestMapping(value="/getIssues",method = RequestMethod.GET)
	public @ResponseBody List<Issue> getIssueList()
	{
		List<Issue> list = new ArrayList();
		Issue i1 = new Issue();
		i1.setIssueName("USEI");
		Issue i2 = new Issue();
		i2.setIssueName("ADES");
		Issue i3 = new Issue();
		i3.setIssueName("UDES");
		list.add(i1);
		list.add(i2);
		list.add(i3);
		return list;
	}
}
