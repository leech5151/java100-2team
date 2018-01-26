package java100.app.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java100.app.dao.MemberFileDao;
import java100.app.dao.MemberDao;
import java100.app.domain.Member;
import java100.app.domain.MemberUploadFile;
import java100.app.service.MemberService;

@Service
public class MemberServiceImpl implements MemberService {

    @Autowired MemberDao memberDao;
    @Autowired MemberFileDao memberFileDao;
    
    @Override
    public List<Member> list(int pageNo, int pageSize, Map<String, Object> options) {
        
        HashMap<String,Object> params = new HashMap<>();
        params.put("startIndex", (pageNo - 1) * pageSize);
        params.put("size", pageSize);
        
        if (options != null) {
            params.putAll(options);
        }
        
        return memberDao.findAll(params);
    }
    
    @Override
    public int getTotalCount() {
        return memberDao.countAll();
    }

    @Override
    public int add(Member member) {
        
        // insert를 하기 전에는 board의 no 프로퍼티 값은 0이다.
        // insert를 한 후에는 no 프로퍼티에 DB에서 생성한 값이 저장된다.
        int count = memberDao.insert(member);
        
        // 첨부파일 등록
        this.addFiles(member.getFiles(), member.getMemberNo());
        
        return count;
    }
    
    @Override
    public Member get(int no) {
        Member member = memberDao.findByNo(no);
        
        return member;
    }

    
    @Override
    public Member get(String email, String password) {
        
        HashMap<String,Object> params = new HashMap<>();
        params.put("email", email);
        params.put("password", password);
        
        return memberDao.findByEmailAndPassword(params);
    }
    
    @Override
    public int update(Member member) {
        
        int count = memberDao.update(member);
        
        // 기존의 게시물 첨부파일은 모두 지운다. 
        memberFileDao.deleteAllByMemberNo(member.getMemberNo());
        
        // 다시 게시물 첨부파일을 저장한다.
        addFiles(member.getFiles(), member.getMemberNo());
        
        return count;
    }
    @Override
    public int delete(int no) {
        
        memberFileDao.deleteAllByMemberNo(no);
        
        return memberDao.delete(no);
    }

    
    @Override
    public void addFiles(List<MemberUploadFile> files, int no) {
        for (MemberUploadFile file : files) {
            file.setMemberNo(no);
            memberFileDao.memberInsert(file);
        }
    }
}












