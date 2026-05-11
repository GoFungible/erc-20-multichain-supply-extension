// https://eips.ethereum.org/EIPS/eip-7425

ERC-74XX25: ERC-XXXX Multichain Supply Extension

Title: ERC-XXXX Multichain Supply Extension

Short Description: An ERC-20 multichain extension to guarantee supply integrity across networks

Authors
----------

Created	2023-06-30

Discussion Link	https://ethereum-magicians.org/t/eip-7425-tokenized-reserve/15297

Requires	EIP-20

Table of Contents



Abstract
----------

Crosschain Token interface to explore supply as a guard of Tokens value.



Motivation
----------

In economic terms, the value of a token is paramount. The value is represented by price. To capture correct price we must address cross chain.

Address the problem of cross-chain supply.




State of Arts
----------

Some token standards are created for a single chain

	* ERC3643 - The Token Standard for RWA Tokenization

	* ERC-7943: uRWA - Universal Real World Asset Interface

A few ERC standards focused on crosschain messaging:

	* EIP-7786 - Cross-Chain Messaging Gateway

	* EIP-7841 - Cross-chain Message Format and Mailbox

Other standards focused on crosschain execution:

	* EIP-5164 - Cross-Chain Execution

	* ERC-8121: Cross-Chain Function Calls via Hooks

	* ERC-7683 - Crosschain Intents: Introduction

Other standards focused on crosschain bridging:

	* ERC-7802 - Crosschain Token Interface

	* ERC-7281: Sovereign Bridged Tokens - xERC20 Standard. xERC20 is a widely supported open token standard, aimed at solving the liquidity, fungibility, and security issues seen today with bridged ERC20s.

Other providers focused on mutichain tokens:

	* LayerZero, Axelar, Wormhole, Hyperlane have their proprietary multichain tokens.

	* ERC-6358 created Omniverse tokens by cloning the state in all chains.





Specification
----------

	Supply management across networks must be built-in and immutable

		* Add a global supply and a supplyPerChain map to an ERC-20

		* totalSupply and globalSupply or chainSupply? Depends on what we want exchanges read

		* add a transferX to transfer fetching from other chains





Implementation
----------

	Definitions:

	Interface:

		networks

		addresses

		balances

    function globalSupply() external view returns (uint256);

    function balanceOfX(address account) public view virtual returns (uint256);

    function transferX(address to, uint256 value) external returns (bool);

    function transfeXrFrom(address from, address to, uint256 value) external returns (bool);




Backwards Compatibility
----------



Security Considerations
----------



Copyright
----------



Citation
----------




Run
----------

npm install

npm run build

