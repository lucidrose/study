/*
 * Copyright 2008-2009 the original author or authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package egovframework.example.sample.web;

import java.util.List;

import egovframework.example.sample.service.EgovSampleService;
import egovframework.example.sample.service.SampleDefaultVO;
import egovframework.example.sample.service.SampleVO;

import egovframework.rte.fdl.property.EgovPropertyService;
import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.support.SessionStatus;
import org.springmodules.validation.commons.DefaultBeanValidator;

/**
 * @Class Name : EgovSampleController.java
 * @Description : EgovSample Controller Class
 * @Modification Information
 * @ @ 수정일 수정자 수정내용 @ --------- --------- ------------------------------- @
 *   2009.03.16 최초생성
 *
 * @author 개발프레임웍크 실행환경 개발팀
 * @since 2009. 03.16
 * @version 1.0
 * @see
 *
 * 		Copyright (C) by MOPAS All right reserved.
 */

@Controller
public class EgovSampleController {

	/** EgovSampleService */
	@Resource(name = "sampleService")
	private EgovSampleService sampleService;

	/** EgovPropertyService */
	@Resource(name = "propertiesService")
	protected EgovPropertyService propertiesService;

	/** Validator 
	@Resource(name = "beanValidator")
	protected DefaultBeanValidator beanValidator;
*/
	/**
	 * 글 목록을 조회한다. (pageing)
	 * @param searchVO - 조회할 정보가 담긴 SampleDefaultVO
	 * @param model
	 * @return "egovSampleList"
	 * @exception Exception
	 */
	@RequestMapping(value = "/egovSampleList.do")
	public String selectSampleList(@ModelAttribute("searchVO") SampleDefaultVO searchVO, ModelMap model) throws Exception {

		/** EgovPropertyService.sample */
		searchVO.setPageUnit(propertiesService.getInt("pageUnit"));
		searchVO.setPageSize(propertiesService.getInt("pageSize"));

		/** pageing setting */
		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(searchVO.getPageIndex());
		paginationInfo.setRecordCountPerPage(searchVO.getPageUnit());
		paginationInfo.setPageSize(searchVO.getPageSize());

		searchVO.setFirstIndex(paginationInfo.getFirstRecordIndex());
		searchVO.setLastIndex(paginationInfo.getLastRecordIndex());
		searchVO.setRecordCountPerPage(paginationInfo.getRecordCountPerPage());

		List<?> sampleList = sampleService.selectSampleList(searchVO);
		model.addAttribute("resultList", sampleList);

		int totCnt = sampleService.selectSampleListTotCnt(searchVO);
		paginationInfo.setTotalRecordCount(totCnt);
		model.addAttribute("paginationInfo", paginationInfo);

		return "sample/main";
	}
	/**
	 * 글 수정화면을 조회한다.
	 * @param id - 수정할 글 id
	 * @param searchVO - 목록 조회조건 정보가 담긴 VO
	 * @param model
	 * @return "egovSampleRegister"
	 * @exception Exception
	 */
	@RequestMapping("/view.do")
	public String updateSampleView(@ModelAttribute("sampleVO") SampleVO sampleVO, Model model) throws Exception {
		String viewId = "member";
		sampleVO = selectSample(sampleVO,viewId);
		
		
		model.addAttribute(sampleVO);
		return "sample/memberInfo";
	}

	/**
	 * 글을 조회한다.
	 * @param sampleVO - 조회할 정보가 담긴 VO
	 * @param searchVO - 목록 조회조건 정보가 담긴 VO
	 * @param status
	 * @return @ModelAttribute("sampleVO") - 조회한 정보
	 * @exception Exception
	 */
	public SampleVO selectSample(SampleVO sampleVO, String viewId) throws Exception {
		return sampleService.selectSample(sampleVO, viewId);
	}
	

	/**
	 * 리스트에서 등록 버튼 누를때 
	 * @param sampleVO - 등록할 정보가 담긴 VO
	 * @param searchVO - 목록 조회조건 정보가 담긴 VO
	 * @param status
	 * @return "forward:/egovSampleList.do"
	 * @exception Exception
	 */
	@RequestMapping(value = "/addView.do",method= {RequestMethod.GET, RequestMethod.POST})
	public String add(@ModelAttribute("searchVO") SampleVO sampleVO, Model model) throws Exception {
		model.addAttribute("sampleVO", new SampleVO());
		return "sample/memberInfo";
	}
	
