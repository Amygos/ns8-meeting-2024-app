*** Settings ***
Library    SSHLibrary

*** Test Cases ***
Check if meeting-2024-app is installed correctly
    ${output}  ${rc} =    Execute Command    add-module ${IMAGE_URL} 1
    ...    return_rc=True
    Should Be Equal As Integers    ${rc}  0
    &{output} =    Evaluate    ${output}
    Set Suite Variable    ${module_id}    ${output.module_id}

Check if meeting-2024-app can be configured
    ${rc} =    Execute Command    api-cli run module/${module_id}/configure-module --data '{"domain": "app.example.com", "timezone": "Europe/Berlin"}'
    ...    return_rc=True  return_stdout=False
    Should Be Equal As Integers    ${rc}  0

Check if meeting-2024-app works as expected
    ${rc} =    Execute Command    curl -fk -resolve 'app.example.com:443:127.0.0.1' https://app.example.com/shopping-list
    ...    return_rc=True
    Should Be Equal As Integers    ${rc}  0

Check if meeting-2024-app is removed correctly
    ${rc} =    Execute Command    remove-module --no-preserve ${module_id}
    ...    return_rc=True  return_stdout=False
    Should Be Equal As Integers    ${rc}  0
