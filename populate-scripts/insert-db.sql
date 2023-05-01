-- File used to insert new tasks into the DB

INSERT INTO tasks (id, from_platform, task_type, name, description, external_url, config) VALUES
(
    NULL,
    "PSHARPLAB",
    "EXPERIMENTAL",
    "Information Task",
    "The participant chooses between exploration and exploitation. They select a card from the deck and either (1) continue selecting a new card with a new value, or (2) select a selected card with known value",
    "",
    '{}'
);