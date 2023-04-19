package com.HuynhTrongNghia_webproject.Entity;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import lombok.Data;

@SuppressWarnings("serial")
@Data
@Entity
@Table(name = "Lawyers")
public class Law implements Serializable{
    @Id
    Integer id;
    String fullname;
    String image;
    String infomation;
    @ManyToOne
	@JoinColumn(name = "Cateid")
    Cate cate;
    String linkchat;
    String email;
}
