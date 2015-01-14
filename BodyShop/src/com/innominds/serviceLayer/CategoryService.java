package com.innominds.serviceLayer;

import java.util.List;

public interface CategoryService {
	
	List showCategoryService(int categoryId);
	
	List showSubCategoryService(int scategoryId);
	
	Object showProductsService(int proId);

}
