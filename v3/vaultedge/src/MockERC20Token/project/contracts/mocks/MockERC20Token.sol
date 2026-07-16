// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

/**
 * @title MockERC20Token
 * @notice ⚠️ DEVELOPMENT/TESTING ONLY ⚠️
 * @dev A mock ERC20 token for testing Vaultedge protocol collateral functionality.
 *      This contract is NOT suitable for production deployment due to:
 *      - Unlimited minting capabilities
 *      - Owner-controlled token supply
 *      - No access controls beyond basic ownership
 *
 * @custom:security-contact This is a mock contract for testing only
 */
contract MockERC20Token is ERC20, Ownable {
    // Events
    event MockMint(address indexed to, uint256 amount);
    event MockBurn(address indexed from, uint256 amount);

    uint8 private _decimals;

    /// @notice Maximum amount that can be minted per publicMint call (in token units, before decimals)
    uint256 public constant MAX_PUBLIC_MINT = 1e4; // 10,000 tokens

    /**
     * @notice Constructor for mock ERC20 token
     * @param name_ Token name (e.g., "Mock Wrapped Ethereum")
     * @param symbol_ Token symbol (e.g., "WETH")
     * @dev Deployer becomes the owner with minting privileges
     */
    constructor(string memory name_, string memory symbol_, uint8 decimals_) ERC20(name_, symbol_) Ownable() {
        // No initial supply - all tokens minted on demand for testing
        _decimals = decimals_;
    }

    /**
     * @notice Mint tokens to a specified address
     * @param to Address to receive the minted tokens
     * @param amount Amount of tokens to mint (in wei, 18 decimals)
     * @dev Only owner can mint. Used for providing test collateral to users.
     */
    function mint(address to, uint256 amount) external onlyOwner {
        require(to != address(0), "MockERC20: mint to zero address");
        require(amount > 0, "MockERC20: mint amount must be positive");

        _mint(to, amount);
        emit MockMint(to, amount);
    }

    /**
     * @notice Public mint function for testing - anyone can mint (with limit)
     * @param to Address to receive the minted tokens
     * @param amount Amount of tokens to mint (in smallest unit, respects decimals)
     * @dev Public function for testing purposes. Allows anyone to mint up to MAX_PUBLIC_MINT tokens per call.
     */
    function publicMint(address to, uint256 amount) external {
        require(to != address(0), "MockERC20: mint to zero address");
        require(amount > 0, "MockERC20: mint amount must be positive");
        require(amount <= MAX_PUBLIC_MINT * 10 ** _decimals, "MockERC20: exceeds max public mint");

        _mint(to, amount);
        emit MockMint(to, amount);
    }

    /**
     * @notice Mint the maximum allowed amount to caller
     * @dev Convenience function for testing - mints MAX_PUBLIC_MINT tokens to msg.sender
     */
    function publicMintMax() external {
        uint256 amount = MAX_PUBLIC_MINT * 10 ** _decimals;
        _mint(msg.sender, amount);
        emit MockMint(msg.sender, amount);
    }

    /**
     * @notice Burn tokens from a specified address
     * @param from Address to burn tokens from
     * @param amount Amount of tokens to burn (in wei, 18 decimals)
     * @dev Only owner can burn. Useful for testing scenarios.
     */
    function burn(address from, uint256 amount) external onlyOwner {
        require(from != address(0), "MockERC20: burn from zero address");
        require(amount > 0, "MockERC20: burn amount must be positive");
        require(balanceOf(from) >= amount, "MockERC20: burn amount exceeds balance");

        _burn(from, amount);
        emit MockBurn(from, amount);
    }

    /**
     * @notice Batch mint tokens to multiple addresses
     * @param recipients Array of addresses to receive tokens
     * @param amounts Array of amounts to mint to each recipient
     * @dev Useful for setting up multiple test accounts quickly
     */
    function batchMint(address[] calldata recipients, uint256[] calldata amounts) external onlyOwner {
        require(recipients.length == amounts.length, "MockERC20: arrays length mismatch");
        require(recipients.length > 0, "MockERC20: empty arrays");

        for (uint256 i = 0; i < recipients.length; i++) {
            require(recipients[i] != address(0), "MockERC20: mint to zero address");
            require(amounts[i] > 0, "MockERC20: mint amount must be positive");

            _mint(recipients[i], amounts[i]);
            emit MockMint(recipients[i], amounts[i]);
        }
    }

    /**
     * @notice Get token decimals (always 18 for Vaultedge compatibility)
     * @return Number of decimals (18)
     * @dev Vaultedge protocol requires 18 decimal tokens
     */
    function decimals() public view override returns (uint8) {
        return _decimals;
    }

    /**
     * @notice Emergency function to drain contract of any accidentally sent ETH
     * @dev Only owner can call this function
     */
    function emergencyWithdrawETH() external onlyOwner {
        uint256 balance = address(this).balance;
        require(balance > 0, "MockERC20: no ETH to withdraw");

        (bool success, ) = payable(owner()).call{ value: balance }("");
        require(success, "MockERC20: ETH withdrawal failed");
    }

    /**
     * @notice Check if this is a mock contract
     * @return Always returns true to identify as mock
     * @dev Can be used by other contracts to detect mock vs real tokens
     */
    function isMockContract() external pure returns (bool) {
        return true;
    }
}
