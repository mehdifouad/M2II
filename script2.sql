-- Ecrire une requête afin de calculer la prime selon le nom complet de l'employé:
-- Pour les employés qui ont un nom qui se compose de moins de 6 caractères, la prime est de 2% du salaire annuel
-- Pour les employés qui ont un nom qui se compose de 6 à 10 caractères, la prime est de 4% du salaire annuel
-- Pour les employés qui ont un nom qui se compose de plus de 10 caractères, la prime est de 6% du salaire ann   

SELECT employee_id, first_name, last_name,job_id,salary*12 as "salaire actuel",
                                          case
                                          when (LENGTH(CONCAT(first_name,last_name))<6) THEN 12*salary*(1+0.02) 
                                          when (LENGTH(CONCAT(first_name,last_name)) BETWEEN  6 AND 10) THEN 12*salary*(1+0.04)
                                          when (LENGTH(CONCAT(first_name,last_name)) >10) THEN 12*salary*(1+0.06)
                                        END AS "salaire majoré"
FROM employees   