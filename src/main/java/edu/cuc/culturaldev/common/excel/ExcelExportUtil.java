package edu.cuc.culturaldev.common.excel;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

import lombok.extern.slf4j.Slf4j;


import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFFont;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.hssf.util.HSSFCellUtil;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.Font;
import org.apache.poi.ss.util.CellRangeAddress;


/**
 * 描述：Excel写操作帮助类
 * @author	ALEX
 * @since	2010-11-24
 * @version	1.0v
 */
@Slf4j
public class ExcelExportUtil {

	/**
	 * 功能：将HSSFWorkbook写入Excel文件
	 * @param 	wb		HSSFWorkbook
	 * @param 	wbName	文件名

	public static void writeWorkbook(HSSFWorkbook wb,String fileName){
		FileOutputStream fos=null;
		try {
			fos=new FileOutputStream(fileName);
			wb.write(fos);
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} finally{
			try {
				if(fos!=null){
					fos.close();
				}
			} catch (IOException e) {
				log.error("写入excel出错",e);
			}
			wb=null;
		}
	}

*/
	/**
	 * 功能：创建HSSFSheet工作簿
	 * @param 	wb	HSSFWorkbook
	 * @param 	sheetName	String
	 * @return	HSSFSheet
	 */
	public static HSSFSheet createSheet(HSSFWorkbook wb,String sheetName){
		HSSFSheet sheet=wb.createSheet(sheetName);
		sheet.setDefaultColumnWidth(12);
		sheet.setGridsPrinted(false);
		sheet.setDisplayGridlines(false);
		return sheet;
	}
	/**
	 * 功能：创建HSSFRow
	 * @param 	sheet	HSSFSheet
	 * @param 	rowNum	int
	 * @param 	height	int
	 * @return	HSSFRow
	 */
	public static HSSFRow createRow(HSSFSheet sheet,int rowNum,int height){
		HSSFRow row=sheet.createRow(rowNum-1);
		row.setHeight((short)height);
		return row;
	}
	/**
	 * 功能：创建CellStyle样式
	 * @param 	wb				HSSFWorkbook	
	 * @param 	backgroundColor	背景色	
	 * @param 	foregroundColor	前置色
	 * @param	font			字体
	 * @return	CellStyle
	 */
	public static CellStyle createCellStyle(HSSFWorkbook wb,short backgroundColor,short foregroundColor,short halign,Font font){
		CellStyle cs=wb.createCellStyle();
		cs.setAlignment(halign);
		cs.setVerticalAlignment(CellStyle.VERTICAL_CENTER);
		cs.setFillBackgroundColor(backgroundColor);
		cs.setFillForegroundColor(foregroundColor);
		cs.setFillPattern(CellStyle.SOLID_FOREGROUND);
		cs.setFont(font);
		return cs;
	}
	/**
	 * 功能：创建带边框的CellStyle样式
	 * @param 	wb				HSSFWorkbook	
	 * @param 	backgroundColor	背景色	
	 * @param 	foregroundColor	前置色
	 * @param	font			字体
	 * @return	CellStyle
	 */
	public static CellStyle createBorderCellStyle(HSSFWorkbook wb,short backgroundColor,short foregroundColor,short halign,Font font){
		CellStyle cs=wb.createCellStyle();
		cs.setAlignment(halign);
		cs.setVerticalAlignment(CellStyle.VERTICAL_CENTER);
		cs.setFillBackgroundColor(backgroundColor);
		cs.setFillForegroundColor(foregroundColor);
		cs.setFillPattern(CellStyle.SOLID_FOREGROUND);
		cs.setFont(font);
		cs.setBorderLeft(CellStyle.BORDER_THIN);
		cs.setBorderRight(CellStyle.BORDER_THIN);
		cs.setBorderTop(CellStyle.BORDER_THIN);
		cs.setBorderBottom(CellStyle.BORDER_THIN);  
		return cs;
	}
	/**
	 * 功能：创建CELL
	 * @param 	row		HSSFRow	
	 * @param 	cellNum	int
	 * @param 	style	HSSFStyle
	 * @return	HSSFCell
	 */
	public static HSSFCell createCell(HSSFRow row,int cellNum,CellStyle style){
		HSSFCell cell=row.createCell(cellNum-1);
		cell.setCellStyle(style);
		return cell;
	}
	/**
	 * 功能：合并单元格
	 * @param 	sheet		HSSFSheet
	 * @param 	firstRow	int
	 * @param 	lastRow		int
	 * @param 	firstColumn	int
	 * @param 	lastColumn	int
	 * @return	int			合并区域号码
	 */
	public static int mergeCell(HSSFSheet sheet,int firstRow,int lastRow,int firstColumn,int lastColumn){
		return sheet.addMergedRegion(new CellRangeAddress(firstRow-1,lastRow-1,firstColumn-1,lastColumn-1));	
	}
	/**
	 * 功能：创建字体
	 * @param 	wb			HSSFWorkbook	
	 * @param 	boldweight	short
	 * @param 	color		short
	 * @return	Font	
	 */
	public static Font createFont(HSSFWorkbook wb,short boldweight,short color,short size){
		Font font=wb.createFont();
		font.setBoldweight(boldweight);
		font.setColor(color);
		font.setFontHeightInPoints(size);
		return font;
	}
	/**
	 * 设置合并单元格的边框样式
	 * @param	sheet	HSSFSheet	
	 * @param 	ca		CellRangAddress
	 * @param 	style	CellStyle
	 */
	public static void setRegionStyle(HSSFSheet sheet, CellRangeAddress ca,CellStyle style) {  
	    for (int i = ca.getFirstRow(); i <= ca.getLastRow(); i++) {  
	        HSSFRow row = HSSFCellUtil.getRow(i, sheet);  
	        for (int j = ca.getFirstColumn(); j <= ca.getLastColumn(); j++) {  
	            HSSFCell cell = HSSFCellUtil.getCell(row, j);  
	            cell.setCellStyle(style);  
	        }  
	    }  
	}  
	
