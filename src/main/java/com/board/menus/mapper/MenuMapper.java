package com.board.menus.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.board.menus.domain.MenuDTO;

@Mapper
public interface MenuMapper {
	
	/*	DTO를 안쓰면 할 수 있는 방법
		void insertMenu(@Param("menuid") String menuid,@Param("menuname") String menuname,@Param("menuseq") int menuseq);
		
		스프링 레거시 시스템에서는 인터페이스에 애노테이션이 안붙는다.
	*/
	
	void insertMenu(MenuDTO menuDto);
	
	void insertMenu2(MenuDTO menuDto);
	
	List<MenuDTO> getMenuList();
	
	MenuDTO getMenuOne(MenuDTO menuDto);
	
	MenuDTO getLastData();
	
	void updateMenu(MenuDTO menuDto);
	
	void deleteMenu(String menu_id);
	
}
