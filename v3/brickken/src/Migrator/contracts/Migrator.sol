// SPDX-License-Identifier: MIT
pragma solidity 0.8.29;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

/// @title BKN Token Migrator
/// @author Brickken
/// @notice This contract facilitates the migration of BKN v1 tokens to BKN v2 tokens.
/// Users can deposit their v1 tokens and receive an equivalent amount of v2 tokens.
/// The contract includes a blacklist functionality to block certain addresses from migrating
/// due to regulatory compliance.
/// @custom:security-contact tech@brickken.com
contract Migrator is Ownable {
    using SafeERC20 for IERC20;

    /// @notice The BKN v1 token contract.
    IERC20 public immutable BKNv1;
    /// @notice The BKN v2 token contract.
    IERC20 public immutable BKNv2;

    /// @notice A mapping to keep track of blacklisted addresses.
    mapping(address => bool) public isBlacklisted;

    /// @notice Emitted when an address is added to the blacklist.
    /// @param account The address that was blacklisted.
    /// @param status The blacklist status (true if blacklisted, false if removed from blacklist).
    event Blacklisted(address indexed account, bool status);

    /// @notice Emitted when a user successfully migrates their tokens.
    /// @param user The address of the user who migrated.
    /// @param amount The amount of tokens migrated.
    event Migrated(address indexed user, uint256 amount);

    /// @notice Thrown when a blacklisted address attempts to migrate.
    /// @param account The blacklisted address.
    error BlacklistedAddress(address account);

    /// @notice Thrown when a migration with a zero amount is attempted.
    error ZeroAmount();

    /// @notice Thrown when a user tries to migrate more BKN v2 than available.
    error InsufficientBKNv2Balance();

    /// @param admin The address that will have administrative privileges (owner).
    /// @param bknV1Address The address of the BKN v1 token.
    /// @param bknV2Address The address of the BKN v2 token.
    /// @param blacklistedAddresses An array of addresses to be blacklisted upon deployment.
    constructor(
        address admin,
        address bknV1Address,
        address bknV2Address,
        address[] memory blacklistedAddresses
    ) Ownable(admin) {
        BKNv1 = IERC20(bknV1Address);
        BKNv2 = IERC20(bknV2Address);
        for (uint256 i = 0; i < blacklistedAddresses.length; i++) {
            isBlacklisted[blacklistedAddresses[i]] = true;
            emit Blacklisted(blacklistedAddresses[i], true);
        }
    }

    /// @notice Migrates BKN v1 tokens to BKN v2 tokens.
    /// The user must first approve this contract to spend their BKN v1 tokens.
    /// @param amount The amount of BKN v1 tokens to migrate.
    function migrate(uint256 amount) external {
        require(!isBlacklisted[msg.sender], BlacklistedAddress(msg.sender));
        require(amount > 0, ZeroAmount());
        require(
            BKNv2.balanceOf(address(this)) >= amount,
            InsufficientBKNv2Balance()
        );

        // Pull BKNv1 from the user
        BKNv1.safeTransferFrom(msg.sender, address(this), amount);

        // Push BKNv2 to the user
        BKNv2.safeTransfer(msg.sender, amount);

        emit Migrated(msg.sender, amount);
    }

    /// @notice Adds an address to the blacklist.
    /// @dev Only the owner can call this function.
    /// @param account The address to blacklist.
    /// @param status True to blacklist, false to un-blacklist.
    function blacklist(address account, bool status) external onlyOwner {
        isBlacklisted[account] = status;
        emit Blacklisted(account, status);
    }

    /// @notice Allows the owner to withdraw any ERC20 tokens sent to this contract.
    /// This can be BKN v1, or any other token sent to this contract by mistake.
    /// @param tokenAddress The address of the ERC20 token to withdraw.
    /// @param amount The amount of tokens to withdraw.
    function withdrawExcessToken(
        address tokenAddress,
        uint256 amount
    ) external onlyOwner {
        require(amount > 0, ZeroAmount());
        IERC20 token = IERC20(tokenAddress);
        uint256 balance = token.balanceOf(address(this));
        if (balance >= amount) {
            token.safeTransfer(owner(), amount);
        }
    }
}
