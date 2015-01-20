package edu.cuc.culturaldev.common.excel;

import java.util.ArrayList; 
import java.io.FileInputStream;
import java.io.IOException;

import lombok.extern.slf4j.Slf4j;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;


/**
 * @author ����
 * ��д���ڣ�2013-11-25
 * ���ܣ�excel��ȡ������
 */
@Slf4j
public class ExcelImportUtil {
	
	/**
	 * @author ����
	 * ��д���ڣ�2013-11-25
	 * �ر�ע�ͣ���������ʵ������
	 * ���ܣ���ȡĳ��excel��ÿ��sheet�е��������ݣ�������ArrayList�м��Է���
	 * @param fileName���ļ���
	 * @param path���ļ�·��
	 */
//	public ArrayList<ArrayList<String>> readExcel(String fileName,String path) {
//		ArrayList<ArrayList<String>> Row =new ArrayList<ArrayList<String>>();
//		
//		try {
//			Workbook workBook = null;
//            try {
//        	    workBook = new XSSFWorkbook(path+"\\"+fileName);
//            } catch (Exception ex) {
//                workBook = new HSSFWorkbook(new FileInputStream(path+"\\"+fileName));
//            } 
//			//ѭ��Sheet			
//		    for (int numSheet = 0; numSheet < workBook.getNumberOfSheets(); numSheet++) {
//			    Sheet sheet = workBook.getSheetAt(numSheet);
//			    if (sheet == null) {
//				    continue;
//			    }
//			    // ѭ����Row
//			    for (int rowNum = 0; rowNum <= sheet.getLastRowNum(); rowNum++) {
//				    Row row = sheet.getRow(rowNum);
//				    if (row == null) {
//					    continue;
//				    }
//					
//    				// ѭ����Cell
//				    ArrayList<String> arrCell =new ArrayList<String>();
//				    for (int cellNum = 0; cellNum <= row.getLastCellNum(); cellNum++) {
//					    Cell cell = row.getCell(cellNum);
//					    if (cell == null) {
//						    continue;
//					    }
//					    arrCell.add(getValue(cell));
//				    }
//				    Row.add(arrCell);
//			    }
//		    }
//		} catch (IOException e) {
//			System.out.println("e:"+e);
//		}
//	
//		return Row;
//	}
	
	/**
	 * @author ����
	 * ��д���ڣ�2013-11-25
	 * ���ܣ���ϵͳָ��Ŀ¼�»�ȡexcel���
	 * @param fileName���ļ�����
	 * @param fileName���ļ�·��
	 */
	public static Workbook getWorkBook(String fileName,String path){
		Workbook workBook = null;
		try {
            try {
            	workBook = new XSSFWorkbook(path+fileName);
            } catch (Exception ex) {
            	workBook = new HSSFWorkbook(new FileInputStream(path+fileName));
            } 
		} catch (IOException e) {
			log.error("��ȡexcel����",e);
		}
        return workBook;
	}
	
	/**
	 * @author ����
	 * ��д���ڣ�2013-11-25
	 * ���ܣ���ȡĳ��excel��sheet���Ϊsheet_number��sheet�еĲ������ݷ���ArrayList�м��Է��أ�
	 * �����Ե�Ԫ��start_x��start_y��Ϊ��ʼ�㣬���򳤶�Ϊlength�������Զ��жϽ���Ϊֹ��
	 * @param workBook��excel���
	 * @param sheet_number��sheet���
	 * @param start_c����ʼ��Ԫ��������
	 * @param start_r����ʼ��Ԫ��������
	 * @param length��Ҫ��ȡ�ĵ�Ԫ������
	 */
	public static ArrayList<ArrayList<String>> readExcelInArea(Workbook workbook,int sheet_number,int start_c,int start_r,int length) {
		ArrayList<ArrayList<String>> Row =new ArrayList<ArrayList<String>>();		
		Sheet sheet = workbook.getSheetAt(sheet_number-1);
		//���sheetΪ����ֱ�ӷ���
		if (sheet == null) {
		    return Row;
		}
		//�ж�ʲôʱ���ȡ���
		boolean flag=true;
		int column_count=0;
		int row_count=0;
		int zero_count=0;
		// ѭ����Row
		int rowNum=start_r-1; 
		boolean first_cell=true;
		while (flag) {	
		    Row row = sheet.getRow(rowNum);
		    column_count=0;
		    zero_count=0;
		    first_cell=true;
		    if(row_count==5){
		    	flag=false;
		    }else{
		    	// ѭ����Cell
			    ArrayList<String> arrCell =new ArrayList<String>();
			    for (int cellNum = start_c-1; cellNum <= start_c-1+length-1; cellNum++) {
				    Cell cell = row.getCell(cellNum);
				    
				    if (getValue(cell).trim().length()==0) {
				    	column_count++;
				    	if(cellNum == start_c-1){//��һ��
				    		first_cell=false;
				    		arrCell.add(getValue(cell));	
					    }else{
					    	if(first_cell){
					    		arrCell.add("0");
					    	}else{
					    		arrCell.add(getValue(cell));	
					    	}
					    }
				    }else{			
				    	if (Double.parseDouble(getValue(cell).trim())==0) {
				    		zero_count++;
					    	arrCell.add(getValue(cell));
					    }else{				    	
					    	row_count=0;
					    	arrCell.add(getValue(cell));
					    	flag=true;
					    }
				    }	
			    }
			    if(column_count!=length){
			    	if(zero_count!=length){
			    		Row.add(arrCell);
			    	}else{
			    		if(rowNum==(start_r-1)){
			    			Row.add(arrCell);
			    		}
			    	}
			    }else{
			    	row_count++;
			    }
			    rowNum++;
		    }		
		}			
		return Row;		
	}	
	
