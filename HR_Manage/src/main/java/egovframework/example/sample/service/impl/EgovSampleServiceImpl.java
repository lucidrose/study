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
package egovframework.example.sample.service.impl;

import java.util.ArrayList;
import java.util.List;

import egovframework.example.sample.service.EgovSampleService;
import egovframework.example.sample.service.SampleDefaultVO;
import egovframework.example.sample.service.SampleVO;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import egovframework.rte.fdl.idgnr.EgovIdGnrService;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

/**
 * @Class Name : EgovSampleServiceImpl.java
 * @Description : Sample Business Implement Class
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

@Service("sampleService")
public class EgovSampleServiceImpl extends EgovAbstractServiceImpl implements EgovSampleService {

	private static final Logger LOGGER = LoggerFactory.getLogger(EgovSampleServiceImpl.class);

	/** SampleDAO */
	// TODO ibatis 사용
	/*@Resource(name = "sampleDAO")
	private SampleDAO sampleDAO;*/
	// TODO mybatis 사용
	@Resource(name="sampleMapper")
	private SampleMapper sampleDAO;

	/** ID Generation */
	@Resource(name = "egovIdGnrService")
	private EgovIdGnrService egovIdGnrService;

	/**
	 * 글을 등록한다.
	 * @param vo - 등록할 정보가 담긴 SampleVO
	 * @return 등록 결과
	 * @exception Exception
	 */
	@Override
	public void insertSample(SampleVO vo, String viewId) throws Exception {
		LOGGER.debug(vo.toString());

		/** ID Generation Service */
		/*String id = egovIdGnrService.getNextStringId();
		//vo.setId(id);
		LOGGER.debug(vo.toString());*/

		sampleDAO.insertData(vo, viewId);
	}

	/**
	 * 글을 수정한다.
	 * @param vo - 수정할 정보가 담긴 SampleVO
	 * @return void형
	 * @exception Exception
	 */
	@Override
	public void updateSample(SampleVO vo) throws Exception {
		sampleDAO.updateSample(vo);
	}

	/**
	 * 글을 삭제한다.
	 * @param vo - 삭제할 정보가 담긴 SampleVO
	 * @return void형
	 * @exception Exception
	 */
	@Override
	public void deleteSample(SampleVO vo) throws Exception {
		sampleDAO.deleteSample(vo);
	}

	/**
	 * 글을 조회한다.
	 * @param vo - 조회할 정보가 담긴 SampleVO
	 * @return 조회한 글
	 * @exception Exception
	 */
	@Override
	public SampleVO selectSample(SampleVO vo, String viewId) throws Exception {
		
		SampleVO resultVO = null;
		
		if(viewId.equals("member")) {
			resultVO = sampleDAO.selectMember(vo);
			return resultVO;
		}/*else if(viewId.equals("grad")) {
			resultVO = sampleDAO.selectGrad(vo);
			return resultVO;
		}else if(viewId.equals("edu")) {
			//resultVO = sampleDAO.selectEdu(vo);
			return resultVO;
		}else if(viewId.equals("license")) {
			resultVO = sampleDAO.selectLicense(vo);
			return resultVO;
		}else if(viewId.equals("tech")) {
			resultVO = sampleDAO.selectTech(vo);
			return resultVO;
		}*/else if(viewId.equals("project")) {
			resultVO = sampleDAO.selectProject(vo);
			return resultVO;
		}/*else if(viewId.equals("career")) {
			resultVO = sampleDAO.selectCareer(vo);
			return resultVO;
		}*/else if(viewId.equals("work")) {
			resultVO = sampleDAO.selectWork(vo);
			return resultVO;
		}
		
		/*SampleVO resultVO = sampleDAO.selectMember(vo);
		if (resultVO == null)
			throw processException("info.nodata.msg");*/
		/*return resultVO;*/
		return resultVO;
	}

	/**
	 * 글 목록을 조회한다.
	 * @param searchVO - 조회할 정보가 담긴 VO
	 * @return 글 목록
	 * @exception Exception
	 */
	@Override
	public List<?> selectSampleList(SampleDefaultVO searchVO) throws Exception {
		return sampleDAO.selectSampleList(searchVO);
	}
	


	/**
	 * 글 총 갯수를 조회한다.
	 * @param searchVO - 조회할 정보가 담긴 VO
	 * @return 글 총 갯수
	 * @exception
	 */
	@Override
	public int selectSampleListTotCnt(SampleDefaultVO searchVO) {
		return sampleDAO.selectSampleListTotCnt(searchVO);
	}
	// 교육정보 list 
	@Override
	public List<?> selectEduList(SampleVO sampleVO) throws Exception {
	
		return sampleDAO.selectEdu(sampleVO);
	}
	// 교육정보 학력 map  
	@Override
	public SampleVO selectVgrad(SampleVO sampleVO) throws Exception {
		return sampleDAO.selectVgrad(sampleVO);
	}
	// 자격증
	@Override
	public List<?> selectLicenseList(SampleVO sampleVO) throws Exception {
	
		return sampleDAO.selectLicense(sampleVO);
	}
	// 보유기술
	@Override
	public List<?> selectTechList(SampleVO sampleVO) throws Exception {
	
		return sampleDAO.selectTech(sampleVO);
	}
	
	//경력
	@Override
	public List<?> selectCareerList(SampleVO sampleVO) throws Exception {
	
		return sampleDAO.selectCareer(sampleVO);
	}

}
