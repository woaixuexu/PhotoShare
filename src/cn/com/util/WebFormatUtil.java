package cn.com.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.LinkedHashSet;
import java.util.concurrent.ConcurrentHashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * ͳһʱ���ʽ
 * @author ׿����
 *
 */
public class WebFormatUtil {
	
	/**
	 * ��ʱ������ת��Ϊ�ַ��� 201701011201-->2017-01-01 12:01
	 * @param time ����
	 * @return STieme ʱ������
	 */
	public String intToString(long time){
		if(time==0){
			return "0";
		}
		StringBuffer STime=new StringBuffer(time+"");
		STime.insert(4, "-");
		STime.insert(7, "-");
		if(time>100000000){
			STime.insert(10, " ");
			STime.insert(13, ":");
		}
		return STime.toString();
	}
	
	
	/**
	 * ���ַ���ת��Ϊʱ������ 2017-01-01 12:01-->201701011201
	 * @param time ����
	 * @return STieme ʱ������
	 */
	public long stringToInt(String time){
		StringBuffer STime=new StringBuffer(time);
		if(time.length()>12){
			STime.replace(13, 14, "");
			STime.replace(10, 11, "");
		}
		STime.replace(7, 8, "");
		STime.replace(4, 5, "");
		return Long.parseLong(STime.toString());
	}


	/**
	 * ��ȡʱ������ת��Ϊ���� 201701011201-->1��1��
	 * @param time ����
	 * @return STieme ʱ������
	 */
	public String getMonthAndDay(Long time){
		StringBuffer theTime=new StringBuffer(time+"");
		StringBuffer monthDay=new StringBuffer("");
		monthDay.append(Integer.parseInt((theTime.subSequence(4, 6).toString()))); 
		monthDay.append("��");
		monthDay.append(Integer.parseInt((theTime.subSequence(6, 8).toString())));
		monthDay.append("��");
		return monthDay.toString();
	}
	
	
	/**
	 * ��ȡʱ������ת��Ϊ���� 201701011201-->12:01
	 * @param time ����
	 * @return STieme ʱ������
	 */
	public String getHourAndMinute(Long time){
		StringBuffer theTime=new StringBuffer(time+"");
		StringBuffer hourMinute=new StringBuffer("");
		hourMinute.append((theTime.subSequence(8, 10).toString())); 
		hourMinute.append(":");
		hourMinute.append(theTime.subSequence(10, 12).toString());
		//sssssSystem.out.println(hourMinute.toString());
		return hourMinute.toString();
	}
	
	/**
	 * ��ȡ��ǰʱ��(��)���� 20170710
	 * @return int ��ǰʱ��
	 */
	public int getNowTimeSortInt(){
		Date nowDate=new Date();
		SimpleDateFormat format=new SimpleDateFormat("yyyyMMdd");
		return Integer.parseInt(format.format(nowDate).toString());
	}
	
	/**
	 * ��ȡ��ǰʱ��(��)���� 201707101112
	 * @return long ��ǰʱ��
	 */
	public long getNowTimeLongInt(){
		Date nowDate=new Date();
		SimpleDateFormat format=new SimpleDateFormat("yyyyMMddHHmm");
		return Long.parseLong(format.format(nowDate).toString());
	}
	

	/**
	 * ��ȡ��ǰʱ��(��)�ַ��� 2017-07-11
	 * @return String ��ǰʱ��
	 */
	public String getNowTimeSortString(){
		Date nowDate=new Date();
		SimpleDateFormat format=new SimpleDateFormat("yyyy-MM-dd");
		return format.format(nowDate).toString();
	}
	
	/**
	 * ��ȡ��ǰʱ��(��)�ַ��� 2017-07-11 12:00
	 * @return String ��ǰʱ��
	 */
	public String getNowTimeLongString(){
		Date nowDate=new Date();
		SimpleDateFormat format=new SimpleDateFormat("yyyy-MM-dd HH:mm");
		return format.format(nowDate).toString();
	}
	
	
	
	/**
	 * ���������ַ�����Ϣ����(����40���ַ�)
	 * @param StringLong
	 * @return
	 */
	public String getStarringShort(String StringLong){
		StringBuffer StarringShort=new StringBuffer("");
		if(StringLong.length()>40){
			StarringShort.append(StringLong.substring(0, 40));
			StarringShort.append("...");
		}else{
			StarringShort.append(StringLong);
		}
		return StarringShort.toString();
	}
	
	/**
	 * ��ȡ����µ�����
	 * @param day
	 * @return
	 */
	public int  getNextMonth(int day) {
		String Time=day+"";
		SimpleDateFormat sdf=new SimpleDateFormat("yyyyMMdd");
		Date date = null;
		try {
			date = sdf.parse(Time);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}//���ַ�������תΪdate����
		Calendar offerCal=Calendar.getInstance();//��date����תcalendar����
		offerCal.setTime(date);//��offerCal����date��ֵ
		offerCal.add(Calendar.MONTH, 1);
		//System.out.println(offerCal.DAY_OF_WEEK);
		Time=sdf.format(offerCal.getTime());
		return Integer.parseInt(Time);
		
	}
	
	/**
	 * ��ȡ�ϸ��µ�����
	 * @param day
	 * @return
	 */
	public int  getlastMonth(int day) {
		String Time=day+"";
		SimpleDateFormat sdf=new SimpleDateFormat("yyyyMMdd");
		Date date=null;
		try {
			date = sdf.parse(Time);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}//���ַ�������תΪdate����
		Calendar offerCal=Calendar.getInstance();//��date����תcalendar����
		offerCal.setTime(date);//��offerCal����date��ֵ
		offerCal.add(Calendar.MONTH, -1);
		//System.out.println(offerCal.DAY_OF_WEEK);
		Time=sdf.format(offerCal.getTime());
		return Integer.parseInt(Time);
		
	}
	
	public long getnextThreeDay(){
		String Time=this.getNowTimeSortInt()+"";
		//System.out.println(Time);
		SimpleDateFormat sdf=new SimpleDateFormat("yyyyMMdd");
		Date date=null;
		try {
			date = sdf.parse(Time);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}//���ַ�������תΪdate����
		Calendar offerCal=Calendar.getInstance();//��date����תcalendar����
		offerCal.setTime(date);//��offerCal����date��ֵ
		offerCal.add(Calendar.DAY_OF_MONTH,3);
		//System.out.println(offerCal.DAY_OF_WEEK);
		Time=sdf.format(offerCal.getTime());
		
		return Long.parseLong(Time)*10000+800;
		
	}
	
	/**
	 * ��ȡ�ڶ���ʱ��
	 * @return
	 */
	public long getnextDay(){
		String Time=this.getNowTimeSortInt()+"";
		//System.out.println(Time);
		SimpleDateFormat sdf=new SimpleDateFormat("yyyyMMdd");
		Date date=null;
		try {
			date = sdf.parse(Time);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}//���ַ�������תΪdate����
		Calendar offerCal=Calendar.getInstance();//��date����תcalendar����
		offerCal.setTime(date);//��offerCal����date��ֵ
		offerCal.add(Calendar.DAY_OF_MONTH,1);
		//System.out.println(offerCal.DAY_OF_WEEK);
		Time=sdf.format(offerCal.getTime());
		
		return Long.parseLong(Time)*10000+800;
		
	}
}
