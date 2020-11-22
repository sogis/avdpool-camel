COMMENT ON SCHEMA
    agi_dm01avso24
IS
    'Erfassungsmodell für die Daten der amtlichen Vermessung (DM01AVSO24LV95). Fragen: andrea.luescher@bd.so.ch, stefan.ziegler@bd.so.ch'
;

CREATE TABLE 
    agi_dm01avso24.CAMEL_MESSAGEPROCESSED 
    ( 
        id int GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
        processorName VARCHAR(255),
        messageId VARCHAR(255), 
        createdAt TIMESTAMP 
    )
;


GRANT USAGE ON SCHEMA agi_dm01avso24 TO public, gretl;

GRANT SELECT ON ALL TABLES IN SCHEMA agi_dm01avso24 TO public;

GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA agi_dm01avso24 TO gretl;
GRANT USAGE ON ALL SEQUENCES IN SCHEMA agi_dm01avso24 TO gretl;
