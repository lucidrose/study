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

import java.io.BufferedOutputStream;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;
import org.springmodules.validation.commons.DefaultBeanValidator;

import egovframework.example.sample.service.EgovSampleService;
import egovframework.example.sample.service.SampleDefaultVO;
import egovframework.example.sample.service.SampleVO;
import egovframework.rte.fdl.property.EgovPropertyService;
import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
/**
 * @Class Name : EgovSampleController.java
 * @Description : EgovSample Controller Class
 * @Modification Information
 * @
 * @  수정일      수정자              수정내용
 * @ ---------   ---------   -------------------------------
 * @ 2009.03.16           최초생성
 *
 * @author 개발프레임웍크 실행환경 개발팀
 * @since 2009. 03.16
 * @version 1.0
 * @see
 *
 *  Copyright (C) by MOPAS All right reserved.
 */

@Controller
public class EgovSampleController {

	/** EgovSampleService */
	@Resource(name = "sampleService")
	private EgovSampleService sampleService;

	/** EgovPropertyService */
	@Resource(name = "propertiesService")
	protected EgovPropertyService propertiesService;

	/** Validator */
	@Resource(name = "beanValidator")
	protected DefaultBeanValidator beanValidator;

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
		/*searchVO.setPageUnit(propertiesService.getInt("pageUnit"));
		searchVO.setPageSize(propertiesService.getInt("pageSize"));

		*//** pageing setting *//*
		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(searchVO.getPageIndex());
		paginationInfo.setRecordCountPerPage(searchVO.getPageUnit());
		paginationInfo.setPageSize(searchVO.getPageSize());

		searchVO.setFirstIndex(paginationInfo.getFirstRecordIndex());
		searchVO.setLastIndex(paginationInfo.getLastRecordIndex());
		searchVO.setRecordCountPerPage(paginationInfo.getRecordCountPerPage());*/

		List<?> sampleList = sampleService.selectSampleList(searchVO);
		model.addAttribute("resultList", sampleList);
		
		model.addAttribute("searchYm", searchVO.getSearchYm());
		model.addAttribute("searchDetailCode", searchVO.getSearchDetailCode());
		model.addAttribute("searchStateCode", searchVO.getSearchStateCode());
		
