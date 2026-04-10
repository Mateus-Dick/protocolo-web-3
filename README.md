Protocolo Web3 - MVP Completo

Descrição

Este projeto consiste no desenvolvimento de um protocolo descentralizado (Web3), integrando múltiplos contratos inteligentes na blockchain Ethereum (testnet Sepolia).

O objetivo é consolidar conhecimentos avançados através da construção de um sistema funcional contendo token, NFT, staking, governança e integração com oráculo.

Tecnologias Utilizadas

- Solidity ^0.8.x
- Remix IDE
- MetaMask
- Chainlink
- Sepolia Testnet

Estrutura do Projeto

Token ERC-20 (EduToken)
Token fungível utilizado como moeda do sistema.

NFT (EduNFT)
Token não fungível utilizado para representar ativos digitais únicos.

Staking
Permite que usuários depositem tokens e realizem retirada posteriormente.

DAO (Governança)
Sistema descentralizado para criação de propostas e votação.

Oracle (Chainlink)
Integração com dados externos (preço do ETH em USD).

Contratos Deployados

- EduToken: https://sepolia.etherscan.io/address/0x7EF2e0048f5bAeDe046f6BF797943daF4ED8CB47  
- EduNFT: https://sepolia.etherscan.io/address/0xDA0bab807633f07f013f94DD0E6A4F96F8742B53  
- Staking: https://sepolia.etherscan.io/address/0x358AA13c52544ECCEF6B0ADD0f801012ADAD5eE3  
- SimpleDAO: https://sepolia.etherscan.io/address/0x9D7f74d0C41E726EC95884E0e97Fa6129e3b5E99  
- PriceOracle: https://sepolia.etherscan.io/address/0xd2a5bC10698FD955D1Fe6cb468a17809A08fd005  

Funcionalidades Testadas

- Transferência e aprovação de tokens
- Mint de NFT
- Stake e Withdraw de tokens
- Criação e votação em propostas
- Consulta de preço via oráculo

Segurança

Foram aplicadas boas práticas como validações com `require`, uso do Solidity ^0.8.x e prevenção de reentrancy através da ordem correta das operações.

Além disso, foi realizada análise com ferramentas como Slither, Mythril e Hardhat.

Objetivo

Desenvolver um MVP completo de protocolo Web3, integrando múltiplos contratos inteligentes e simulando um ecossistema descentralizado funcional.


