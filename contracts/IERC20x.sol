// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

/**
 * @dev Interface of the ERC-20 standard as defined in the ERC.
 */
interface IERC20x {
	
    /**
     * @dev Emitted when `value` tokens are moved from one account (`from`) to
     * another (`to`).
     *
     * Note that `value` may be zero.
     */
    event TransferX(address indexed from, address indexed to, uint256 value);

    /**
     * @dev Returns the value of tokens in existence.
     */
    function globalSupply() external view returns (uint256);

    /**
     * @dev Returns the value of tokens owned by `account`.
     */
    function balanceOfX(address account) external view returns (uint256);

    /**
     * @dev Moves a `value` amount of tokens from the caller's account to `to`.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transferX(uint256 toChain, address toAddress, uint256 amount) external returns (bool);

    /**
     * @dev Moves a `value` amount of tokens from `from` to `to` using the
     * allowance mechanism. `value` is then deducted from the caller's
     * allowance.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    //function transferXFrom(address from, uint256 toChain, address toAddress, uint256 amount) external returns (bool);

}