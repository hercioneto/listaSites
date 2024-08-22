/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Other/SQLTemplate.sql to edit this template
 */
/**
 * Author:  Professor
 * Created: 15 de ago. de 2024
 */

CREATE TABLE `sites` (
  `id` int(11) NOT NULL,
  `nomeSite` varchar(150) NOT NULL,
  `descricao` text NOT NULL,
  `link` varchar(150) NOT NULL,
  `cliques` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
ALTER TABLE `sites`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;