	/**
	 * @author ����
	 * ��д���ڣ�2013-11-25
	 * ���ܣ���ȡĳ��excel��sheet���Ϊsheet_number�е�һ�����ݣ�������ArrayList�м��Է���
	 * @param workBook��excel���
	 * @param sheet_number��sheet���
	 * @param start_c����ʼ��Ԫ��������
	 * @param start_r����ʼ��Ԫ��������
	 * @param length��Ҫ��ȡ�ĵ�Ԫ������
	 */
	public static ArrayList<String> readExcelInRow(Workbook workbook,int sheet_number,int start_c,int start_r,int length) {
		ArrayList<String> Row =new ArrayList<String>();		
		Sheet sheet = workbook.getSheetAt(sheet_number-1);
		//���sheetΪ����ֱ�ӷ���
		if (sheet == null) {
		    return Row;
		}
        //�����Ϊ����ֱ�ӷ���
		Row row = sheet.getRow(start_r-1);
		if (row == null) {				    	
	    	return Row;				    				    
	    }
		for (int cellNum = start_c-1; cellNum <= start_c-1+length-1; cellNum++) {
		    Cell cell = row.getCell(cellNum);
		    if (cell == null) {
			    continue;
		    }
		    Row.add(getValue(cell));
	    }				
		return Row;
	}
	
	/**
	 * @author ����
	 * ��д���ڣ�2013-11-26
	 * ���ܣ���ȡĳ��excel��sheet���Ϊsheet_number�е�һ�����ݣ�������ArrayList�м��Է���
	 * @param workBook��excel���
	 * @param sheet_number��sheet���
	 * @param start_c����ʼ��Ԫ��������
	 * @param start_r����ʼ��Ԫ��������
	 * @param length��Ҫ��ȡ�ĵ�Ԫ������
	 */
	public static ArrayList<String> readExcelInColumn(Workbook workbook,int sheet_number,int start_c,int start_r,int length) {
		ArrayList<String> Column =new ArrayList<String>();		
		Sheet sheet = workbook.getSheetAt(sheet_number-1);
		//���sheetΪ����ֱ�ӷ���
		if (sheet == null) {
		    return Column;
		}
		// ѭ����Row
		for (int rowNum = start_r-1; rowNum <= start_r-1+length-1; rowNum++) {				
		    Row row = sheet.getRow(rowNum);
		    if (row == null) {				    	
				continue;				    		    					    
		    }			
		    Cell cell = row.getCell(start_c-1);	
		    Column.add(getValue(cell));
		}	
		        
		return Column;
	}
	
	/**
	 * @author ����
	 * ��д���ڣ�2013-11-26
	 * ���ܣ���ȡĳ��excel��sheet���Ϊsheet_number�е�һ��Ԫ�����ݣ�������String�м��Է���
	 * @param workBook��excel���
	 * @param sheet_number��sheet���
	 * @param start_c����ʼ��Ԫ��������
	 * @param start_r����ʼ��Ԫ��������
	 */
	public static String readExcelInCell(Workbook workbook,int sheet_number,int start_c,int start_r) {
		String result =new String();		
		Sheet sheet = workbook.getSheetAt(sheet_number-1);
		//���sheetΪ����ֱ�ӷ���
		if (sheet == null) {
		    return result;
		}
		Row row = sheet.getRow(start_r-1);
		if(row==null){
			return "";
		}
	    Cell cell = row.getCell(start_c-1);
	    if(cell==null){
	    	result="";
	    }else{
	        result=getValue(cell);
	    }     
		return result;
	}

	/**
	 * @author ����
	 * ��д���ڣ�2013-11-25
	 * ���ܣ���ȡ��һ��Ԫ���е�����
	 * @param cell����Ԫ������
	 */
	private static String getValue(Cell cell) {
		if(cell!=null){
			if (cell.getCellType() == cell.CELL_TYPE_BOOLEAN) {
				return String.valueOf(cell.getBooleanCellValue());
			} else if (cell.getCellType() == cell.CELL_TYPE_NUMERIC) {
				return String.valueOf(cell.getNumericCellValue());
			}  else if (cell.getCellType() == cell.CELL_TYPE_FORMULA) {
				try {
					 return  String.valueOf(cell.getNumericCellValue());
				} catch (IllegalStateException e) {
					 return  String.valueOf(cell.getRichStringCellValue());
				}
			} else {
				return String.valueOf(cell.getStringCellValue());
			}
		}else{
			return "";
		}		
	}


}
