-- Novo script Orion Lib arrastável para criações de hubs!
local OrionLib = loadstring(jogo:HttpGet(('https://pastebin.com/raw/WRUyYTdY')))()


Janela local = OrionLib:MakeWindow({
    Nome = "SEU HUB",
    HidePremium = falso,
    SaveConfig = verdadeiro,
    ConfigFolder = "Nome" — Coloque o nome do seu hub ou script aqui!
})

print("Executado com sucesso.") -- Apenas uma depuração

Guia local = Janela:CriarGuia({
    Nome = "Info",
    Ícone = "rbxassetid://1",
    PremiumOnly = falso
})

Seção local = Guia:AdicionarSeção({
    Nome = "Info"
})

jogador localName = jogo.Jogadores.JogadorLocal.Nome

Guia:AdicionarBotão({
    Nome = "Bem-vindo" .. playerName .. "! Este é o melhor hub!",
    Retorno de chamada = função()
    fim
})

Guia:AdicionarBotão({
    Nome = "Confira nosso servidor oficial do Discord na sua área de transferência.",
    Retorno de chamada = função()
        definirá a área de transferência("https://discord.gg/9vsvzS6mer")
        para a área de transferência("https://discord.gg/9vsvzS6mer")
  fim    
})

Guia:AdicionarBotão({
    Nome = "Rendimento Infinito",
    Retorno de chamada = função()
        loadstring(jogo:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
  fim    
})


Guia:AdicionarBotão({
    Nome = "Administrador sem nome",
    Retorno de chamada = função()
        loadstring(jogo:HttpGet("https://raw.githubusercontent.com/ltseverydayyou/Nameless-Admin/main/Source.lua"))()
  fim    
})