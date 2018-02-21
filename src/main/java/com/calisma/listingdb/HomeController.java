package com.calisma.listingdb;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import Properties.Urun;
import Utils.DB;

@Controller
public class HomeController {

	DB db = new DB();
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		List<Urun> ls = new ArrayList<Urun>();
		
		try {
			String q="select * from joinurunler;";
			ResultSet rs= db.baglan().executeQuery(q);
			while(rs.next()) {
				Urun u = new Urun();
				u.setUid(rs.getString(1));
				u.setUkid(rs.getString(2));
				u.setUkaid(rs.getString(3));
				u.setUadi(rs.getString(4));
				u.setUdetay(rs.getString(5));
				u.setUfiyat(rs.getString(6));
				u.setUtarih(rs.getString(7));
				u.setKaAdi(rs.getString(8));
				u.setKamAdi(rs.getString(9));
				
				ls.add(u);
			}
			model.addAttribute("ls", ls);
			
		} catch (Exception e) {
			System.err.println("Data Getirme Hatasý : " +e);
			
		}

		return "home";
	}

}