	/**
	 * @author 刘庶
	 * 编写日期：2013-12-6
	 * 功能：建立输出表multiple头部
	 * @param wb：wb
	 * @param sheet：sheet
	 * @param o:OutputMultiple对象
	 * @param city:city
	 */
	/*
	public static void insertMultipleHead(HSSFWorkbook wb,HSSFSheet sheet,T_output_multiple o,String city){
		sheet.setColumnWidth((short)0, (short)200);
		for(int c=1;c<=14;c++){
			sheet.setColumnWidth((short)c, (short)2500);
		}
		sheet.setColumnWidth((short)15, (short)4000);
		sheet.setColumnWidth((short)16, (short)4000);
	
		insertMultipleLine2(wb,sheet);
		
		Font font=ExcelExportUtil.createFont(wb, HSSFFont.BOLDWEIGHT_NORMAL, (short)8, (short)11);
		font.setFontName("宋体");
		CellStyle style=ExcelExportUtil.createCellStyle(wb, (short)9, (short)9, CellStyle.ALIGN_LEFT, font);		
		insertMultipleLine4(wb,sheet,city,font,style);
		insertMultipleLine5(wb,sheet,o,font,style);
		insertMultipleLine6(wb,sheet,font,style);
		
		
		font=ExcelExportUtil.createFont(wb, HSSFFont.BOLDWEIGHT_NORMAL, (short)8, (short)11);
		font.setFontName("宋体");
		style=ExcelExportUtil.createBorderCellStyle(wb, (short)22, (short)22, CellStyle.ALIGN_CENTER, font);
		insertMultipleLine8(wb,sheet,font,style);
		insertMultipleLine9(wb,sheet,font,style);
	}
	*/
	
	/**
	 * @author 刘庶
	 * 编写日期：2013-12-6
	 * 功能：建立输出表multiple第2行
	 * @param wb：wb
	 * @param sheet：sheet
	 */
	private static void insertMultipleLine2(HSSFWorkbook wb,HSSFSheet sheet){
		//建立第2行
		HSSFRow row=ExcelExportUtil.createRow(sheet, 2, 400);
		Font font=ExcelExportUtil.createFont(wb, HSSFFont.BOLDWEIGHT_BOLD, (short)8, (short)16);
		font.setFontName("宋体");
		CellStyle style=ExcelExportUtil.createCellStyle(wb, (short)9, (short)9, CellStyle.ALIGN_LEFT, font);
		HSSFCell cell=ExcelExportUtil.createCell(row, 2, style);						
		cell.setCellValue("跨屏组合数据");
	}
	
	/**
	 * @author 刘庶
	 * 编写日期：2013-12-6
	 * 功能：建立输出表multiple第4行
	 * @param wb：wb
	 * @param sheet：sheet
	 * @param o:OutputMultiple对象

	private static void insertMultipleLine4(HSSFWorkbook wb,HSSFSheet sheet,String city,Font font,CellStyle style){
		//建立第4行
		HSSFRow row=ExcelExportUtil.createRow(sheet, 4, 300);
		HSSFCell cell=ExcelExportUtil.createCell(row, 2, style);						
		cell.setCellValue("Market:");
		cell=ExcelExportUtil.createCell(row, 4, style);	
		cell.setCellValue(city);
	}
	 */
	/**
	 * @author 刘庶
	 * 编写日期：2013-12-6
	 * 功能：建立输出表multiple第5行
	 * @param wb：wb
	 * @param sheet：sheet
	 * @param o:OutputMultiple对象
	 */
	/*
	private static void insertMultipleLine5(HSSFWorkbook wb,HSSFSheet sheet,T_output_multiple o,Font font,CellStyle style){
		//建立第5行
		HSSFRow row=ExcelExportUtil.createRow(sheet, 5, 300);
		HSSFCell cell=ExcelExportUtil.createCell(row, 2, style);						
		cell.setCellValue("Target:");
		cell=ExcelExportUtil.createCell(row, 4, style);
		String sex;
		if(o.getSex()==0){
			sex="P";
		}else if(o.getSex()==1){
			sex="M";
		}else{
			sex="F";
		}
		cell.setCellValue(sex+o.getAge());
	}
	*/
	/**
	 * @author 刘庶
	 * 编写日期：2013-12-6
	 * 功能：建立输出表multiple第6行
	 * @param wb：wb
	 * @param sheet：sheet
	 */
	private static void insertMultipleLine6(HSSFWorkbook wb,HSSFSheet sheet,Font font,CellStyle style){
		//建立第6行
		HSSFRow row=ExcelExportUtil.createRow(sheet, 6, 300);
		HSSFCell cell=ExcelExportUtil.createCell(row, 2, style);						
		cell.setCellValue("Universe Base：");
		cell=ExcelExportUtil.createCell(row, 4, style);						
		cell.setCellValue("TA Population");
	}
	
