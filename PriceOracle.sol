// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract PriceOracle {

    address public priceFeed;

    constructor() {
        // Endereço do oráculo ETH/USD na Sepolia
        priceFeed = 0x694AA1769357215DE4FAC081bf1f309aDC325306;
    }

    function getPrice() public view returns (int256) {
        (bool success, bytes memory data) = priceFeed.staticcall(
            abi.encodeWithSignature("latestRoundData()")
        );

        require(success, "Erro ao buscar preco");

        (, int256 price, , ,) = abi.decode(
            data,
            (uint80, int256, uint256, uint256, uint80)
        );

        return price;
    }
}

