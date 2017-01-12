package com.netsong7.web.service;

import java.sql.SQLException;
import java.util.List;

import com.netsong7.web.model.Board;

public interface BoardService {
	public List getList() throws SQLException;
	public void write(Board board) throws SQLException;
	public Board findBySeq(int seq) throws SQLException;
	public void update(Board board) throws SQLException;
	public void delete(int seq) throws SQLException;
}