	/**
	 * @author 刘庶
	 * 编写日期：2013-12-6
	 * 功能：建立输出表multiple第8行
	 * @param wb：wb
	 * @param sheet：sheet
	 */
	private static void insertMultipleLine8(HSSFWorkbook wb,HSSFSheet sheet,Font font,CellStyle style){
		//建立第8行
		//GRP部分
		HSSFRow row=ExcelExportUtil.createRow(sheet, 8, 300);
		ExcelExportUtil.mergeCell(sheet, 8, 8, 2, 5);		
		HSSFCell cell=ExcelExportUtil.createCell(row, 2, style);			
		cell.setCellValue("GRP (Based on TA population)");
		cell=ExcelExportUtil.createCell(row, 3, style);
		cell=ExcelExportUtil.createCell(row, 4, style);
		cell=ExcelExportUtil.createCell(row, 5, style);
		//Max Reach 部分
		ExcelExportUtil.mergeCell(sheet, 8, 8, 6, 10);		
		cell=ExcelExportUtil.createCell(row, 6, style);						
		cell.setCellValue("Mixed Reach(%)");
		cell=ExcelExportUtil.createCell(row, 7, style);
		cell=ExcelExportUtil.createCell(row, 8, style);
		cell=ExcelExportUtil.createCell(row, 9, style);
		cell=ExcelExportUtil.createCell(row, 10, style);
		//Cost 部分
		ExcelExportUtil.mergeCell(sheet, 8, 8, 11, 15);
		cell=ExcelExportUtil.createCell(row, 11, style);						
		cell.setCellValue("Cost(元)");
		cell=ExcelExportUtil.createCell(row, 12, style);
		cell=ExcelExportUtil.createCell(row, 13, style);
		cell=ExcelExportUtil.createCell(row, 14, style);
		cell=ExcelExportUtil.createCell(row, 15, style);
		//OTV Impression 部分
		cell=ExcelExportUtil.createCell(row, 16, style);						
		cell.setCellValue("OTV Impression");
		//mTV Impression 部分
		cell=ExcelExportUtil.createCell(row, 17, style);						
		cell.setCellValue("mTV Impression");
	}
	
	/**
	 * @author 刘庶
	 * 编写日期：2013-12-6
	 * 功能：建立输出表multiple第9行
	 * @param wb：wb
	 * @param sheet：sheet
	 */
	private static void insertMultipleLine9(HSSFWorkbook wb,HSSFSheet sheet,Font font,CellStyle style){
		//建立第9行
		HSSFRow row=ExcelExportUtil.createRow(sheet, 9, 300);
		HSSFCell cell=ExcelExportUtil.createCell(row, 2, style);	
		cell.setCellValue("TV");
		cell=ExcelExportUtil.createCell(row, 3, style);						
		cell.setCellValue("OTV");
		cell=ExcelExportUtil.createCell(row, 4, style);						
		cell.setCellValue("OfficeLCD");
		cell=ExcelExportUtil.createCell(row, 5, style);						
		cell.setCellValue("MTV");
		style=ExcelExportUtil.createBorderCellStyle(wb, (short)22, (short)22, CellStyle.ALIGN_CENTER, font);
		cell=ExcelExportUtil.createCell(row, 6, style);						
		cell.setCellValue("1+");
		cell=ExcelExportUtil.createCell(row, 7, style);						
		cell.setCellValue("2+");
		cell=ExcelExportUtil.createCell(row, 8, style);						
		cell.setCellValue("3+");
		cell=ExcelExportUtil.createCell(row, 9, style);						
		cell.setCellValue("4+");
		cell=ExcelExportUtil.createCell(row, 10, style);						
		cell.setCellValue("5+");		
		cell=ExcelExportUtil.createCell(row, 11, style);						
		cell.setCellValue("TV");
		cell=ExcelExportUtil.createCell(row, 12, style);						
		cell.setCellValue("OTV");
		cell=ExcelExportUtil.createCell(row, 13, style);						
		cell.setCellValue("OfficeLCD");
		cell=ExcelExportUtil.createCell(row, 14, style);						
		cell.setCellValue("MTV");
		cell=ExcelExportUtil.createCell(row, 15, style);						
		cell.setCellValue("Total");
		cell=ExcelExportUtil.createCell(row, 16, style);						
//		cell.setCellValue("(CPM)");
		cell.setCellValue("");
		cell=ExcelExportUtil.createCell(row, 17, style);						
//		cell.setCellValue("(CPM)");
		cell.setCellValue("");
	}
	
