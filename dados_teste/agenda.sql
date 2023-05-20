CREATE DATABASE agenda;

\c agenda

CREATE TABLE contato (
  codigo SERIAL PRIMARY KEY,
  nome VARCHAR(85),
  telefone VARCHAR(16),
  bloqueado BOOLEAN,
  data TIMESTAMP,
  observacoes TEXT
);

INSERT INTO contato (nome, telefone, bloqueado, data, observacoes) VALUES
  ('Aquiles', '1234567890', false, '2023-05-20 10:00:00', 'Herói grego, protagonista da Ilíada.'),
  ('Heitor', '9876543210', false, '2023-05-21 14:30:00', 'Príncipe troiano, grande guerreiro na Guerra de Troia.'),
  ('Ulisses', '5555555555', false, '2023-05-22 16:45:00', 'Rei de Ítaca, famoso pela astúcia e pela Odisseia.'),
  ('Agamenon', '9999999999', false, '2023-05-23 09:15:00', 'Líder grego, comandante da expedição contra Troia.'),
  ('Menelau', '7777777777', false, '2023-05-24 11:30:00', 'Rei de Esparta, marido de Helena, causa da Guerra de Troia.');
