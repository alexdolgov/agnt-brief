// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.27;

import { UtilLib } from "./utils/UtilLib.sol";
import { LRTConfigRoleChecker, ILRTConfig, LRTConstants } from "./utils/LRTConfigRoleChecker.sol";

import { ERC20Upgradeable, Initializable } from "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import { PausableUpgradeable } from "@openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol";

/// @title rsETH token Contract
/// @author Kelp DAO
/// @notice The ERC20 contract for the rsETH token
contract RSETH is Initializable, LRTConfigRoleChecker, ERC20Upgradeable, PausableUpgradeable {
    error DailyMintLimitExceeded(uint256 currentAmount, uint256 maxAmount);

    event MaxMintAmountPerDayUpdated(uint256 newMaxMintAmountPerDay);

    uint256 public maxMintAmountPerDay;
    uint256 public currentPeriodMintedAmount;
    uint256 public periodStartTime;

    /// @dev Modifier to check and update daily mint limits
    /// @param amount The amount to be minted
    modifier checkDailyMintLimit(uint256 amount) {
        // Check if we need to reset the period or initialize the period
        if (periodStartTime == 0 || block.timestamp >= periodStartTime + 1 days) {
            currentPeriodMintedAmount = 0;
            periodStartTime = block.timestamp;
        }

        // Check if minting would exceed the daily limit
        if (currentPeriodMintedAmount + amount > maxMintAmountPerDay) {
            revert DailyMintLimitExceeded(currentPeriodMintedAmount + amount, maxMintAmountPerDay);
        }

        currentPeriodMintedAmount += amount;
        _;
    }

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    /// @dev Initializes the contract
    /// @param admin Admin address
    /// @param lrtConfigAddr LRT config address
    function initialize(address admin, address lrtConfigAddr) external initializer {
        UtilLib.checkNonZeroAddress(admin);
        UtilLib.checkNonZeroAddress(lrtConfigAddr);

        __ERC20_init("rsETH", "rsETH");
        __Pausable_init();
        lrtConfig = ILRTConfig(lrtConfigAddr);
        emit UpdatedLRTConfig(lrtConfigAddr);
    }

    /// @notice Sets the maximum amount that can be minted in 24 hours
    /// @param _maxMintAmountPerDay The maximum amount that can be minted in 24 hours
    function setMaxMintAmountPerDay(uint256 _maxMintAmountPerDay) external onlyLRTManager {
        maxMintAmountPerDay = _maxMintAmountPerDay;
        emit MaxMintAmountPerDayUpdated(_maxMintAmountPerDay);
    }

    /// @notice Mints rsETH when called by an authorized caller
    /// @param to the account to mint to
    /// @param amount the amount of rsETH to mint
    function mint(
        address to,
        uint256 amount
    )
        external
        onlyRole(LRTConstants.MINTER_ROLE)
        whenNotPaused
        checkDailyMintLimit(amount)
    {
        _mint(to, amount);
    }

    /// @notice Burns rsETH when called by an authorized caller
    /// @param account the account to burn from
    /// @param amount the amount of rsETH to burn
    function burnFrom(address account, uint256 amount) external onlyRole(LRTConstants.BURNER_ROLE) whenNotPaused {
        _burn(account, amount);
    }

    /// @dev Triggers stopped state.
    /// @dev Only callable by LRT config manager. Contract must NOT be paused.
    function pause() external onlyLRTManager {
        _pause();
    }

    /// @notice Returns to normal state.
    /// @dev Only callable by the rsETH admin. Contract must be paused
    function unpause() external onlyLRTAdmin {
        _unpause();
    }
}
