USE praktikum_web;
INSERT INTO program_studi (nama_prodi) VALUES
 ('Teknik Informatika'),
 ('Teknik Mesin');
INSERT INTO mahasiswa
 (nim, nama, email, usia, program_studi_id)
VALUES
 ('2401020159', 'Dimaz',
 'dimaz@example.com', 20, 1),
 ('2401020160', 'zamid',
 'zamid@example.com', 19, 1),
 ('2401020161', 'midaz',
 'midaz@example.com', 21, 2),
 ('2401020162', 'Data Sementara',
 'sementara@example.com', 18, 2);
UPDATE mahasiswa
SET email = 'Dimaz@example.com'
WHERE nim = '2401020159';
DELETE FROM mahasiswa
WHERE nim = '2401020162';
SELECT m.nim, m.nama, m.email, m.usia,
 p.nama_prodi
FROM mahasiswa AS m
JOIN program_studi AS p
 ON p.id = m.program_studi_id
ORDER BY m.nim;