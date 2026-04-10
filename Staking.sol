// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "https://raw.githubusercontent.com/OpenZeppelin/openzeppelin-contracts/v4.9.3/contracts/token/ERC20/IERC20.sol";

contract Staking {

    IERC20 public token;

    mapping(address => uint256) public staked;

    constructor(address _token) {
        token = IERC20(_token);
    }

    function stake(uint256 amount) public {
        require(amount > 0, "Valor invalido");
        token.transferFrom(msg.sender, address(this), amount);
        staked[msg.sender] += amount;
    }

    function withdraw(uint256 amount) public {
        require(staked[msg.sender] >= amount, "Saldo insuficiente");
        staked[msg.sender] -= amount;
        token.transfer(msg.sender, amount);
    }
}
