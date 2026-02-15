# Minimal ERC-20 Token Factory

This repository provides a streamlined, professional-grade implementation of an ERC-20 Token Factory. It is designed for developers who want to understand how to deploy multiple smart contracts from a single "Master" contract.

### Features
* **Standard Compliance:** Fully compatible with the OpenZeppelin ERC-20 standard.
* **Factory Pattern:** Deploy new tokens efficiently via a single transaction to the Factory contract.
* **Tracking:** Keeps a public record of all tokens deployed by specific addresses.
* **Gas Optimized:** Clean, minimalist Solidity code to reduce deployment costs.

### Quick Start
1. Install dependencies: `npm install`
2. Compile contracts: `npx hardhat compile`
3. Deploy Factory: `npx hardhat run deploy.js`

### License
MIT
