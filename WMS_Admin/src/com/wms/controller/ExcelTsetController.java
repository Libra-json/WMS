package com.wms.controller;


import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFCellStyle;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.wms.bean.Note;
import com.wms.bean.Test;
import com.wms.common.EncryptUtil;
import com.wms.common.PathService;
import com.wms.service.ExcelTsetService;

@Controller
@RequestMapping("/excel")
public class ExcelTsetController {
	
	@Resource
	private ExcelTsetService excelservice;
	
	/**
	 * 导出test测试表表格
	 * @param page
	 * @param rows
	 */
	@RequestMapping("/deriveExcel")
	public void customerExcel(HttpServletRequest request,HttpServletResponse response){
		 // 第一步，创建一个webbook，对应一个Excel文件  
        HSSFWorkbook wb = new HSSFWorkbook();  
        // 第二步，在webbook中添加一个sheet,对应Excel文件中的sheet  
        HSSFSheet sheet = wb.createSheet("导出测试表");  
        // 第三步，在sheet中添加表头第0行,注意老版本poi对Excel的行数列数有限制short  
        HSSFRow row = sheet.createRow(0);  
        // 第四步，创建单元格，并设置值表头 设置表头居中  
        HSSFCellStyle style = wb.createCellStyle();  
        style.setAlignment(HSSFCellStyle.ALIGN_CENTER); // 创建一个居中格式  
  
        HSSFCell cell = row.createCell(0);  
        cell.setCellValue("编号");  
        cell.setCellStyle(style);
        
        cell = row.createCell(1); 
        cell.setCellValue("姓名");  
        cell.setCellStyle(style);
        
        cell = row.createCell(2);  
        cell.setCellValue("班级");  
        cell.setCellStyle(style);  
        
        cell = row.createCell(3);  
        cell.setCellValue("笔试成绩");  
        cell.setCellStyle(style);  
        
        cell = row.createCell(4);  
        cell.setCellValue("机试成绩");  
        cell.setCellStyle(style);
        
        // 第五步，写入实体数据 实际应用中这些数据从数据库得到，  
		List<Test> list=excelservice.queryAll();
		//临时路径
    	String filePath = PathService.Path(request)+"\\"+"customer.xls";
        for (int i = 0; i < list.size(); i++)
        {  
            row = sheet.createRow((int) i + 1);  
            // 第四步，创建单元格，并设置值  
            row.createCell(0).setCellValue(i+1);  
            row.createCell(1).setCellValue(list.get(i).getName());  
            row.createCell(2).setCellValue(list.get(i).getBanji());
            row.createCell(3).setCellValue(list.get(i).getBscj()); 
            row.createCell(4).setCellValue(list.get(i).getJscj());
        }  
        // 第六步，将文件存到指定位置  
        try  
        {  
        	System.out.println(filePath);
        	FileOutputStream fout = new FileOutputStream(filePath);  
            wb.write(fout);
            fout.close();
            ServletContext context = request.getSession().getServletContext();  
		    //通过context方式直接获取文件的路径  
		    String path = context.getRealPath("/导出测试表.xls");  
		    //获取文件名  
		    String filename = path.substring(path.lastIndexOf("\\")+1);  
		    //将文件名进行URL编码  
		    filename = URLEncoder.encode(filename,"utf-8");  
		    //告诉浏览器用下载的方式打开图片  
		    response.setHeader("content-disposition", "attachment;filename="+filename);  
		    //将图片使用字节流的形式写给客户机  
			InputStream is = new FileInputStream(filePath); //从这个路径下读取文件 
		    OutputStream out = response.getOutputStream();  
		    byte[] buffer = new byte[1024];  
		    int len = 0;  
		    while((len=is.read(buffer))!=-1){  
		        out.write(buffer, 0, len);  
		    }
		    is.close();
		    out.close();
        }  
        catch (Exception e)
        {  
            e.printStackTrace();
        }finally {
        	File file = new File(filePath);
    	    file.delete();
		}
	}
	
