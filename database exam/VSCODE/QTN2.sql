DROP TABLE IF EXISTS dms_exam;
CREATE TABLE dms_exam (
    id VARCHAR(10),
    Name VARCHAR(100),
    Age VARCHAR(100),
    Address VARCHAR(100)
);

INSERT INTO dms_exam (id, Name, Age,Address)
VALUES
    ('1001', 'Rohan', '26',  'Delhi'),
    ('1002', 'Ankit', '30', 'Gurgaon' ),
    ('1003','Gaurav', '27', 'Mumbai'),
    ('1004', 'Raja', '32', 'Mumbai');

--SELECT * FROM dms_exam;
--SELECT id, Name FROM dms_exam
--WHERE id = '1004' AND Name = 'Raja';

--SELECT * FROM dms_exam
--WHERE Name LIKE 'R%';

--SELECT id, Name, Age FROM dms_exam
--ORDER BY id ASC, Name ASC, Age ASC;

--SELECT id, Name, Age FROM dms_exam
--ORDER BY id DESC, Name DESC, Age DESC;

SELECT DISTINCT Address FROM dms_exam
