// https://eips.ethereum.org/EIPS/eip-7425

ERC-74XX25: ERC-XXXX Multichain Supply Extension

Title: ERC-XXXX Multichain Supply Extension

Short Description: An ERC-20 multichain extension to determine token boundaries and supply



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



Rationale
---------

Fragmentation is an issue. Fragmentation ruins user interface.

To overcome fragmentation, we need multichain tokens.

Supply is the more important parameter in a token definition. Variation of the supply determines the nature of the tokens and the peg.

Multichain tokens cannot control their cross supply. This brings problems and destroy decentralization.

This standard proposes an exntension to control cross supply of multichain tokens that allows users know the boundaries of the token.



State of Arts
----------

Some token standards are created for a single chain

	* ERC3643 - The Token Standard for RWA Tokenization

	* ERC-7943: uRWA - Universal Real World Asset Interface

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

    function networkkIds() external view returns (uint256);

    function supply(unit256 networkId) public view virtual returns (uint256);

    function globalSupply() external view returns (uint256);

		// not needed
    function balanceOfX(address account) public view virtual returns (uint256);

    function transferX(address to, uint256 value) external returns (bool);

    function transfeXrFrom(address from, address to, uint256 value) external returns (bool);



Security Considerations
----------

Global Supply must reliably aggregate distributed supplies.




Backwards Compatibility
----------





Copyright
----------



Citation
----------




Run
----------

npm install

npm run build

