package net.skhu.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.skhu.document.SocialWorker;
import net.skhu.repository.SocialWorker.SocialWorkerRepository;
import net.skhu.utils.EncryptionUtils;

@Service
public class SocialWorkerService {

    @Autowired SocialWorkerRepository workerRepository;

    public SocialWorker login(String loginId, String password) {
        SocialWorker worker= workerRepository.findOneByLoginId(loginId);
        if(worker == null) return null;
        String pw= EncryptionUtils.encryptMD5(password);
        if(worker.getPassword().equals(pw)==false) return null;
        return worker;
    	
    }
}

