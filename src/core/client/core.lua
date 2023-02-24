-- CORE: É Usado para criar toda a parte funcional da nossa Aplicação/Resource

function fetchAPIData()
    fetchRemote(URL_API, function(responseData, error)
        local data = fromJSON(responseData)
        local results = data["results"]

        outputChatBox("Informações Climaticas.", 255, 255, 255, true)
        outputChatBox("Cidade: #FF0000"..results["city_name"], 255, 255, 255, true)
        outputChatBox("Data: #FF0000"..results["date"], 255, 255, 255, true)
        outputChatBox("Hora: #FF0000"..results["time"], 255, 255, 255, true)
        outputChatBox("Temperatura: #FF0000"..results["temp"].."#FFFFFF °C", 255, 255, 255, true)
        outputChatBox("Clima: #FF0000"..results["description"], 255, 255, 255, true)
    end)
end