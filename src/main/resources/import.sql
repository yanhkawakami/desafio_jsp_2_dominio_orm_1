-- Inserção na tabela de categorias
INSERT INTO tb_category (id, description) VALUES (1, 'Curso');
INSERT INTO tb_category (id, description) VALUES (2, 'Oficina');

-- Inserção na tabela de participantes
INSERT INTO tb_participant (id, email, name) VALUES (1, 'jose@gmail.com', 'José Silva');
INSERT INTO tb_participant (id, email, name) VALUES (2, 'tiago@gmail.com', 'Tiago Faria');
INSERT INTO tb_participant (id, email, name) VALUES (3, 'maria@gmail.com', 'Maria do Rosário');
INSERT INTO tb_participant (id, email, name) VALUES (4, 'teresa@gmail.com', 'Teresa Silva');

-- Inserção na tabela de atividades
INSERT INTO tb_activity (category_id, id, price, description, name) VALUES (1, 1, 80.0, 'Aprenda HTML de forma prática', 'Curso de HTML');
INSERT INTO tb_activity (category_id, id, price, description, name) VALUES (2, 2, 50.0, 'Controle versões de seus projetos', 'Oficina de Github');

-- Inserção na tabela de relacionamento atividade-participante
INSERT INTO tb_activity_participant (activity_id, participant_id) VALUES (1, 1);
INSERT INTO tb_activity_participant (activity_id, participant_id) VALUES (1, 2);
INSERT INTO tb_activity_participant (activity_id, participant_id) VALUES (1, 3);
INSERT INTO tb_activity_participant (activity_id, participant_id) VALUES (2, 1);
INSERT INTO tb_activity_participant (activity_id, participant_id) VALUES (2, 3);
INSERT INTO tb_activity_participant (activity_id, participant_id) VALUES (2, 4);

-- Inserção na tabela de blocos
INSERT INTO tb_slot (activity_id, id, end_time, start_time) VALUES (1, 1, TIMESTAMP WITH TIME ZONE '2017-09-25T11:00:00', TIMESTAMP WITH TIME ZONE '2017-11-25T08:00:00');
INSERT INTO tb_slot (activity_id, id, end_time, start_time) VALUES (2, 2, TIMESTAMP WITH TIME ZONE '2017-09-25T18:00:00', TIMESTAMP WITH TIME ZONE '2017-11-25T14:00:00');
INSERT INTO tb_slot (activity_id, id, end_time, start_time) VALUES (2, 3, TIMESTAMP WITH TIME ZONE '2017-09-26T11:00:00', TIMESTAMP WITH TIME ZONE '2017-11-26T08:00:00');