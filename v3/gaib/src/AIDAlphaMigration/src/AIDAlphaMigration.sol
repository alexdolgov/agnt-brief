// SPDX-License-Identifier: MIT
pragma solidity 0.8.22;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IERC20Metadata} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import {Ownable2Step} from "@openzeppelin/contracts/access/Ownable2Step.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {IAID} from "./interfaces/IAID.sol";

/// @title AID Alpha Migration Contract
/// @dev Allows users to migrate AIDa tokens to AID tokens at a 1:1 ratio
/// @notice This contract facilitates the transition from AIDa (alpha) tokens to AID tokens
contract AIDAlphaMigration is Ownable2Step {
    /// @notice Address of the AID token contract
    address public immutable aid;

    /// @notice Decimals of the AID token
    uint8 public immutable aidDecimals;

    /// @notice Mapping of supported AIDa token addresses
    mapping(address => bool) public supportedAIDa;

    /// @notice Mapping of AIDa token addresses to their decimals
    mapping(address => uint8) public aidAlphaDecimals;

    /// @notice Event emitted when a migration is completed
    /// @param user Address of the user who migrated
    /// @param aidAlpha Address of the AIDa token that was migrated
    /// @param amount Amount of tokens migrated
    event MigrationCompleted(address indexed user, address indexed aidAlpha, uint256 indexed amount);

    /// @notice Error thrown when trying to migrate an unsupported AIDa token
    /// @param token Address of the unsupported token
    error UnsupportedAIDaToken(address token);

    /// @notice Error thrown when trying to migrate zero amount
    error ZeroAmount();

    /// @notice Error thrown when AIDa transfer fails
    error AIDaTransferFailed();

    /// @notice Constructor that sets the AID token address and supported AIDa tokens
    /// @param _aid Address of the AID token contract
    /// @param _aidAlphaList Array of supported AIDa token addresses
    /// @param initOwner Initial owner of the contract
    constructor(address _aid, address[] memory _aidAlphaList, address initOwner) Ownable(initOwner) {
        if (_aid == address(0)) {
            revert();
        }

        aid = _aid;
        aidDecimals = IERC20Metadata(_aid).decimals();

        // Set all provided AIDa tokens as supported and store their decimals
        for (uint256 i = 0; i < _aidAlphaList.length; i++) {
            if (_aidAlphaList[i] != address(0)) {
                supportedAIDa[_aidAlphaList[i]] = true;
                aidAlphaDecimals[_aidAlphaList[i]] = IERC20Metadata(_aidAlphaList[i]).decimals();
            }
        }
    }

    /// @notice Sweep tokens accidentally held by this contract
    /// @param token Address of the token to sweep
    /// @param amount Amount to sweep
    function sweep(address token, uint256 amount) external onlyOwner {
        IERC20(token).transfer(owner(), amount);
    }

    /// @notice Migrate AIDa tokens to AID tokens at 1:1 ratio
    /// @param aidAlpha Address of the AIDa token to migrate
    /// @param amount Amount of AIDa tokens to migrate
    /// @dev User must have approved this contract to spend their AIDa tokens
    /// @dev Amount conversion is handled automatically based on decimal differences
    function migrate(address aidAlpha, uint256 amount) external {
        // Validate inputs
        if (amount == 0) {
            revert ZeroAmount();
        }

        if (!supportedAIDa[aidAlpha]) {
            revert UnsupportedAIDaToken(aidAlpha);
        }

        // Transfer AIDa tokens from user to this contract
        bool success = IERC20(aidAlpha).transferFrom(msg.sender, address(this), amount);
        if (!success) {
            revert AIDaTransferFailed();
        }

        // Convert amount based on decimal differences
        uint256 aidAmount = _convertAmount(amount, aidAlpha);

        // Mint AID tokens to user (1:1 ratio after decimal conversion)
        IAID(aid).mint(msg.sender, aidAmount);

        // Emit migration event
        emit MigrationCompleted(msg.sender, aidAlpha, amount);
    }

    /// @notice Check if an AIDa token is supported for migration
    /// @param token Address of the token to check
    /// @return true if the token is supported, false otherwise
    function isSupportedAIDa(address token) external view returns (bool) {
        return supportedAIDa[token];
    }

    /// @notice Get the decimals of a specific AIDa token
    /// @param token Address of the AIDa token
    /// @return decimals The number of decimals for the token
    function getAIDaDecimals(address token) external view returns (uint8) {
        return aidAlphaDecimals[token];
    }

    /// @notice Convert AIDa amount to AID amount based on decimal differences
    /// @param amount Amount of AIDa tokens
    /// @param aidAlpha Address of the AIDa token
    /// @return aidAmount Equivalent amount of AID tokens
    function _convertAmount(uint256 amount, address aidAlpha) internal view returns (uint256) {
        uint8 aidAlphaDecimalsValue = aidAlphaDecimals[aidAlpha];

        if (aidAlphaDecimalsValue == aidDecimals) {
            // Same decimals, no conversion needed
            return amount;
        } else if (aidAlphaDecimalsValue > aidDecimals) {
            // AIDa has more decimals, divide to reduce precision
            uint256 decimalDiff = aidAlphaDecimalsValue - aidDecimals;
            return amount / (10 ** decimalDiff);
        } else {
            // AID has more decimals, multiply to increase precision
            uint256 decimalDiff = aidDecimals - aidAlphaDecimalsValue;
            return amount * (10 ** decimalDiff);
        }
    }
}
