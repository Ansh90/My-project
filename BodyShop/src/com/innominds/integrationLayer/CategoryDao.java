package com.innominds.integrationLayer;

import java.util.List;

public interface CategoryDao {

	List showCategoryDao(int categoryId);

	List showSubCategoryDao(int scategoryId);

	List showProductsDao(int proId);

}
