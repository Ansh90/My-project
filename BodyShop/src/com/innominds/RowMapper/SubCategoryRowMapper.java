package com.innominds.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.innominds.model.SubCategoryDetail;

public class SubCategoryRowMapper implements RowMapper {

	@Override
	public Object mapRow(ResultSet rs, int i) throws SQLException {
		System.out.println("Its Map Row");

		SubCategoryDetail scd = new SubCategoryDetail();
		scd.setScat_id(rs.getInt(2));
		scd.setScat_name(rs.getString(3));
		scd.setScat_desc(rs.getString(4));
		return scd;
	}
}