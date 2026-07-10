vyper -f abi,bytecode,ir,metadata MyContract.vy
vyper --optimize gas MyContract.vy
vyper --optimize gas MyContract.vy
vyper -f bytecode MyContract.vy
pip install vyper
# Bytecode
vyper -f bytecode Token.vy

# ABI
vyper -f abi Token.vy

# Both
vyper -f abi,bytecode Token.vy
