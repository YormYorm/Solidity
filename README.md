# MyToken - ERC20 Token Smart Contract

MyToken is a basic ERC20 token smart contract designed to facilitate token minting and burning. This project serves as part of the Solidity Beginner class.

## Getting Started

### Requirements

1. The contract includes public variables to store coin details (Token Name, Token Abbreviation, Total Supply).
2. Utilizes a mapping to store addresses and their corresponding balances (address => uint).
3. Contains a mint function, taking an address and a value as parameters. This function increases the total supply and the balance of the sender's address.
4. Provides a burn function that reverses the mint operation, effectively destroying tokens. It requires an address and a value. This function reduces the total supply and the balance of the sender's address.
5. Includes validation in the burn function to ensure the sender's balance is greater than or equal to the amount being burned.

### Executing the Program

To run the program, use Remix, an online Solidity IDE. Follow these steps:

1. Visit the [Remix IDE](https://remix.ethereum.org/) website.
2. Create a new file using the "+" icon in the left sidebar. Save it with a .sol extension (e.g., MyToken.sol).
3. Copy and paste the provided code into the file.

### Usage

Deploy the contract to your chosen network and interact with its functions using a web3 provider such as [MetaMask](https://metamask.io/) or a similar tool.

#### Constructor

The contract's constructor accepts two parameters:

- `name` (string): The token's name, (YormToken).
- `symbol` (string): The token's symbol, (YTK).

The constructor initializes the token's name and symbol.

#### Mint Function

The `mint` function allows anyone to increase the total supply and the balance of a specified address. It takes two parameters:

- `_to` (address): The address to mint tokens to.
- `_value` (uint256): The amount of tokens to mint.

#### Burn Function

The `burn` function enables users to decrease the total supply and their own balance, provided they have enough balance. It takes one parameter:

- `_value` (uint256): The amount of tokens to burn.

This function validates the user's balance before performing the burn.

## Author

This project was created by [Agbaje Abayomi Ezekiel](https://github.com/YormYorm).

## License

This project is licensed under the [MIT License](LICENSE).
