package com.HuynhTrongNghia_webproject.Entity;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name = "concepts")
public class Concept implements Serializable{
	@Id
    Integer id;
    String content;
    @ManyToOne
	@JoinColumn(name = "Cateid")
    Cate cate;
    String image;
}
