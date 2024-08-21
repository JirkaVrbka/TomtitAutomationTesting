*** Keywords ***
New keyword
    Fail
    WHILE    TRUE
    ${defadfdfult}    Convert To Boolean        dv
    ${default}    Call Method        sd    sf
    END
    END    ${default}    Convert To Boolean
    IF    empty condition
        ${default}    Convert To Boolean
    END