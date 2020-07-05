package com.itownship.taskmanager;
public class Task {
	
	private int mem_id;
	private int chr_id;
	private String task_desc;
	private String priority;
	private int progress;
	private String deadline;
	
	
	
	public Task() {
		super();
	}


	public Task(int mem_id, int chr_id, String task_desc, String priority, int progress, String deadline) {
		super();
		this.mem_id = mem_id;
		this.chr_id = chr_id;
		this.task_desc = task_desc;
		this.priority = priority;
		this.progress = progress;
		this.deadline = deadline;
	}
	
	
	public int getMem_id() {
		return mem_id;
	}
	public void setMem_id(int mem_id) {
		this.mem_id = mem_id;
	}
	public int getChr_id() {
		return chr_id;
	}
	public void setChr_id(int chr_id) {
		this.chr_id = chr_id;
	}
	public String getTask_desc() {
		return task_desc;
	}
	public void setTask_desc(String task_desc) {
		this.task_desc = task_desc;
	}
	public String getPriority() {
		return priority;
	}
	public void setPriority(String priority) {
		this.priority = priority;
	}
	public int getProgress() {
		return progress;
	}
	public void setProgress(int progress) {
		this.progress = progress;
	}
	public String getDeadline() {
		return deadline;
	}
	public void setDeadline(String deadline) {
		this.deadline = deadline;
	}
	
	

}