	/**
	 * @author 刘庶
	 * 编写日期：2013-12-6
	 * 功能：建立输出表multiple的数据行
	 * @param wb：wb
	 * @param sheet：sheet
	 * @param rowNum：行数
	 * @param mul:T_output_multiple对象

	public static void insertMultipleData(HSSFSheet sheet,int rowNum,T_output_multiple mul,CellStyle style){
		//插入数据
		HSSFCell cell;
		HSSFRow row=ExcelExportUtil.createRow(sheet, rowNum, 300);
		
		cell=ExcelExportUtil.createCell(row, 2, style);
		cell.setCellValue(mul.getG_tv());
		cell=null;
		cell=ExcelExportUtil.createCell(row, 3, style);						
		cell.setCellValue(mul.getG_otv());
		cell=null;
		cell=ExcelExportUtil.createCell(row, 4, style);						
		cell.setCellValue(mul.getG_led());
		cell=null;
		cell=ExcelExportUtil.createCell(row, 5, style);						
		cell.setCellValue(mul.getG_mtv());
		cell=null;
		cell=ExcelExportUtil.createCell(row, 6, style);						
		cell.setCellValue(mul.getReach1());
		cell=null;
		cell=ExcelExportUtil.createCell(row, 7, style);						
		cell.setCellValue(mul.getReach2());
		cell=null;
		cell=ExcelExportUtil.createCell(row, 8, style);						
		cell.setCellValue(mul.getReach3());
		cell=null;
		cell=ExcelExportUtil.createCell(row, 9, style);						
		cell.setCellValue(mul.getReach4());
		cell=null;
		cell=ExcelExportUtil.createCell(row, 10, style);						
		cell.setCellValue(mul.getReach5());	
		cell=null;
		cell=ExcelExportUtil.createCell(row, 11, style);						
		cell.setCellValue(mul.getC_tv());
		cell=null;
		cell=ExcelExportUtil.createCell(row, 12, style);						
		cell.setCellValue(mul.getC_otv());
		cell=null;
		cell=ExcelExportUtil.createCell(row, 13, style);						
		cell.setCellValue(mul.getC_led());
		cell=null;
		cell=ExcelExportUtil.createCell(row, 14, style);						
		cell.setCellValue(mul.getC_mtv());
		cell=null;
		cell=ExcelExportUtil.createCell(row, 15, style);						
		cell.setCellValue(mul.getC_tv()+mul.getC_otv()+mul.getC_led()+mul.getC_mtv());
		cell=null;
		cell=ExcelExportUtil.createCell(row, 16, style);						
		cell.setCellValue(mul.getImpression_otv());
		cell=null;
		cell=ExcelExportUtil.createCell(row, 17, style);						
		cell.setCellValue(mul.getImpression_mtv());
		cell=null;
		row=null;
	}
	 */
	/**
	 * @author 刘庶
	 * 编写日期：2013-12-6
	 * 功能：建立输出表basic头部
	 * @param wb：wb
	 * @param sheet：sheet
	 * @param o:OutputBasic对象

	public static void insertBasicHead(HSSFWorkbook wb,HSSFSheet sheet,String target){
		sheet.setColumnWidth((short)0, (short)200);
		sheet.setColumnWidth((short)1, (short)4000);
		sheet.setColumnWidth((short)2, (short)4000);
		sheet.setColumnWidth((short)3, (short)5000);
		for(int c=4;c<14;c++){
			sheet.setColumnWidth((short)4, (short)3500);
		}
		insertBasicLine2(wb,sheet);
		insertBasicLine4(wb,sheet,target);
		insertBasicLine8And9(wb, sheet);
	}
	 */
	/**
	 * @author 刘庶
	 * 编写日期：2013-12-6
	 * 功能：建立输出表basic第2行
	 * @param wb：wb
	 * @param sheet：sheet
	 */
	private static void insertBasicLine2(HSSFWorkbook wb,HSSFSheet sheet){
		//建立第2行
		HSSFRow row=ExcelExportUtil.createRow(sheet, 2, 400);
		Font font=ExcelExportUtil.createFont(wb, HSSFFont.BOLDWEIGHT_BOLD, (short)8, (short)16);
		font.setFontName("宋体");
		CellStyle style=ExcelExportUtil.createCellStyle(wb, (short)9, (short)9, CellStyle.ALIGN_LEFT, font);
		HSSFCell cell=ExcelExportUtil.createCell(row, 2, style);						
		cell.setCellValue("基础信息");
	}
	
	/**
	 * @author 刘庶
	 * 编写日期：2013-12-6
	 * 功能：建立输出表basic第4行
	 * @param wb：wb
	 * @param sheet：sheet
	 * @param target:target
	 */
	private static void insertBasicLine4(HSSFWorkbook wb,HSSFSheet sheet,String target){
		//建立第4行
		HSSFRow row=ExcelExportUtil.createRow(sheet, 4, 300);
		Font font=ExcelExportUtil.createFont(wb, HSSFFont.BOLDWEIGHT_NORMAL, (short)8, (short)11);
		font.setFontName("宋体");
		CellStyle style=ExcelExportUtil.createCellStyle(wb, (short)9, (short)9, CellStyle.ALIGN_LEFT, font);
		HSSFCell cell=ExcelExportUtil.createCell(row, 2, style);						
		cell.setCellValue("Target:");
		cell=ExcelExportUtil.createCell(row, 4, style);						
		cell.setCellValue(target);
	}
	
