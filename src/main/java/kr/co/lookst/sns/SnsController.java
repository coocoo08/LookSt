package kr.co.lookst.sns;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.lookst.sns.domain.ProfileFeedDto;
import kr.co.lookst.sns.domain.SnsProfileDto;
import kr.co.lookst.sns.service.SnsService;

@Controller
@RequestMapping("/sns")
public class SnsController {
	
	@Autowired
	SnsService snsService;
	
	@GetMapping("/snsProfile")
	public String snsProfile(String member_id, Model m) {
		try {
			SnsProfileDto pro_info = snsService.getinfoselect(member_id);
			List<ProfileFeedDto> pro_feed = snsService.getProfileFeed(member_id);
			
			m.addAttribute("pro_info", pro_info);
			m.addAttribute("pro_feed", pro_feed);
			System.out.println(m);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "sns/snsProfile";
	}
	
	@GetMapping("/postUpload")
	public String postUpload() {
		return "sns/postUpload";
	}
	
	
}
