<?php
class Library
{
    public function __construct()
    {
        $host = "localhost";
        $dbname = "wa_api";
        $username = "root";
        $password = "P@ssw0rd";
        $this->db = new PDO("mysql:host={$host};dbname={$dbname}", $username, $password);
    }
    // public function add_data_media($nama_siswa, $kelas, $alamat)
    // {
    //     $data = $this->db->prepare('INSERT INTO tb_siswa (nama_siswa,kelas,alamat) VALUES (?, ?, ?)');
        
    //     $data->bindParam(1, $nama_siswa);
    //     $data->bindParam(2, $kelas);
    //     $data->bindParam(3, $alamat);

    //     $data->execute();
    //     return $data->rowCount();
    // }
    // public function show()
    // {
    //     $query = $this->db->prepare("SELECT * FROM tb_siswa");
    //     $query->execute();
    //     $data = $query->fetchAll();
    //     return $data;
    // }

    // public function get_by_id($kd_siswa){
    //     $query = $this->db->prepare("SELECT * FROM tb_siswa where kd_siswa=?");
    //     $query->bindParam(1, $kd_siswa);
    //     $query->execute();
    //     return $query->fetch();
    // }

    public function update($reply,$id){
        $d = date("Y-m-d h:i:s");
        $query = $this->db->prepare('UPDATE media set reply=?, updated_at=? where id=?');
        
        $query->bindParam(1, $reply);
        $query->bindParam(2, $d);
        $query->bindParam(3, $id);

        $query->execute();
        return $query->rowCount();
    }

    // public function delete($kd_siswa)
    // {
    //     $query = $this->db->prepare("DELETE FROM tb_siswa where kd_siswa=?");

    //     $query->bindParam(1, $kd_siswa);

    //     $query->execute();
    //     return $query->rowCount();
    // }

}
?>