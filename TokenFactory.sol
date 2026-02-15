// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "./SimpleToken.sol";

contract TokenFactory {
    address[] public deployedTokens;
    mapping(address => address[]) public tokensByOwner;

    event TokenCreated(address indexed tokenAddress, address indexed owner, string name);

    function createToken(
        string memory name,
        string memory symbol,
        uint256 initialSupply
    ) external returns (address) {
        SimpleToken newToken = new SimpleToken(
            name,
            symbol,
            initialSupply,
            msg.sender
        );
        
        address tokenAddress = address(newToken);
        deployedTokens.push(tokenAddress);
        tokensByOwner[msg.sender].push(tokenAddress);

        emit TokenCreated(tokenAddress, msg.sender, name);
        return tokenAddress;
    }

    function getTokensByOwner(address owner) external view returns (address[] memory) {
        return tokensByOwner[owner];
    }
}