	/**
	 * 导入test测试表表格
	 * @param page
	 * @param rows
	 * @throws IOException 
	 */
	@RequestMapping("toLead")
	@ResponseBody
	public Map<String, Object> toLeadExcel(HttpServletRequest request,HttpServletResponse response) throws IOException{
		Map<String , Object> map= new HashMap<>();
		MultipartHttpServletRequest mult = (MultipartHttpServletRequest) request;
		//获取文件
		MultipartFile file = mult.getFile("gain");
	    String fileName = file.getOriginalFilename();
	    String formatName = fileName.substring(fileName.lastIndexOf(".")+1);
	    //判断是否为excel文件	    
	    if("xls".equals(formatName) || "xlsm".equals(formatName) || "xlsx".equals(formatName)){
	    	File path=new File(request.getSession().getServletContext().getRealPath("/")+"upload");
			if(!path.exists()){
				path.mkdirs();
			}
			
			FileOutputStream fos=new FileOutputStream(path+"/"+fileName);
			
			fos.write(file.getBytes());
			fos.flush();
			fos.close();
			
			FileInputStream fileIn = new FileInputStream(path+"/"+fileName);
			//根据指定的文件输入流导入Excel从而产生Workbook对象
			Workbook wb0 = new HSSFWorkbook(fileIn);
			//获取Excel文档中的第一个表单
			Sheet sht0 = wb0.getSheetAt(0);
			//对Sheet中的每一行进行迭代
			for (Row r : sht0) {
				//如果当前行的行号（从0开始）未达到2（第三行）则从新循环
				if(r.getRowNum()<1){
					continue;
				}
				//创建实体类
				Test info=new Test();
				//取出当前行第1个单元格数据，并封装在info实体属性上
				if(r.getCell(1)!=null){
					info.setName(r.getCell(1).getStringCellValue());
				}
				if(r.getCell(2)!=null){
					info.setBanji(r.getCell(2).getStringCellValue());
				}
				if(r.getCell(3)!=null){
					info.setBscj(r.getCell(3).getStringCellValue());
				}
				if(r.getCell(4)!=null){
					info.setJscj(r.getCell(4).getStringCellValue());
				}
				excelservice.insertTest(info);
				File file2 = new File(path+"/"+fileName);
				file2.delete();
		    }
		    fileIn.close();
	    	map.put("result","1");
	    }else{
	    	map.put("result","2");
	    }
		return map;
	}
	
	
	/**
	 * 短信通知接口
	 * @param page
	 * @param rows
	 * @throws IOException 
	 */
	@RequestMapping("note")
	@ResponseBody
	public Map<String, Object> note(String mobile,String content){
		Map<String , Object> map= new HashMap<>();
		//连接超时及读取超时设置
		System.setProperty("sun.net.client.defaultConnectTimeout", "30000"); //连接超时：30秒
		System.setProperty("sun.net.client.defaultReadTimeout", "30000");	//读取超时：30秒
		
		//新建一个StringBuffer链接
		StringBuffer buffer = new StringBuffer();
		
		Note note = excelservice.selectNote();
		
		//String encode = "GBK"; //页面编码和短信内容编码为GBK。重要说明：如提交短信后收到乱码，请将GBK改为UTF-8测试。如本程序页面为编码格式为：ASCII/GB2312/GBK则该处为GBK。如本页面编码为UTF-8或需要支持繁体，阿拉伯文等Unicode，请将此处写为：UTF-8
		System.out.println(0);
		String encode = "UTF-8";
		System.out.println(1);
		String username = note.getUsername();  //用户名
		System.out.println(2);
		String password_md5 = EncryptUtil.encryption(note.getPassword());  //密码
		System.out.println(3);
		String mobiles = mobile;  //手机号,只发一个号码：13800000001。发多个号码：13800000001,13800000002,...N 。使用半角逗号分隔。
		System.out.println(4);
		String apikey = note.getApikey();  //apikey秘钥（请登录 http://m.5c.com.cn 短信平台-->账号管理-->我的信息 中复制apikey
		System.out.println(5);
		String contents = content;  //要发送的短信内容，特别注意：签名必须设置，网页验证码应用需要加添加【图形识别码】。
		System.out.println(6);
		try {
			
			String contentUrlEncode = URLEncoder.encode(contents,encode);  //对短信内容做Urlencode编码操作。注意：如
			
			//把发送链接存入buffer中，如连接超时，可能是您服务器不支持域名解析，请将下面连接中的：【m.5c.com.cn】修改为IP：【115.28.23.78】
			buffer.append("http://m.5c.com.cn/api/send/index.php?username="+username+"&password_md5="+password_md5+"&mobile="+mobiles+"&apikey="+apikey+"&content="+contentUrlEncode+"&encode="+encode);
			
			System.out.println(buffer); //调试功能，输入完整的请求URL地址
			
			//把buffer链接存入新建的URL中
			URL url = new URL(buffer.toString());

			//打开URL链接
			HttpURLConnection connection = (HttpURLConnection)url.openConnection();
			
			//使用POST方式发送
			connection.setRequestMethod("POST");

			//使用长链接方式
			connection.setRequestProperty("Connection", "Keep-Alive");
			
			//发送短信内容
			BufferedReader reader = new BufferedReader(new InputStreamReader(url.openStream()));
			
			//获取返回值
			String result = reader.readLine();
			System.out.println("=============>>>>>>>>>>>>>>>"+result);
			//输出result内容，查看返回值，成功为success，错误为error，详见该文档起始注释
			if(result.equals("success")){
				map.put("result", "success");
			}else{
				map.put("result", "fail");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return map;
	}
}
