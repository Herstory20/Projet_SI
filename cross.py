def cross(asm_code):
    cross_code = []
    cross_code_line = 0
    
    for index, line in enumerate(asm_code):
        parts = line.split(' ')
        
        if parts[0] == 'ADD':
            cross_code_line += 4
            cross_line = f"load 0 {parts[2]}"
            cross_code.append(cross_line)

            cross_line = f"load 1 {parts[3]}"
            cross_code.append(cross_line)

            cross_line = f"add 0 0 1"
            cross_code.append(cross_line)

            cross_line = f"store {parts[1]} 0"
            cross_code.append(cross_line)

        if parts[0] == 'MUL':
            cross_code_line += 4
            cross_line = f"load 0 {parts[2]}"
            cross_code.append(cross_line)

            cross_line = f"load 1 {parts[3]}"
            cross_code.append(cross_line)

            cross_line = f"mul 0 0 1"
            cross_code.append(cross_line)

            cross_line = f"store {parts[1]} 0"
            cross_code.append(cross_line)
        
        if parts[0] == 'SUB':
            cross_code_line += 4
            cross_line = f"load 0 {parts[2]}"
            cross_code.append(cross_line)

            cross_line = f"load 1 {parts[3]}"
            cross_code.append(cross_line)

            cross_line = f"sub 0 0 1"
            cross_code.append(cross_line)

            cross_line = f"store {parts[1]} 0"
            cross_code.append(cross_line)
        
        if parts[0] == 'COP':
            cross_code_line += 2
            cross_line = f"load 0 {parts[2]}"
            cross_code.append(cross_line)

            cross_line = f"store {parts[1]} 0"
            cross_code.append(cross_line)

        if parts[0] == 'AFC':
            cross_code_line += 2
            cross_line = f"afc 0 {parts[2]}"
            cross_code.append(cross_line)

            cross_line = f"store {parts[1]} 0"
            cross_code.append(cross_line)

        if parts[0] == 'INF':
            cross_code_line += 3
            cross_line = f"load 0 {parts[1]}"
            cross_code.append(cross_line)

            cross_line = f"load 1 {parts[2]}"
            cross_code.append(cross_line)

            cross_line = f"subi 0 0 1"
            cross_code.append(cross_line)

        if parts[0] == 'SUP':
            cross_code_line += 3
            cross_line = f"load 0 {parts[1]}"
            cross_code.append(cross_line)

            cross_line = f"load 1 {parts[2]}"
            cross_code.append(cross_line)

            cross_line = f"subs 0 0 1"
            cross_code.append(cross_line)

        if parts[0] == 'INFE':
            cross_code_line += 3
            cross_line = f"load 0 {parts[1]}"
            cross_code.append(cross_line)

            cross_line = f"load 1 {parts[2]}"
            cross_code.append(cross_line)

            cross_line = f"subie 0 0 1"
            cross_code.append(cross_line)

        if parts[0] == 'SUPE':
            cross_code_line += 3
            cross_line = f"load 0 {parts[1]}"
            cross_code.append(cross_line)

            cross_line = f"load 1 {parts[2]}"
            cross_code.append(cross_line)

            cross_line = f"subse 0 0 1"
            cross_code.append(cross_line)

        if parts[0] == 'NEQ':
            cross_code_line += 3
            cross_line = f"load 0 {parts[1]}"
            cross_code.append(cross_line)

            cross_line = f"load 1 {parts[2]}"
            cross_code.append(cross_line)

            cross_line = f"subne 0 0 1"
            cross_code.append(cross_line)

        if parts[0] == 'EQU':
            cross_code_line += 3
            cross_line = f"load 0 {parts[1]}"
            cross_code.append(cross_line)

            cross_line = f"load 1 {parts[2]}"
            cross_code.append(cross_line)

            cross_line = f"sube 0 0 1"
            cross_code.append(cross_line)

        if parts[0] == 'JMPF':
            cross_code_line += 2
            line = cross_code_line 

            cross_line = f"load 0 {parts[1]}"
            cross_code.append(cross_line)

            for i in range(index+1, int(parts[2])-1):
                
                asm = asm_code[i].split(' ')
                print(asm)
                op = asm[0]
                if op == 'ADD' or op == 'MUL' or op == 'SUB' :
                    line += 4
                if op == 'AFC' or op == 'COP':
                    line += 2
                if op == 'SUP' or op == 'INF' or op == 'SUPE' or op == 'INFE' or op == 'NEQ' or op == 'EQU':
                    line += 3
                if op == 'JMPF':
                    line += 2
                if op == 'JMP':
                    line += 1
            cross_line = f"jumpf 0 {line}"
            cross_code.append(cross_line)

        if parts[0] == 'JMP':
            cross_code_line += 2
            line = cross_code_line 

            for i in range(index+1, int(parts[1])-1):
                asm = asm_code[i].split(' ')
                op = asm[0]
                if op == 'ADD' or op == 'MUL' or op == 'SUB' :
                    line += 4
                if op == 'AFC' or op == 'COP':
                    line += 2
                if op == 'SUP' or op == 'INF' or op == 'SUPE' or op == 'INFE' or op == 'NEQ' or op == 'EQU':
                    line += 3
                if op == 'JMPF':
                    line += 2
                if op == 'JMP':
                    line += 1
            cross_line = f"jump {line}"
            cross_code.append(cross_line)

    return cross_code