	/**
	 * @author 刘庶
	 * 编写日期：2013-12-6
	 * 功能：建立输出表basic第8,9行
	 * @param wb：wb
	 * @param sheet：sheet
	 */
	private static void insertBasicLine8And9(HSSFWorkbook wb,HSSFSheet sheet){
		//建立第8行
		//第8行部分
		HSSFRow row=ExcelExportUtil.createRow(sheet, 8, 300);
		ExcelExportUtil.mergeCell(sheet, 8, 9, 2, 2);
		ExcelExportUtil.mergeCell(sheet, 8, 9, 3, 3);
		ExcelExportUtil.mergeCell(sheet, 8, 9, 4, 4);
		ExcelExportUtil.mergeCell(sheet, 8, 8, 5, 6);
		ExcelExportUtil.mergeCell(sheet, 8, 8, 7, 10);
		ExcelExportUtil.mergeCell(sheet, 8, 8, 11, 12);
		ExcelExportUtil.mergeCell(sheet, 8, 8, 13, 15);
		Font font=ExcelExportUtil.createFont(wb, HSSFFont.BOLDWEIGHT_NORMAL, (short)8, (short)11);
		font.setFontName("宋体");
		CellStyle style=ExcelExportUtil.createBorderCellStyle(wb, (short)22, (short)22, CellStyle.ALIGN_CENTER, font);
		style.setWrapText(true);    
		HSSFCell cell=ExcelExportUtil.createCell(row, 2, style);			
		cell.setCellValue("市场");
		cell=ExcelExportUtil.createCell(row, 3, style);			
		cell.setCellValue("Market");
		cell=ExcelExportUtil.createCell(row, 4, style);	
		cell.setCellValue("TA Total Population");
		cell=ExcelExportUtil.createCell(row, 5, style);	
		cell.setCellValue("电视（TV）");
		cell=ExcelExportUtil.createCell(row, 6, style);	
		
		cell=ExcelExportUtil.createCell(row, 7, style);	
		cell.setCellValue("在线视频（OTV）");
		cell=ExcelExportUtil.createCell(row, 8, style);	
		cell=ExcelExportUtil.createCell(row, 9, style);			
		cell=ExcelExportUtil.createCell(row, 10, style);	

		cell=ExcelExportUtil.createCell(row, 11, style);
		cell.setCellValue("楼宇屏（Office LCD）");
		cell=ExcelExportUtil.createCell(row, 12, style);
		
		cell=ExcelExportUtil.createCell(row, 13, style);
		cell.setCellValue("移动视频（MTV）");
		cell=ExcelExportUtil.createCell(row, 14, style);
		cell=ExcelExportUtil.createCell(row, 15, style);
		//第9行部分
		row=ExcelExportUtil.createRow(sheet, 9, 600);
		font=ExcelExportUtil.createFont(wb, HSSFFont.BOLDWEIGHT_NORMAL, (short)8, (short)11);
		font.setFontName("宋体");
		style=ExcelExportUtil.createBorderCellStyle(wb, (short)22, (short)22, CellStyle.ALIGN_CENTER, font);
		style.setWrapText(true);   
		cell=ExcelExportUtil.createCell(row, 2, style);	
		cell=ExcelExportUtil.createCell(row, 3, style);	
		cell=ExcelExportUtil.createCell(row, 4, style);

		cell=ExcelExportUtil.createCell(row, 5, style);
		cell.setCellValue("Penetration");		
		cell=ExcelExportUtil.createCell(row, 6, style);
		cell.setCellValue("Universe\r\n(000)");		
		cell=ExcelExportUtil.createCell(row, 7, style);
		cell.setCellValue("Penetration");		
		cell=ExcelExportUtil.createCell(row, 8, style);
		cell.setCellValue("Universe\r\n(000)");
		cell=ExcelExportUtil.createCell(row, 9, style);
		cell.setCellValue("Stable %");	
		cell=ExcelExportUtil.createCell(row, 10, style);
		cell.setCellValue("TA%");
		cell=ExcelExportUtil.createCell(row, 11, style);
		cell.setCellValue("Penetration");	
		cell=ExcelExportUtil.createCell(row, 12, style);
		cell.setCellValue("Universe\r\n(000)");
		cell=ExcelExportUtil.createCell(row, 13, style);
		cell.setCellValue("Penetration");	
		cell=ExcelExportUtil.createCell(row, 14, style);
		cell.setCellValue("Universe\r\n(000)");
		cell=ExcelExportUtil.createCell(row, 15, style);
		cell.setCellValue("TA%");
	}
	
