package sec01.ex01;

import java.sql.Date;

public class StudentVO {
		private String id;
		private String username;
		private String univ;
		private String email;
		private String birth;

		public StudentVO() {
			System.out.println("studentVO 객체 생성");
		}
		public StudentVO(String id, String username, String univ, String email) {
			this.id = id;
			this.username = username;
			this.univ = univ;
			this.email = email;
		}
		public StudentVO(String id, String username, String univ, String email, String birth) {
			this.id = id;
			this.username = username;
			this.univ = univ;
			this.email = email;
			this.birth = birth;
		}
		public String getId() {
			return id;
		}
		public void setId(String id) {
			this.id = id;
		}
		public String getUsername() {
			return username;
		}
		public void setUsername(String username) {
			this.username = username;
		}
		public String getUniv() {
			return univ;
		}
		public void setUniv(String univ) {
			this.univ = univ;
		}
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		public String getBirth() {
			return birth;
		}
		public void setBirth(String birth) {
			this.birth = birth;
		}
	
}


