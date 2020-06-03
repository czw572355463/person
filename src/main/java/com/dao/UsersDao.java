package com.dao;

import com.entity.Users;
import org.apache.ibatis.annotations.Param;
import java.util.List;
import java.util.Set;

/**
 * (Users)表数据库访问层
 *
 * @author makejava
 * @since 2020-05-26 13:13:50
 */
public interface UsersDao {

    /**
     * 通过ID查询单条数据
     *
     * @param uId 主键
     * @return 实例对象
     */
    Users queryById(Integer uId);

    /**
     * 查询指定行数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<Users> queryAllByLimit(@Param("offset") int offset, @Param("limit") int limit);


    /**
     * 通过实体作为筛选条件查询
     *
     * @param users 实例对象
     * @return 对象列表
     */
    List<Users> queryAll(Users users);

    /**
     * 新增数据
     *
     * @param users 实例对象
     * @return 影响行数
     */
    int insert(Users users);

    /**
     * 修改数据
     *
     * @param users 实例对象
     * @return 影响行数
     */
    int update(Users users);

    /**
     * 通过主键删除数据
     *
     * @param uId 主键
     * @return 影响行数
     */
    int deleteById(Integer uId);

    /**
     * 执行登陆操作
     * @param users
     * @return
     */
    Users login(Users users);

    Set<String> queryUserRoles(String userName);
    Set<String> queryUserPerms(String userName);
    Users queryByUsername(String userName);

}