	/**
	 * @author 刘庶
	 * 编写日期：2013-12-6
	 * 功能：建立输出表basic的数据行
	 * @param wb：wb
	 * @param sheet：sheet
	 * @param rowNum：行数
	 * @param mul:T_output_basic对象

	public static void insertBasicData(HSSFWorkbook wb,HSSFSheet sheet,int rowNum,T_output_basic ba,T_city city,Font font,CellStyle style){
        //插入数据
		HSSFRow row=ExcelExportUtil.createRow(sheet, rowNum, 300);
		
		HSSFCell cell=ExcelExportUtil.createCell(row, 2, style);
		cell.setCellValue(city.getCh_name());
		cell=ExcelExportUtil.createCell(row, 3, style);
		cell.setCellValue(city.getEn_name());
		cell=ExcelExportUtil.createCell(row,4, style);
		cell.setCellValue(ba.getPopulation());
		cell=ExcelExportUtil.createCell(row,5, style);
		cell.setCellValue(ba.getP_tv());
		cell=ExcelExportUtil.createCell(row,6, style);
		cell.setCellValue(ba.getU_tv());
		cell=ExcelExportUtil.createCell(row,7, style);
		cell.setCellValue(ba.getP_otv());
		cell=ExcelExportUtil.createCell(row,8, style);
		cell.setCellValue(ba.getU_otv());
		cell=ExcelExportUtil.createCell(row,9, style);
		cell.setCellValue(city.getStable());
		cell=ExcelExportUtil.createCell(row,10, style);
		cell.setCellValue(ba.getTa_otv());
		cell=ExcelExportUtil.createCell(row,11, style);
		cell.setCellValue(ba.getP_led());
		cell=ExcelExportUtil.createCell(row,12, style);
		cell.setCellValue(ba.getU_led());
		cell=ExcelExportUtil.createCell(row,13, style);
		cell.setCellValue(ba.getP_mtv());
		cell=ExcelExportUtil.createCell(row,14, style);
		cell.setCellValue(ba.getU_mtv());
		cell=ExcelExportUtil.createCell(row,15, style);
		cell.setCellValue(ba.getTa_mtv());
	}
	 */
	/**
	 * @author 刘庶
	 * 编写日期：2013-12-6
	 * 功能：建立输出表double的表头
	 * @param wb：wb
	 * @param sheet：sheet
	 * @param city：城市
	 * @param o:T_output_multiple对象

	public static void insertDoubleHead(HSSFWorkbook wb,HSSFSheet sheet,T_output_multiple o,String city){
		sheet.setColumnWidth((short)0, (short)200);
		for(int c=1;c<=200;c++){
			sheet.setColumnWidth((short)c, (short)2500);
		}
		//建立第2行
		HSSFRow row=ExcelExportUtil.createRow(sheet, 2, 400);
		Font font=ExcelExportUtil.createFont(wb, HSSFFont.BOLDWEIGHT_BOLD, (short)8, (short)16);
		font.setFontName("宋体");
		CellStyle style=ExcelExportUtil.createCellStyle(wb, (short)9, (short)9, CellStyle.ALIGN_LEFT, font);
		HSSFCell cell=ExcelExportUtil.createCell(row, 4, style);						
		cell.setCellValue("跨屏二维表");
		//建立第4行
		row=ExcelExportUtil.createRow(sheet, 4, 300);
		font=ExcelExportUtil.createFont(wb, HSSFFont.BOLDWEIGHT_NORMAL, (short)8, (short)11);
		font.setFontName("宋体");
		style=ExcelExportUtil.createCellStyle(wb, (short)9, (short)9, CellStyle.ALIGN_LEFT, font);
		cell=ExcelExportUtil.createCell(row, 4, style);						
		cell.setCellValue("Market:");
		cell=ExcelExportUtil.createCell(row, 6, style);	
		cell.setCellValue(city);
		//建立第5行
		row=ExcelExportUtil.createRow(sheet, 5, 300);
		cell=ExcelExportUtil.createCell(row, 4, style);						
		cell.setCellValue("Target:");
		cell=ExcelExportUtil.createCell(row, 6, style);
		String sex;
		if(o.getSex()==0){
			sex="P";
		}else if(o.getSex()==1){
			sex="M";
		}else{
			sex="F";
		}
		cell.setCellValue(sex+o.getAge());
		//建立第6行
		row=ExcelExportUtil.createRow(sheet, 6, 300);
		cell=ExcelExportUtil.createCell(row, 4, style);						
		cell.setCellValue("Universe Base：");
		cell=ExcelExportUtil.createCell(row, 6, style);						
		cell.setCellValue("TA Population");
	}
	 */
	/**
	 * @author 刘庶
	 * 编写日期：2013-12-6
	 * 功能：建立输出表double的x，y轴
	 * @param wb：wb
	 * @param sheet：sheet
	 * @param xsub：x轴对象集
	 * @param ysub：y轴对象集
	 * @param rowNum：起始行数
	 * @param maintitle：主标题
	 * @param subtitle：子标题
	 * @param xtitle：x轴子标题
	 * @param ytitle：y轴子标题
	 * @param penetration：y轴penetration
	 * @param ttl：y轴ttlImp

	public static void insertDoubleReachXY(HSSFWorkbook wb,HSSFSheet sheet,List<T_input_sub> xsub,List<T_input_sub> ysub,int rowNum,String maintitle,String subtitle,String xtitle,String ytitle,double penetration,List<Double> ttl){
		Font font=ExcelExportUtil.createFont(wb, HSSFFont.BOLDWEIGHT_BOLD, (short)8, (short)14);
		font.setFontName("Calibri");
		CellStyle style=ExcelExportUtil.createCellStyle(wb, (short)9, (short)9, CellStyle.ALIGN_LEFT, font);
		HSSFRow row=ExcelExportUtil.createRow(sheet, rowNum, 400);
		HSSFCell cell=ExcelExportUtil.createCell(row, 4, style);						
		cell.setCellValue(maintitle);
		
		font=ExcelExportUtil.createFont(wb, HSSFFont.BOLDWEIGHT_NORMAL, (short)8, (short)11);
		font.setFontName("Calibri");
		style=ExcelExportUtil.createBorderCellStyle(wb, (short)55, (short)55, CellStyle.ALIGN_RIGHT, font);
		//x轴
		row=ExcelExportUtil.createRow(sheet, rowNum+1, 300);
		cell=ExcelExportUtil.createCell(row, 4, style);	
		cell.setCellValue("");
		cell=ExcelExportUtil.createCell(row, 5, style);	
		cell.setCellValue(xtitle);
		for(int i=1;i<xsub.size();i++){
			cell=ExcelExportUtil.createCell(row, 5+i, style);	
			cell.setCellValue((int)xsub.get(i).getGrp());
		}
		//y轴
		row=ExcelExportUtil.createRow(sheet, rowNum+2, 300);
		cell=ExcelExportUtil.createCell(row, 4, style);	
		cell.setCellValue(ytitle);		
		cell=ExcelExportUtil.createCell(row, 5, style);	
		cell.setCellValue(subtitle);
		if(penetration!=0){
			font=ExcelExportUtil.createFont(wb, HSSFFont.BOLDWEIGHT_NORMAL, (short)8, (short)11);
			font.setFontName("Calibri");
			style=ExcelExportUtil.createCellStyle(wb, (short)9, (short)9, CellStyle.ALIGN_LEFT, font);
			cell=ExcelExportUtil.createCell(row, 3, style);	
			cell.setCellValue("IGRP(pop)");	
			cell=ExcelExportUtil.createCell(row, 2, style);	
			cell.setCellValue("TTL Imp");
		}
		font=ExcelExportUtil.createFont(wb, HSSFFont.BOLDWEIGHT_NORMAL, (short)8, (short)11);
		font.setFontName("Calibri");
		style=ExcelExportUtil.createBorderCellStyle(wb, (short)55, (short)55, CellStyle.ALIGN_RIGHT, font);
		
		Font font2=ExcelExportUtil.createFont(wb, HSSFFont.BOLDWEIGHT_NORMAL, (short)8, (short)11);
		font2.setFontName("Calibri");
		CellStyle style2=ExcelExportUtil.createCellStyle(wb, (short)9, (short)9, CellStyle.ALIGN_RIGHT, font);
		for(int i=1;i<ysub.size();i++){
			row=ExcelExportUtil.createRow(sheet, rowNum+2+i, 300);
			cell=ExcelExportUtil.createCell(row, 4, style);	
			cell.setCellValue((int)ysub.get(i).getGrp());
			if(penetration!=0){
				cell=ExcelExportUtil.createCell(row, 3, style2);	
				cell.setCellValue(DataFormatUtil.doubleRound(penetration*ysub.get(i).getGrp(), 3, BigDecimal.ROUND_HALF_UP));
				//TTL Imp
				cell=ExcelExportUtil.createCell(row, 2, style2);	
				cell.setCellValue(ttl.get(i));
			}
		}	
		
		//2013-13-27
		xsub=null;
		ysub=null;
	}
	 */
	/**
	 * @author 刘庶
	 * 编写日期：2013-12-6
	 * 功能：建立输出表double的x，y轴
	 * @param wb：wb
	 * @param sheet：sheet
	 * @param xsub：x轴对象集
	 * @param ysub：y轴对象集
	 * @param rowNum：起始行数
	 * @param maintitle：主标题
	 * @param subtitle：子标题
	 * @param xtitle：x轴子标题
	 * @param ytitle：y轴子标题
	 * @param penetration：y轴penetration

	public static void insertDoubleCostXY(HSSFWorkbook wb,HSSFSheet sheet,List<T_input_sub> xsub,List<T_input_sub> ysub,int rowNum,String maintitle,String subtitle,String xtitle,String ytitle,double penetration){
		Font font=ExcelExportUtil.createFont(wb, HSSFFont.BOLDWEIGHT_BOLD, (short)8, (short)14);
		font.setFontName("Calibri");
		CellStyle style=ExcelExportUtil.createCellStyle(wb, (short)9, (short)9, CellStyle.ALIGN_LEFT, font);
		HSSFRow row=ExcelExportUtil.createRow(sheet, rowNum, 400);
		HSSFCell cell=ExcelExportUtil.createCell(row, 4, style);						
		cell.setCellValue(maintitle);
		
		font=ExcelExportUtil.createFont(wb, HSSFFont.BOLDWEIGHT_NORMAL, (short)8, (short)11);
		font.setFontName("Calibri");
		style=ExcelExportUtil.createBorderCellStyle(wb, (short)55, (short)55, CellStyle.ALIGN_RIGHT, font);
		//x轴
		row=ExcelExportUtil.createRow(sheet, rowNum+1, 300);
		cell=ExcelExportUtil.createCell(row, 4, style);	
		cell.setCellValue("");
		cell=ExcelExportUtil.createCell(row, 5, style);	
		cell.setCellValue(xtitle);
		for(int i=1;i<xsub.size();i++){
			cell=ExcelExportUtil.createCell(row, 5+i, style);	
			cell.setCellValue((int)xsub.get(i).getGrp());
		}
		//y轴
		row=ExcelExportUtil.createRow(sheet, rowNum+2, 300);
		cell=ExcelExportUtil.createCell(row, 4, style);	
		cell.setCellValue(ytitle);		
		cell=ExcelExportUtil.createCell(row, 5, style);	
		cell.setCellValue(subtitle);
		if(penetration!=0){
			font=ExcelExportUtil.createFont(wb, HSSFFont.BOLDWEIGHT_NORMAL, (short)8, (short)11);
			font.setFontName("Calibri");
			style=ExcelExportUtil.createCellStyle(wb, (short)9, (short)9, CellStyle.ALIGN_LEFT, font);
			cell=ExcelExportUtil.createCell(row, 3, style);	
			cell.setCellValue("IGRP(pop)");	
		}
		font=ExcelExportUtil.createFont(wb, HSSFFont.BOLDWEIGHT_NORMAL, (short)8, (short)11);
		font.setFontName("Calibri");
		style=ExcelExportUtil.createBorderCellStyle(wb, (short)55, (short)55, CellStyle.ALIGN_RIGHT, font);
		
		Font font2=ExcelExportUtil.createFont(wb, HSSFFont.BOLDWEIGHT_NORMAL, (short)8, (short)11);
		font2.setFontName("Calibri");
		CellStyle style2=ExcelExportUtil.createCellStyle(wb, (short)9, (short)9, CellStyle.ALIGN_RIGHT, font);
		for(int i=1;i<ysub.size();i++){
			row=ExcelExportUtil.createRow(sheet, rowNum+2+i, 300);
			cell=ExcelExportUtil.createCell(row, 4, style);	
			cell.setCellValue((int)ysub.get(i).getGrp());
			if(penetration!=0){
				cell=ExcelExportUtil.createCell(row, 3, style2);	
				cell.setCellValue(DataFormatUtil.doubleRound(penetration*ysub.get(i).getGrp(), 3, BigDecimal.ROUND_HALF_UP));
				//TTL Imp
				cell=ExcelExportUtil.createCell(row, 2, style2);	
			}
		}	
		//2013-13-27
		xsub=null;
		ysub=null;
	}
	 */
	/**
	 * @author 刘庶
	 * 编写日期：2013-12-13
	 * 功能：建立输出表double的x轴第二行
	 * @param wb：wb
	 * @param sheet：sheet
	 * @param rowNum：起始行数
	 * @param xvalue：x轴第二行
	 * @param style：样式
	 */
	public static void insertDoubleXSecond(HSSFWorkbook wb,HSSFSheet sheet,int rowNum,List<Double> xvalue,CellStyle style){				
		HSSFRow row=sheet.getRow(rowNum-1);
		HSSFCell cell;	
		for(int i=6+1;i<xvalue.size()+6;i++){
			cell=ExcelExportUtil.createCell(row, i-1, style);	
			cell.setCellValue(xvalue.get(i-6));
		}
	}
	
