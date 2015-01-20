package edu.cuc.culturaldev.common.captcha;

import com.octo.captcha.service.image.ImageCaptchaService;

public interface CustomImageCaptchaService extends ImageCaptchaService{
	
	public void removeCaptcha(String sessionId);

}
