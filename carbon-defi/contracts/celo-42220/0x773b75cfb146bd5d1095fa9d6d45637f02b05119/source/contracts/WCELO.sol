// SPDX-License-Identifier: MIT

pragma solidity 0.8.24;


/**
 * @dev Interface of the ERC-20 standard as defined in the ERC.
 */
interface IERC20 {
    /**
     * @dev Moves a `value` amount of tokens from the caller's account to `to`.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transfer(address to, uint256 value) external returns (bool);

    /**
     * @dev Moves a `value` amount of tokens from `from` to `to` using the
     * allowance mechanism. `value` is then deducted from the caller's
     * allowance.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transferFrom(address from, address to, uint256 value) external returns (bool);

    /**
     * @dev Returns the value of tokens owned by `account`.
     */
    function balanceOf(address account) external view returns (uint256);
}

/**
 * @notice custom-made Wrapped Celo (WCELO) contract which:
 * @notice receives native token on deposit and transfers Celo ERC-20 tokens
 * @notice on withdrawal, transfers the celo erc-20 tokens for native token
 */

contract WCELO {
    string public name     = "Wrapped Celo";
    string public symbol   = "WCELO";
    uint8  public decimals = 18;

    IERC20 public constant CELO_ERC_20 = IERC20(0x471EcE3750Da237f93B8E339c536989b8978a438);

    event Deposit(address indexed account, uint256 amount);

    event Withdrawal(address indexed account, uint256 amount);

    receive() external payable {
        deposit();
    }

    /**
     * @dev deposit native token and receive celo erc-20 tokens
     */
    function deposit() public payable {
        // transfer celo erc-20 tokens on deposit
        CELO_ERC_20.transfer(msg.sender, msg.value);
        emit Deposit(msg.sender, msg.value);
    }

    /**
     * @dev return celo erc-20 tokens and receive native token
     */
    function withdraw(uint wad) public {
        require(CELO_ERC_20.balanceOf(msg.sender) >= wad);
        // retrieve celo erc-20 tokens on withdrawal
        CELO_ERC_20.transferFrom(msg.sender, address(this), wad);
        payable(msg.sender).transfer(wad);
        emit Withdrawal(msg.sender, wad);
    }
}
