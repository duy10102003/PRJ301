package dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.AdminDao;
import DBContext.connectDB;
import model.Admin;

public class AdminDaoImpl extends connectDB implements AdminDao {

    @Override
    public void insert(Admin admin) {
        String sql = "INSERT INTO admin(username,password,name) VALUES (?,?,?)";
        new connectDB();
        Connection con = connectDB.getConnect();

        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, admin.getUsername());
            ps.setString(2, admin.getPassword());
            ps.setString(3, admin.getName());
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void delete(String id) {
        String sql = "Delete from admin where id=?";
        new connectDB();
        Connection con = connectDB.getConnect();
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, id);
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public Admin get(int id) {
        Admin admin = new Admin();
        String sql = "SELECT * FROM admin WHERE id=?";
        new connectDB();
        Connection con = connectDB.getConnect();

        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                admin.setId(rs.getInt("id"));
                admin.setUsername(rs.getString("username"));
                admin.setPassword(rs.getString("password"));
                admin.setName(rs.getString("name"));

                return admin;

            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public void edit(Admin admin) {
        String sql = "Update admin set username =?, password =?, name =? where id=?";

        new connectDB();
        Connection con = connectDB.getConnect();
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(4, admin.getId());
            ps.setString(1, admin.getUsername());
            ps.setString(2, admin.getPassword());
            ps.setString(3, admin.getName());
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public Admin get(String name) {
        return null;
    }

    @Override
    public List<Admin> getAll() {
        List<Admin> admins = new ArrayList<Admin>();
        String sql = "SELECT * FROM admin";
        Connection conn = connectDB.getConnect();

        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Admin admin = new Admin();

                admin.setId(rs.getInt("id"));
                admin.setUsername(rs.getString("username"));
                admin.setPassword(rs.getString("password"));
                admin.setName(rs.getString("name"));
                admins.add(admin);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return admins;
    }

    @Override
    public int numberOforder() {
        int count = 0;
        String sql = "SELECT count(*) FROM transactions where MONTH(created) = month(getDate())";
        Connection conn = connectDB.getConnect();
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                count = rs.getInt(1);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return count;
    }

    @Override
    public int numberOforderBefore() {
        int count = 0;

        String sql = "SELECT count(*) FROM transactions where MONTH(created) = month(getDate())-1";
        Connection conn = connectDB.getConnect();
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                count = rs.getInt(1);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return count;

    }

    @Override
    public double totalAmount() {
        double total = 0;
        String sql = "select sum(cast(amount as float)) from transactions group by month(created) having month(created) = month(getdate())";
        Connection conn = connectDB.getConnect();
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                total = rs.getInt(1);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return total;
    }

    @Override
    public double totalAmountBefore() {
        double total = 0;
        String sql = "select sum(cast(amount as float)) from transactions group by month(created) having month(created) = month(getdate())-1";
        Connection conn = connectDB.getConnect();
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                total = rs.getInt(1);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return total;

    }

    @Override
    public int numberOfPro() {
        int count = 0;
        String sql = "select sum(qty)\n"
                + "from ordered o inner join transactions t\n"
                + "on o.transaction_id = t.id\n"
                + "group by month(created) \n"
                + "having month(created) = month(getdate())";
        Connection conn = connectDB.getConnect();
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                count = rs.getInt(1);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return count;
    }

    @Override
    public int numberOfproBefore() {
        int count = 0;
        String sql = "select sum(qty)\n"
                + "from ordered o inner join transactions t\n"
                + "on o.transaction_id = t.id\n"
                + "group by month(created) \n"
                + "having month(created) = month(getdate())-1";
        Connection conn = connectDB.getConnect();
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                count = rs.getInt(1);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return count;
    }

    @Override
    public int sumQty(int catId) {
        int sum = 0;
        String sql = "select sum(qty)\n"
                + "from ordered o join product p on o.product_id = p.id\n"
                + "group by p.catalog_id\n"
                + "having p.catalog_id = ? ";
        Connection conn = connectDB.getConnect();
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, catId);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                sum = rs.getInt(1);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return sum;
    }

    @Override
    public double sumPrice(int catId) {
        double sumPrice = 0;
        String sql = "with [t] as (\n"
                + "select p.catalog_id, o.qty*cast(p.price as float) as total\n"
                + "from ordered o join product p on o.product_id = p.id \n"
                + ")\n"
                + "select sum(total) \n"
                + "from t group by catalog_id \n"
                + "having catalog_id = ?";
        Connection conn = connectDB.getConnect();
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, catId);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                sumPrice = rs.getDouble(1);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return sumPrice;
    }

    public static void main(String[] args) {
        AdminDaoImpl adminDao = new AdminDaoImpl();
        int sum1 = adminDao.sumQty(1);
        int sum2 = adminDao.sumQty(2);
        int sum3 = adminDao.sumQty(3);
        int sum4 = adminDao.sumQty(4);
        float per1 = sum1/sum2;
        double per2 = sum2/(sum1+sum2+sum3+sum4);
        double per3 = sum3/(sum1+sum2+sum3+sum4);
        double per4 = sum4/(sum1+sum2+sum3+sum4);
        
        System.out.println(per1);
    }

}
