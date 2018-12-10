package com.service.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

import com.entity.News;
import com.service.NewsService;
import com.util.DataSourceUtils;

public class NewsServiceImpl implements NewsService {

	private static Logger logger = Logger.getLogger(NewsServiceImpl.class.getName());

	// 返回一个新闻集合
	@Override
	public List<News> listNews() {
		List<News> newsList = new ArrayList<>();
		String sql = "SELECT * FROM news";
		try (Connection conn = DataSourceUtils.getConnection();
				PreparedStatement st = conn.prepareStatement(sql);
				ResultSet rs = st.executeQuery()) {
			while (rs.next()) {
				News news = new News();
				news.setId(rs.getInt("id"));
				news.setTitle(rs.getString("title"));
				news.setContent(rs.getString("content"));
				news.setInsertdate(rs.getDate("insertdate"));
				news.setOutline(rs.getString("outline"));

				newsList.add(news);
			}
		} catch (SQLException e) {
			// TODO: handle exception
			logger.warning(e.getMessage());
		}
		return newsList;
	}

	// 向数据库中添加新闻
	@Override
	public void addNews(String title, String outline, String content) {
		String sql = "INSERT INTO news(title,outline,content) VALUES(?,?,?)";
		try (Connection conn = DataSourceUtils.getConnection(); PreparedStatement st = conn.prepareStatement(sql)) {
			st.setString(1, title);
			st.setString(2, outline);
			st.setString(3, content);
			st.executeUpdate();
		} catch (SQLException e) {
			// TODO: handle exception
			logger.warning(e.getMessage());
		}
	}

	// 更新数据库中的新闻
	@Override
	public void updateNews(News news) {
		String sql = "UPDATE news SET title=? ,outline=? ,content=? WHERE id=?";
		try (Connection conn = DataSourceUtils.getConnection(); PreparedStatement st = conn.prepareStatement(sql)) {
			st.setString(1, news.getTitle());
			st.setString(2, news.getOutline());
			st.setString(3, news.getContent());
			st.setInt(4, news.getId());
			st.executeUpdate();
		} catch (SQLException e) {
			// TODO: handle exception
			logger.warning(e.getMessage());
		}

	}

	// 从数据库中读取指定的新闻
	@Override
	public News getNews(int id) {
		News news = null;
		String sql = "SELECT * FROM news WHERE id=?";
		try (Connection conn = DataSourceUtils.getConnection(); PreparedStatement st = conn.prepareStatement(sql)) {
			st.setInt(1, id);
			try (ResultSet rs = st.executeQuery()) {
				while (rs.next()) {
					news = new News();
					news.setId(rs.getInt("id"));
					news.setTitle(rs.getString("title"));
					news.setOutline(rs.getString("outline"));
					news.setContent(rs.getString("content"));
					news.setInsertdate(rs.getDate("insertdate"));
				}
			}
		} catch (SQLException e) {
			// TODO: handle exception
			logger.warning(e.getMessage());
		}
		return news;

	}
	
	// 从数据库中删除指定新闻
	public void deteleNews(int id) {
		String sql = "DELETE FROM news WHERE id = ?";
		try (Connection conn = DataSourceUtils.getConnection();
				PreparedStatement st = conn.prepareStatement(sql)) {
			st.setInt(1, id);
			st.executeUpdate();
		} catch (SQLException e) {
			// TODO: handle exception
			logger.warning(e.getMessage());
		}
	}

}