	/**
	 * @author 刘庶
	 * 编写日期：2013-12-13
	 * 功能：建立输出表double的y轴第二列
	 * @param wb：wb
	 * @param sheet：sheet
	 * @param rowNum：起始行数
	 * @param xvalue：y轴第二列
	 * @param style：样式

	public static void insertDoubleYSecond(HSSFWorkbook wb,HSSFSheet sheet,int rowNum,List<Double> yvalue,CellStyle style){				
		HSSFRow row;
		HSSFCell cell;	
		for(int i=1;i<yvalue.size();i++){
			row=sheet.getRow(rowNum-2+i);
			cell=ExcelExportUtil.createCell(row, 5, style);	
			cell.setCellValue(yvalue.get(i));
		}
	}
	 */
	/**
	 * @author 刘庶
	 * 编写日期：2013-12-6
	 * 功能：建立输出表double的数据
	 * @param wb：wb
	 * @param sheet：sheet
	 * @param c：列坐标
	 * @param r：行坐标
	 * @param value：单元格数值
	 * @param style：单元格风格
	 */
	public static void insertDoubleValue(HSSFWorkbook wb,HSSFSheet sheet,int r,int c,double value,CellStyle style){
		HSSFRow row=sheet.getRow(r-1);
		HSSFCell cell=ExcelExportUtil.createCell(row, c, style);	
		cell.setCellValue(value);
	}

}