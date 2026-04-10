// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "https://raw.githubusercontent.com/OpenZeppelin/openzeppelin-contracts/v4.9.3/contracts/token/ERC721/ERC721.sol";

contract EduNFT is ERC721 {

    uint256 public tokenCounter;

    constructor() ERC721("EduNFT", "ENFT") {}

    function mintNFT(address to) public {
        _safeMint(to, tokenCounter);
        tokenCounter++;
    }
}




