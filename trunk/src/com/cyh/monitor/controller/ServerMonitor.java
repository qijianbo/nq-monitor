package com.cyh.monitor.controller;
import com.cyh.monitor.module.ChartSeriesData;
import org.springframework.mock.web.MockHttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.text.SimpleDateFormat;
import java.util.*;

@Controller
@RequestMapping("data")
public class ServerMonitor{

    @RequestMapping("/helloWorld.html")
    @ResponseBody
    public Map<String,Object> helloWorld(){
        Map<String,Object> result = new HashMap<String, Object>();
        result.put("data",randomData());
        result.put("success",true);
        return result;
    }
    @RequestMapping(value = "/login.html",method = RequestMethod.GET)
    public ModelAndView login(){
        ModelAndView mav = new ModelAndView();
        mav.setViewName("login");
        mav.addObject("message", "Hello World!");
        return mav;
    }

    @RequestMapping(value = "/login.html",method = RequestMethod.POST)
    public String login(@RequestParam String name,@RequestParam String password, Model model){
        model.addAttribute("message", "密码错误");
        return "login";
    }


    private List<ChartSeriesData> randomData(){
        List<ChartSeriesData> result = new ArrayList<ChartSeriesData>();
        Calendar now = Calendar.getInstance();
        long elTime;
        now.set(Calendar.MINUTE, (int) (Math.floor(now.get(Calendar.MINUTE) / 5)*5));
        now.set(Calendar.SECOND,0);
        for (int i = 24*12; i >= 0; i--) {
            elTime =now.getTimeInMillis()-i*5*60*1000;
            ChartSeriesData el = new ChartSeriesData(elTime,getRandomData(),formatDate(elTime));
            result.add(el);
        }
        return result;
    }
    private String formatDate(long dateTime){
        return new SimpleDateFormat("yyyy-MM-dd HH:mm").format(new Date(dateTime));
    }
    private float getRandomData(){
        return (float) (Math.floor(Math.random() * (10000 - 8000 + 1) + 8000)/100);
    }
}
