package com.board.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.board.domain.TuserDTO;

@Mapper
public interface TuserMapper {
	
	void insertTuser(TuserDTO tuserDto);
	
	List<TuserDTO> getTuserList();
	
	TuserDTO getTuserMini(TuserDTO tuserDto);
	
	TuserDTO getTuserMaxi(TuserDTO tuserDto);
	
	TuserDTO getTuserUpdateData(TuserDTO tuserDto);
	
	TuserDTO login(TuserDTO tuserDto);
	
	void updateTuserEmail(TuserDTO tuserDto);
	
	void deleteTuser(TuserDTO tuserDto);
	
}
