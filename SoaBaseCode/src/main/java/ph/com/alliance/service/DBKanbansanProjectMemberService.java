package ph.com.alliance.service;

import ph.com.alliance.entity.Project_Member;

public interface DBKanbansanProjectMemberService {

	public boolean createProjectMember(Project_Member pProjectMember);
	
	public Project_Member updateProjectMember(Project_Member pProjectMember);
	
	public void deleteProjectMember(Project_Member pProjectMember);
	
	public Project_Member selectProjectMember(Project_Member pProjectMember);
	
}
