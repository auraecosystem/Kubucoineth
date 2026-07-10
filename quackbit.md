**Prerequisites:**

* Install Node.js (at least version 14)
* Install the `solc` compiler using npm by running `npm install solc`
* Create a new project directory and navigate to it in your terminal

**Compile the Contract:**

1. Copy the contract code and save it to a file named `QuackAISBT.sol`
2. Open your terminal and navigate to the project directory
3. Run the following command to compile the contract:

```bash
solc --bin QuackAISBT.sol --output dir contract-bin
```

This will compile the `QuackAISBT.sol` contract and generate a new file in the `contract-bin` directory. The `--output dir contract-bin` flag specifies the output directory where the compiled contract will be saved.

**Verify Compilation:**

After running the compilation command, you should see the following output:

```solidity
QuackAISBT.sol:1:1: Warning: The contract name "QuackAISBT" is too similar to the name of this file "QuackAISBT.sol", it is recommended to use a more distinct name.
Warning: The contract name "ERC721Enumerable" is too similar to the name of this file "QuackAISBT.sol", it is recommended to use a more distinct name.
Warning: The contract name "ReentrancyGuard" is too similar to the name of this file "QuackAISBT.sol", it is recommended to use a more distinct name.
Warning: The contract name "Ownable" is too similar to the name of this file "QuackAISBT.sol", it is recommended to use a more distinct name.
Warning: The contract name "ERC165" is too similar to the name of this file "QuackAISBT.sol", it is recommended to use a more distinct name.
Warning: The contract name "ERC721" is too similar to the name of this file "QuackAISBT.sol", it is recommended to use a more distinct name.
Warning: The contract name "Address" is too similar to the name of this file "QuackAISBT.sol", it is recommended to use a more distinct name.
Warning: The contract name "Strings" is too similar to the name of this file "QuackAISBT.sol", it is recommended to use a more distinct name.
Warning: The contract name "Counters" is too similar to the name of this file "QuackAISBT.sol", it is recommended to use a more distinct name.
Warning: The contract name "SafeMath" is too similar to the name of this file "QuackAISBT.sol", it is recommended to use a more distinct name.
QuackAISBT.sol:1:1: Warning: The contract name "SafeMath" is very broad and could result in conflicts with the SafeMath.sol contract.
```

The above output indicates that the contract successfully compiled and generated the bytecode file.

**Check Compiled Contract:**

You can verify that the contract compiled correctly by checking the bytecode file in the `contract-bin` directory.

```bash
ls contract-bin/ | grep QuackAISBT
```

This command will list all files in the `contract-bin` directory and filter out the ones that don't match the `QuackAISBT` contract. The output should include the compiled contract file.

```bash
QuackAISBT.json
QuackAISBT.bin
QuackAISBT.mappings.json
