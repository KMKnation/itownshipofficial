package com.itownship.iForum;

public class Forum {
				
		private int post_id;
		private  String post_title;
		private String post_desc;
		private String lastpost;
		private String block_name;
		private int post_views;
		private String post_author;
		
		
		public Forum(){
			
		}
		
		public Forum(int post_id, String post_title,
				String post_desc, String lastpost, String block_name,
				int post_views, String post_author) {
			super();
			this.post_id = post_id;
			this.post_title = post_title;
			this.post_desc = post_desc;
			this.lastpost = lastpost;
			this.block_name = block_name;
			this.post_views = post_views;
			this.post_author = post_author;
		}
		
		public int getPost_id() {
			return post_id;
		}
		public void setPost_id(int post_id) {
			this.post_id = post_id;
		}
		
		public String getPost_title() {
			return post_title;
		}
		public void setPost_title(String post_title) {
			this.post_title = post_title;
		}
		public String getPost_desc() {
			return post_desc;
		}
		public void setPost_desc(String post_desc) {
			this.post_desc = post_desc;
		}
		public String getLastpost() {
			return lastpost;
		}
		public void setLastpost(String lastpost) {
			this.lastpost = lastpost;
		}
		public String getBlock_name() {
			return block_name;
		}
		public void setBlock_name(String block_name) {
			this.block_name = block_name;
		}

		public int getPost_views() {
			return post_views;
		}

		public void setPost_views(int post_views) {
			this.post_views = post_views;
		}

		public String getPost_author() {
			return post_author;
		}

		public void setPost_author(String post_author) {
			this.post_author = post_author;
		}
	
		
}
