package edu.cuc.culturaldev.common.excel;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.zip.ZipOutputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

import lombok.extern.slf4j.Slf4j;
@Slf4j
public class FileUtil {
//	public static final String FILEPATH="E:\\software\\test\\file\\";
//	public static final String DEVIDE="\\";
//	public static final String TEMPPATH="E:\\tmp";
	
//	public static final String FILEPATH="c:\\maxreach\\file\\";
//	public static final String DEVIDE="\\";
//	public static final String TEMPPATH="c:\\tmp";
	
	public static final String FILEPATH="/mnt/usr/local/files/";
	public static final String DEVIDE="/";
	public static final String TEMPPATH="/usr/tmp";
	
	public static int getFileType(String fileName){
		String fn=fileName.toLowerCase();
		if(fn.endsWith(".xlsx")||fn.endsWith(".xls")){
			return 0;
		}
		return 9;
	}
	
	/**
	   * ѹ���ļ�
	   * @param srcfile File[] ��Ҫѹ�����ļ��б�
	   * @param zipfile File    ѹ������ļ�
	   */
	public static void zipFiles(File[] srcfile, File zipfile) {
	    byte[] buf = new byte[1024];
	    try {
	      // Create the ZIP file
	      ZipOutputStream out = new ZipOutputStream(new FileOutputStream(zipfile));
	      // Compress the files
	      for (int i = 0; i < srcfile.length; i++) {
	        FileInputStream in = new FileInputStream(srcfile[i]);
	        // Add ZIP entry to output stream
	        out.putNextEntry(new ZipEntry(srcfile[i].getName()));
	        // Transfer bytes from the file to the ZIP file
	        int len;
	        while ( (len = in.read(buf)) > 0) {
	          out.write(buf, 0, len);
	        }
	        // Complete the entry
	        out.closeEntry();
	        in.close();
	      }
	      // Complete the ZIP file
	      out.close();
	      log.info("ѹ�����");
	    }
	    catch (IOException e) {
	      log.error("�ļ�ѹ������",e);
	    }
	}
	
    /**
     * ɾ�����ļ���ȫ���ļ�
     * @param folderPath �ļ�·��
     */
    public static void delFolder(String folderPath) {
	     try {
	        delAllFiles(folderPath); //ɾ����������������
	        String filePath = folderPath;
	        filePath = filePath.toString();
	        File myFilePath = new File(filePath);
	        myFilePath.delete(); //ɾ�����ļ���
	     } catch (Exception e) {
	    	 log.error("�ļ�ɾ������",e);
	     }
	}
	
    /**
     * ɾ���ļ���ȫ���ļ�
     * @param folderPath �ļ�·��
     */
    public static boolean delAllFiles(String path) {
        boolean flag = false;
        File file = new File(path);
        if (!file.exists()) {
            return flag;
        }
        if (!file.isDirectory()) {
            return flag;
        }
        String[] tempList = file.list();
        File temp = null;
        for (int i = 0; i < tempList.length; i++) {
           if (path.endsWith(File.separator)) {
              temp = new File(path + tempList[i]);
           } else {
               temp = new File(path + File.separator + tempList[i]);
           }
           if (temp.isFile()) {
              temp.delete();
           }
           if (temp.isDirectory()) {
              delAllFiles(path + DEVIDE + tempList[i]);//��ɾ���ļ���������ļ�
              delFolder(path + "DEVIDE" + tempList[i]);//��ɾ�����ļ���
              flag = true;
           }
        }
        return flag;
   }
	
}
