package com.chiefmech.arms.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectProvider;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import com.chiefmech.arms.dao.sqlprovider.SupplierDaoSqlProvider;
import com.chiefmech.arms.entity.Supplier;
import com.chiefmech.arms.entity.option.OptionBean;

@Repository("supplierDao")
public interface SupplierDao {

	@SelectProvider(type = SupplierDaoSqlProvider.class, method = "getSupplierList")
	public List<Supplier> getSupplierList(@Param("item") Supplier query,
			@Param("page") int page, @Param("rows") int rows);

	@SelectProvider(type = SupplierDaoSqlProvider.class, method = "getSupplierListCount")
	public int getSupplierListCount(@Param("item") Supplier query);

	@Insert("insert into supplier(txtSuppId,txtSuppBianHao,txtSuppName,txtRemarks) values(#{txtSuppId},#{txtSuppBianHao},#{txtSuppName},#{txtRemarks})")
	public int insertItem(Supplier item);

	@Update("update supplier set txtSuppBianHao=#{txtSuppBianHao},txtSuppName=#{txtSuppName},txtRemarks=#{txtRemarks} where txtSuppId=#{txtSuppId}")
	public int updateItem(Supplier item);

	@Delete("delete from supplier where txtSuppId=#{txtSuppId}")
	public int deleteItem(String id);

	@Select("select txtSuppName name, txtSuppName code from supplier")
	public List<OptionBean> getAllOptionBean();

}