	/**
	 * 등록화면에서 등록버튼을 누를때 >> 글을 등록한다.
	 * @param sampleVO - 등록할 정보가 담긴 VO
	 * @param searchVO - 목록 조회조건 정보가 담긴 VO
	 * @param status
	 * @return "forward:/egovSampleList.do"
	 * @exception Exception
	 */
	@RequestMapping(value = "/addSample.do", method = RequestMethod.POST)
	public String addSample(@ModelAttribute("searchVO") SampleDefaultVO searchVO, SampleVO sampleVO, Model model, SessionStatus status)
			throws Exception {
		sampleService.insertSample(sampleVO, "member");
		status.setComplete();
		return "forward:/egovSampleList.do";
	}
	// 글을 등록한다.
	@RequestMapping(value = "/tabAdd.do")
	public String tabAdd(@ModelAttribute("searchVO") SampleDefaultVO searchVO, SampleVO sampleVO, Model model, SessionStatus status)
			throws Exception {
		/*sampleService.insertSample(sampleVO);
		status.setComplete();*/
		if(sampleVO.getViewId().toString().equals("grad"))
		{
			System.out.println(">>>>> 성공");
			System.out.println(sampleVO.getHigh().toString());
			sampleService.insertSample(sampleVO, "grad"); 
		}
		return "forward:/egovSampleList.do";
	}
	/**
	 * 글을 수정한다.
	 * @param sampleVO - 수정할 정보가 담긴 VO
	 * @param searchVO - 목록 조회조건 정보가 담긴 VO
	 * @param status
	 * @return "forward:/egovSampleList.do"
	 * @exception Exception
	 */
	@RequestMapping("/update.do")
	public String updateSample(@ModelAttribute("searchVO") SampleVO sampleVO, BindingResult bindingResult, Model model, SessionStatus status)
			throws Exception {

		sampleService.updateSample(sampleVO);
		status.setComplete();
		return "forward:/egovSampleList.do";
	}
	
	// 탭 글을 수정한다.
	@RequestMapping("/tabUpdate.do")
	public String tabUpdateSample(@ModelAttribute("searchVO") SampleVO sampleVO, BindingResult bindingResult, Model model, SessionStatus status)
			throws Exception {

		sampleService.updateSample(sampleVO);
		status.setComplete();
		return "forward:/egovSampleList.do";
	}
	
	// 메뉴이동 : 교육 정보 등록화면
	@RequestMapping(value = "/tabView.do",method= {RequestMethod.GET, RequestMethod.POST})
	public String addEduInfo(@ModelAttribute("sampleVO") SampleVO sampleVO, Model model) throws Exception {
		
		// tab- 교육정보 : edu
		if(sampleVO.getViewNm().toString().equals("eduNgrad"))
		{
			model.addAttribute("resultMember", selectSample(sampleVO,"member"));
			model.addAttribute("resultGrad",sampleService.selectVgrad(sampleVO)); // 학력
			model.addAttribute("resultEdu",sampleService.selectEduList(sampleVO)); // edu - 교육명
			
			return "sample/eduInfo";
		}
		
		// tab - 자격증 보유기술 : license & tech	
		if(sampleVO.getViewNm().toString().equals("licenseNtech"))
		{
			model.addAttribute("resultMember", selectSample(sampleVO,"member"));
			model.addAttribute("resultLicense",sampleService.selectLicenseList(sampleVO)); // 자격증 - license
			model.addAttribute("resultTech",sampleService.selectTechList(sampleVO)); // 보유기술 - tech
			
			return "sample/techInfo";
		}
		
		// tab - 프로젝트 정보 수정
		if(sampleVO.getViewNm().toString().equals("project"))
		{
			model.addAttribute("resultMember", selectSample(sampleVO,"member"));
			model.addAttribute("resultProject",selectSample(sampleVO,"project")); // 프로젝트 - project
			
			return "sample/projectInfo";
		}
		
		// tab - 경력 정보 수정
		if(sampleVO.getViewNm().toString().equals("career"))
		{
			
			model.addAttribute("resultMember", selectSample(sampleVO,"member"));
			model.addAttribute("resultCareer",sampleService.selectCareerList(sampleVO)); // 경력 - career
			
			return "sample/careerInfo";
		}
		
		// tab - 근무 정보 수정
		if(sampleVO.getViewNm().toString().equals("work"))
		{
			SampleVO work = selectSample(sampleVO, "work");			
			model.addAttribute("resultMember", selectSample(sampleVO,"member"));
			model.addAttribute("resultWork",work); // 프로젝트 - project
			
			return "sample/workInfo";
		}
		
		return null;
	}
		
}
