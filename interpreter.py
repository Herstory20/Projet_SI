class Interpreter:
    def __init__(self):
        self.registers = [0] * 8  # 16 registres
        self.program_counter = 0  # Compteur programme (adresse de l'instruction en cours)

    def parse_instruction(self, instruction):
        parts = instruction.split()
        opcode = parts[0]
        operands = list(map(int, parts[1:]))
        return opcode, operands

    def execute(self, opcode, operands):
        if opcode == 'ADD':
            reg1, reg2, reg3 = operands
            self.registers[reg1] = self.registers[reg2] + self.registers[reg3]
            
        elif opcode == 'MUL':
            reg1, reg2, reg3 = operands
            self.registers[reg1] = self.registers[reg2] * self.registers[reg3]
        elif opcode == 'SUB':
            reg1, reg2, reg3 = operands
            self.registers[reg1] = self.registers[reg2] - self.registers[reg3]
        elif opcode == 'AFC':
            reg, value = operands
            self.registers[reg] = value
        elif opcode == 'COP':
            reg1, reg2 = operands
            self.registers[reg1] = self.registers[reg2]
        elif opcode == 'INF':
            reg1, reg2 = operands
            if self.registers[reg1] < self.registers[reg2]:
                self.registers[reg1] = 1
            else:
                self.registers[reg1] = 0
        elif opcode == 'SUP':
            reg1, reg2 = operands
            if self.registers[reg1] > self.registers[reg2]:
                self.registers[reg1] = 1
            else:
                self.registers[reg1] = 0
        elif opcode == 'INFE':
            reg1, reg2 = operands
            if self.registers[reg1] <= self.registers[reg2]:
                self.registers[reg1] = 1
            else:
                self.registers[reg1] = 0
        elif opcode == 'SUPE':
            reg1, reg2 = operands
            if self.registers[reg1] >= self.registers[reg2]:
                self.registers[reg1] = 1
            else:
                self.registers[reg1] = 0
        elif opcode == 'EQU':
            reg1, reg2 = operands
            if self.registers[reg1] == self.registers[reg2]:
                self.registers[reg1] = 1
            else:
                self.registers[reg1] = 0
        elif opcode == 'NEQ':
            reg1, reg2 = operands
            if self.registers[reg1] != self.registers[reg2]:
                self.registers[reg1] = 1
            else:
                self.registers[reg1] = 0
        elif opcode == 'JMP':
            addr = operands[0]
            self.program_counter = addr
        elif opcode == 'JMPF':
            reg, addr = operands
            if self.registers[reg] == 0:
                self.program_counter = addr
        elif opcode == 'PRI':
            reg = operands[0]
            print("console : ",self.registers[reg])
        else:
            print(f"Instruction inconnue : {opcode}")

    def run(self, instructions):
        while self.program_counter < len(instructions):
            instruction = instructions[self.program_counter]
            opcode, operands = self.parse_instruction(instruction)
            self.execute(opcode, operands)
            self.program_counter += 1

# Exemple d'utilisation
asm_code = [
    'AFC 1 1',
    'AFC 2 2',
    'COP 0 1',
    'SUPE 0 1',
    'JMPF 0 5',
    'AFC 4 8',
    'PRI 4',
    'JMP 8',
    'ADD 5 1 2',
    'MUL 6 1 2',
    'SUB 7 1 2',

]

Fake = ['DD']

interpreter = Interpreter()
interpreter.run(asm_code)
print(interpreter.registers)
