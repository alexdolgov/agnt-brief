// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

/// @title WhitelistableERC20
/// @notice ERC20 token with time-based transfer restrictions
/// @dev During the lock period, only whitelisted addresses can transfer
contract WhitelistableERC20 is ERC20 {
    /// @notice First whitelisted address (typically PoolManager for swaps)
    address public immutable whitelistedAddress1;

    /// @notice Second whitelisted address (typically LaunchpadOrderBookFactory for pool setup)
    address public immutable whitelistedAddress2;

    /// @notice Third whitelisted address (typically LaunchpadPositionFactory for liquidity deposits)
    address public immutable whitelistedAddress3;

    /// @notice Deployer address (TokenFactory) for initial distribution
    address public immutable deployer;

    /// @notice Timestamp when transfer restrictions end
    uint256 public immutable transferLockEndTime;

    /// @notice Total supply is fixed at 1 billion tokens
    uint256 private constant MAX_SUPPLY = 1_000_000_000 * 1e18;

    /// @notice Burn address where tokens are sent to be removed from circulation
    address public constant BURN_ADDRESS = 0x000000000000000000000000000000000000dEaD;

    /// @notice Emitted when a transfer is attempted during lock period by non-whitelisted address
    error TransfersLocked();

    /// @param name Token name
    /// @param symbol Token symbol
    /// @param _transferLockEndTime Timestamp when transfers become unrestricted
    /// @param _whitelistedAddress1 First whitelisted address (PoolManager)
    /// @param _whitelistedAddress2 Second whitelisted address (LaunchpadOrderBookFactory)
    /// @param _whitelistedAddress3 Third whitelisted address (LaunchpadPositionFactory)
    constructor(
        string memory name,
        string memory symbol,
        uint256 _transferLockEndTime,
        address _whitelistedAddress1,
        address _whitelistedAddress2,
        address _whitelistedAddress3
    ) ERC20(name, symbol) {
        require(_whitelistedAddress1 != address(0), "Invalid whitelist address 1");
        require(_whitelistedAddress2 != address(0), "Invalid whitelist address 2");
        require(_whitelistedAddress3 != address(0), "Invalid whitelist address 3");
        require(_transferLockEndTime > block.timestamp, "Lock time must be in future");

        transferLockEndTime = _transferLockEndTime;
        whitelistedAddress1 = _whitelistedAddress1;
        whitelistedAddress2 = _whitelistedAddress2;
        whitelistedAddress3 = _whitelistedAddress3;
        deployer = msg.sender; // TokenFactory

        // Mint entire supply to deployer (TokenFactory)
        _mint(msg.sender, MAX_SUPPLY);
    }

    /// @notice Override _update to enforce transfer restrictions during lock period
    /// @dev During lock period, transfers are only allowed if sender or recipient is whitelisted or deployer
    function _update(address from, address to, uint256 amount) internal override {
        // If still in lock period, check whitelist
        if (block.timestamp < transferLockEndTime) {
            // Allow minting (from == address(0))
            // Allow transfers from deployer (for initial distribution)
            // Allow transfers to/from any whitelisted address
            if (
                from != address(0)
                && from != deployer
                && from != whitelistedAddress1
                && from != whitelistedAddress2
                && from != whitelistedAddress3
                && to != whitelistedAddress1
                && to != whitelistedAddress2
                && to != whitelistedAddress3
            ) {
                revert TransfersLocked();
            }
        }

        super._update(from, to, amount);
    }

    /// @notice Check if transfers are currently locked
    /// @return bool True if transfers are locked for non-whitelisted addresses
    function areTransfersLocked() external view returns (bool) {
        return block.timestamp < transferLockEndTime;
    }

    /// @notice Get the remaining lock duration
    /// @return uint256 Seconds remaining in lock period, 0 if unlocked
    function remainingLockTime() external view returns (uint256) {
        if (block.timestamp >= transferLockEndTime) {
            return 0;
        }
        return transferLockEndTime - block.timestamp;
    }

    /// @notice Burn tokens by sending them to the burn address
    /// @dev This permanently removes tokens from circulation
    /// @param amount Amount of tokens to burn
    function burn(uint256 amount) external {
        _transfer(msg.sender, BURN_ADDRESS, amount);
    }

    /// @notice Total supply = max supply - amount burned
    /// @dev Override to account for burned tokens
    /// @return uint256 Circulating supply (MAX_SUPPLY minus burned tokens)
    function totalSupply() public view override returns (uint256) {
        return MAX_SUPPLY - balanceOf(BURN_ADDRESS);
    }
}