		//int totCnt = sampleService.selectSampleListTotCnt(searchVO);
		/*paginationInfo.setTotalRecordCount(totCnt);
		model.addAttribute("paginationInfo", paginationInfo);
*/
		return "sample/egovSampleList";
	}

	/**
	 * 글 등록 화면을 조회한다.
	 * @param searchVO - 목록 조회조건 정보가 담긴 VO
	 * @param model
	 * @return "egovSampleRegister"
	 * @exception Exception
	 */
	@RequestMapping(value = "/billAddView.do", method = RequestMethod.GET)
	public String addBillView(@ModelAttribute("searchVO") SampleVO sampleVO, String insertYn, ModelMap model) throws Exception {
		//model.addAttribute("sampleVO", new SampleVO());
		model.addAttribute("insertYn", insertYn);
		return "sample/billAdd";
	}

	/**
	 * 글을 등록한다.
	 * @param sampleVO - 등록할 정보가 담긴 VO
	 * @param searchVO - 목록 조회조건 정보가 담긴 VO
	 * @param status
	 * @return "forward:/egovSampleList.do"
	 * @exception Exception
	 */
	@RequestMapping(value = "/billAdd.do", method = RequestMethod.POST)
	public String billAdd(@ModelAttribute("searchVO") SampleDefaultVO searchVO, SampleVO sampleVO, BindingResult bindingResult, Model model, SessionStatus status)
			throws Exception {

		// Server-Side Validation
		beanValidator.validate(sampleVO, bindingResult);

		if (bindingResult.hasErrors()) {
			model.addAttribute("sampleVO", sampleVO);
			return "sample/egovSampleRegister";
		}

		sampleService.insertSample(sampleVO);
		status.setComplete();
		return "redirect:/billAddView.do?insertYn=Y";
	}

	/**
	 * 글 수정화면을 조회한다.
	 * @param id - 수정할 글 id
	 * @param searchVO - 목록 조회조건 정보가 담긴 VO
	 * @param model
	 * @return "billDetail.do"
	 * @exception Exception
	 */
	@RequestMapping("/billDetailView.do")
	public String detailView(@ModelAttribute("searchVO") SampleVO sampleVO,String updateYn, String deleteYn, Model model) throws Exception {
		//SampleVO sampleVO = new SampleVO();
		//sampleVO.setBillNo(Integer.parseInt(billNo));
		// 변수명은 CoC 에 따라 sampleVO
		//model.addAttribute(selectSample(sampleVO, searchVO));
		Object info = sampleService.getBillDtl(sampleVO);
		model.addAttribute("updateYn", updateYn);
		model.addAttribute("deleteYn", deleteYn);
		model.addAttribute("resultList",info);
		return "sample/billDetail";
	}
	
	

	/**
	 * 글을 조회한다.
	 * @param sampleVO - 조회할 정보가 담긴 VO
	 * @param searchVO - 목록 조회조건 정보가 담긴 VO
	 * @param status
	 * @return @ModelAttribute("sampleVO") - 조회한 정보
	 * @exception Exception
	 */
	public SampleVO selectSample(SampleVO sampleVO, @ModelAttribute("searchVO") SampleDefaultVO searchVO) throws Exception {
		return sampleService.selectSample(sampleVO);
	}

	/**
	 * 글을 수정한다.
	 * @param sampleVO - 수정할 정보가 담긴 VO
	 * @param searchVO - 목록 조회조건 정보가 담긴 VO
	 * @param status
	 * @return "forward:/egovSampleList.do"
	 * @exception Exception
	 */
	@RequestMapping("/updateDetail.do")
	public String updateSample( @ModelAttribute("searchVO") SampleVO sampleVO)
			throws Exception {
		System.out.println("sampleVO : " + sampleVO);
		sampleService.updateSample(sampleVO);
		System.out.println("sampleVO : " + sampleVO);
		/*return "forward:/egovSampleList.do";*/
		return "redirect:/billDetailView.do?billNo=" + sampleVO.getBillNo() + "&updateYn=Y";
	}

	/**
	 * 글을 삭제한다.
	 * @param sampleVO - 삭제할 정보가 담긴 VO
	 * @param searchVO - 목록 조회조건 정보가 담긴 VO
	 * @param status
	 * @return "forward:/egovSampleList.do"
	 * @exception Exception
	 */
	@RequestMapping("/delete.do")
	public String deleteSample(@ModelAttribute("searchVO") SampleVO sampleVO) throws Exception {
		sampleService.deleteSample(sampleVO);
		return "redirect:/billDetailView.do?deleteYn=Y";
	}
	
	
	
	@RequestMapping(value = "/billExcelDown.do")
	public void billExcelDown(@ModelAttribute("searchVO") SampleVO sampleVO, HttpServletResponse response) throws Exception {
		
		OutputStream out = null;
        
        try {
            HSSFWorkbook workbook = BillExcelDownload(sampleVO);
            
            Date today = new Date();
            SimpleDateFormat format = new SimpleDateFormat("yyyyMMddHHmm");
            System.out.println("--------------------" + format.format(today));
            response.reset();
            response.setHeader("Content-Disposition", "attachment;filename=bill_" + format.format(today) + ".xls");
            response.setContentType("application/vnd.ms-excel");
            out = new BufferedOutputStream(response.getOutputStream());
            
            workbook.write(out);
            out.flush();
            
        } catch (Exception e) {
        	System.out.println("exception during downloading excel file");
        	e.printStackTrace();
        } finally {
            if(out != null) out.close();
        }    
		
	}
	
	
	
	//이현희:47 엑셀다운로드 객체 생성
	public HSSFWorkbook BillExcelDownload(SampleVO sampleVO) throws Exception {
        
        
        HSSFWorkbook workbook = new HSSFWorkbook();
        
        HSSFSheet sheet = workbook.createSheet("엑셀시트명");
        
        HSSFRow row = null;
        
        HSSFCell cell = null;
        
        List<?> list = sampleService.selectSampleList(sampleVO);
        
        row = sheet.createRow(0);
        String[] headerKey = {"순번", "사용일", "사용내역", "사용금액", "승인금액", "처리상태", "등록일"};
        
        for(int i=0; i<headerKey.length; i++) {
            cell = row.createCell(i);
            cell.setCellValue(headerKey[i]);
        }
        
        for(int i=0; i<list.size(); i++) {
            row = sheet.createRow(i + 1);
            Map<String, Object> vo = (Map<String, Object>)list.get(i);
            // 순번
            cell = row.createCell(0);
//            cell.setCellValue(vo.getEx1());
            cell.setCellValue(String.valueOf(vo.get("no")));
            
            // 사용일
            cell = row.createCell(1);
//            cell.setCellValue(vo.getUseDt());
            cell.setCellValue((String)vo.get("useDate"));
            
            // 사용내역
            cell = row.createCell(2);
//            cell.setCellValue(vo.getDtlNm());
            cell.setCellValue((String)vo.get("useDtlNm"));
            
            // 사용금액
            cell = row.createCell(3);
//            cell.setCellValue(vo.getUseAmt());
            cell.setCellValue(String.valueOf(vo.get("usePrice")));
            
            // 승인금액
            cell = row.createCell(4);
//            cell.setCellValue(vo.getApprAmt());
            cell.setCellValue(String.valueOf(vo.get("apprAmt")));
            
            // 처리상태
            cell = row.createCell(5);
//            cell.setCellValue(vo.getStatusNm());
            cell.setCellValue((String)vo.get("stateNm"));
            
            // 등록일
            cell = row.createCell(6);
//            cell.setCellValue(vo.getRegDt());
            cell.setCellValue((String)vo.get("regDt"));
 
        }
        
        return workbook;
    }

}