def add_zero_to_hex(hex_number):
    if len(hex_number) == 1:  # Vérifie si le nombre est composé d'un seul chiffre
        hex_number = "0" + hex_number  # Ajoute un zéro devant le nombre
        
    return hex_number

def hex(cross):
    hex_code = {
     "add": "01" ,
     "mul": "02" ,
     "sub": "03" ,
     "cop": "05" ,
     "afc": "06" ,
     "load": "07" ,
     "store": "08" ,
     "subi": "09" ,
     "subs": "0A" ,
     "subie": "0B" ,
     "subse": "0C" ,
     "subne": "0D" ,
     "sube": "0E" ,
     "jumpf": "0F" ,
     "jump": "10" 
}
    hexadecimal_code = []
    
    for line in cross:
        part = line.split(' ')
        instruction = part[0]
        if part[0] == 'add' or part[0] == 'mul' or part[0] == 'sub' or part[0] == 'subi' or part[0] == 'subs' or part[0] == 'subie' or part[0] == 'subse' or  part[0] == 'sube' or part[0] == 'subne':
            code = hex_code[instruction]
            hex_line = f"{add_zero_to_hex(part[1])}{code}{add_zero_to_hex(part[2])}{add_zero_to_hex(part[3])}"

        if part[0] == 'load' or part[0] == 'store' or part[0] == 'afc' or part[0] == 'jumpf':
            code = hex_code[instruction]
            hex_line = f"{add_zero_to_hex(part[1])}{code}{add_zero_to_hex(part[2])}00"
        
        if part[0] == 'jump':
            code = hex_code[instruction]
            hex_line = f"{add_zero_to_hex(part[1])}{code}0000"

        hexadecimal_code.append(hex_line)
        
    return hexadecimal_code


asm_code = [
    'ADD 1 2 3',
    'MUL 4 5 6',
    'COP 8 10',
    'AFC 11 12',
    'INF 13 14', 
    'JMP 10',
    'ADD 1 2 3',
    'MUL 4 5 6',
    'COP 8 10',
    'AFC 11 12',
    'INF 13 14',  
]

cross_code = cross(asm_code)
hex_code = hex(cross_code)

"""
for index,line in enumerate(cross_code):
    print(index," : ",line)

print("---------------------------------------")

for index,line in enumerate(hex_code):
    print(index," : ",line)  
"""

def cross_compiler(asm_code):
    cross_code = cross(asm_code)
    hex_code = hex(cross_code)
    return hex_code

hexa = cross_compiler(asm_code)
for index,line in enumerate(hexa):
    print(index," : ",line) 

