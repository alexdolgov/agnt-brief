// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/utils/cryptography/EIP712.sol";
import "./EIP3009.sol";

/**
 * @title WrappedX402
 * @notice Wrapped the native gas token with EIP-3009 transfer authorization support
 * @dev Combines wrapped token functionality (deposit/withdraw) with gasless transfers via signed authorizations
 * @author The Flap Team
 */
contract WrappedX402 is EIP3009 {
    /**
     * @notice Emitted when ETH is deposited and wrapped tokens are minted
     * @param account The account that deposited ETH
     * @param amount The amount of ETH deposited
     */
    event Deposit(address indexed account, uint256 amount);

    /**
     * @notice Emitted when wrapped tokens are burned and ETH is withdrawn
     * @param account The account that withdrew ETH
     * @param amount The amount of ETH withdrawn
     */
    event Withdrawal(address indexed account, uint256 amount);

    /**
     * @notice Initialize the wrapped token with EIP-3009 support
     * @param _name The name of the ERC20 token
     * @param _symbol The symbol of the ERC20 token
     * @dev Sets up the ERC20 token and initializes EIP-712 domain for signature verification
     */
    constructor(string memory _name, string memory _symbol) ERC20(_name, _symbol) EIP712(_name, "1") {}

    /**
     * @notice Deposit ETH and mint wrapped tokens
     * @dev Mints tokens 1:1 for the deposited ETH
     */
    function deposit() public payable {
        require(msg.value > 0, "Must deposit non-zero amount");
        _mint(msg.sender, msg.value);
        emit Deposit(msg.sender, msg.value);
    }

    /**
     * @notice Withdraw ETH by burning wrapped tokens
     * @param amount The amount of wrapped tokens to burn
     * @dev Burns tokens and sends equivalent ETH back to the caller
     */
    function withdraw(uint256 amount) public {
        require(amount > 0, "Must withdraw non-zero amount");
        require(balanceOf(msg.sender) >= amount, "Insufficient balance");

        _burn(msg.sender, amount);
        emit Withdrawal(msg.sender, amount);

        (bool success,) = msg.sender.call{value: amount}("");
        require(success, "ETH transfer failed");
    }

    /**
     * @notice Fallback function to accept ETH deposits
     * @dev Automatically calls deposit() when ETH is sent to the contract
     */
    receive() external payable {
        deposit();
    }

    /**
     * @notice Get the EIP-712 domain separator
     * @return The domain separator for EIP-712 signature verification
     */
    function DOMAIN_SEPARATOR() external view returns (bytes32) {
        return _domainSeparatorV4();
    }
}
