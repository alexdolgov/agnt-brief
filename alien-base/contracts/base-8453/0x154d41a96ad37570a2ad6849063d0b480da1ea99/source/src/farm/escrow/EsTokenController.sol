// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "solady/auth/OwnableRoles.sol";
import "./interfaces/tokens/IEsToken.sol";
import "./interfaces/IEsTokenUsage.sol";

/**
 * @title EsTokenController
 * @notice Gas-optimized controller for esToken with timelocks for dangerous parameters
 */
contract EsTokenController is OwnableRoles {
    error ZeroAddress();
    error InvalidParams();
    error TimelockNotExpired();

    uint256 private constant OWNER_ROLE = _ROLE_0;
    uint256 private constant RESCUER_ROLE = _ROLE_1;
    
    uint256 private immutable TIMELOCK_DURATION;
    IEsToken public immutable esToken;

    // Stores timestamp when params become valid. 0 means no pending update.
    uint256 public timelockDeadline;

    uint256 public selfOwnershipTimelock;
    address public pendingControllerOwner;

    uint256 public tokenOwnershipTimelock;
    address public pendingTokenOwner;

    // Pending dangerous params, only valid after timelock
    uint256 public pendingMinRedeemDuration;
    uint256 public pendingMaxRedeemDuration;
    uint256 public pendingFreeRedeemPercentage;
    uint256 public pendingFreeRedeemCooldown;

    event DangerousParamsChangeRequested(uint256 minDuration, uint256 maxDuration, uint256 freeRedeemPct, uint256 cooldown);
    event DangerousParamsChanged(uint256 minDuration, uint256 maxDuration, uint256 freeRedeemPct, uint256 cooldown);
    event SafeParamsChanged(uint256 minRatio, uint256 maxRatio, uint256 divsAdjustment, uint256 minFreeRedeem, uint256 gracePeriod);
    event AddressChanged(bool isDividends, address oldAddr, address newAddr);
    event WhitelistUpdated(address indexed account, bool status);

    constructor(IEsToken _esToken, address initialOwner, address initialRescuer, uint256 timelockHours) {
        if(address(_esToken) == address(0) || initialOwner == address(0)) revert ZeroAddress();
        if(timelockHours == 0 || timelockHours > 168) revert InvalidParams(); // max 1 week

        esToken = _esToken;
        TIMELOCK_DURATION = timelockHours * 1 hours;
        
        _initializeOwner(initialOwner);
        _grantRoles(initialOwner, OWNER_ROLE);
        if(initialRescuer != address(0)) _grantRoles(initialRescuer, RESCUER_ROLE);
    }


    function renounceOwnership() public payable override onlyOwner {
        revert Unauthorized();
    }

    function requestOwnershipTransfer(address newOwner) external onlyOwner {
        if(newOwner == address(0)) revert InvalidParams();
        selfOwnershipTimelock = block.timestamp + TIMELOCK_DURATION;
        pendingControllerOwner = newOwner;
    }

    function transferOwnership(address newOwner) public payable override onlyOwner {
        if(block.timestamp < selfOwnershipTimelock || block.timestamp > selfOwnershipTimelock + TIMELOCK_DURATION) revert TimelockNotExpired();
        if(pendingControllerOwner != newOwner) revert InvalidParams();
        
        super.transferOwnership(newOwner);
        
        pendingControllerOwner = address(0);
        selfOwnershipTimelock = 0;
    }
    function completeOwnershipHandover(address pendingOwner) public payable override onlyOwner {
        revert Unauthorized();
    }

    function requestTokenOwnershipTransfer(address newController) external onlyOwner {
        if(newController == address(0)) revert InvalidParams();
        tokenOwnershipTimelock = block.timestamp + TIMELOCK_DURATION;
        pendingTokenOwner = newController;
    }

    function transferTokenOwnership(address newController) external onlyOwner {
        if(block.timestamp < tokenOwnershipTimelock || block.timestamp > tokenOwnershipTimelock + TIMELOCK_DURATION) revert TimelockNotExpired();
        if(pendingTokenOwner != newController) revert InvalidParams();

        (bool success,) = address(esToken).call(abi.encodeWithSignature("transferOwnership(address)", newController));
        if (!success) revert InvalidParams();

        tokenOwnershipTimelock = 0;
        pendingTokenOwner = address(0);
    }
    /** 
     * @notice Request change of dangerous parameters (requires timelock)
     * @dev Only increases to durations and decreases to freedoms need timelock
     */
    function requestDangerousParamsChange(
        uint256 newMinDuration,
        uint256 newMaxDuration,
        uint256 newFreeRedeemPct,
        uint256 newCooldown
    ) external {
        _checkRoles(OWNER_ROLE);
        if(newMinDuration >= newMaxDuration || newFreeRedeemPct > 10000) revert InvalidParams();
        
        // Check if changes require timelock
        if(newMinDuration <= esToken.minRedeemDuration() &&
           newMaxDuration <= esToken.maxRedeemDuration() &&
           newFreeRedeemPct >= esToken.freeRedeemPercentage() &&
           newCooldown <= esToken.freeRedeemCooldown()) {
            // All changes are safe, apply immediately
            _updateRedeemSettings(
                esToken.minRedeemRatio(),
                esToken.maxRedeemRatio(),
                newMinDuration,
                newMaxDuration,
                esToken.redeemDividendsAdjustment(),
                newFreeRedeemPct,
                esToken.minFreeRedeem(),
                newCooldown,
                esToken.redemptionGracePeriod()
            );

            //Resets timelocked requested changes if any
            timelockDeadline = 0;
            emit DangerousParamsChanged(newMinDuration, newMaxDuration, newFreeRedeemPct, newCooldown);
        } else {
            // Store dangerous params for timelock
            pendingMinRedeemDuration = newMinDuration;
            pendingMaxRedeemDuration = newMaxDuration;
            pendingFreeRedeemPercentage = newFreeRedeemPct;
            pendingFreeRedeemCooldown = newCooldown;
            timelockDeadline = block.timestamp + TIMELOCK_DURATION;
            
            emit DangerousParamsChangeRequested(newMinDuration, newMaxDuration, newFreeRedeemPct, newCooldown);
        }
    }

    /**
     * @notice Execute timelocked dangerous params change
     */
    function executeDangerousParamsChange() external {
        _checkRoles(OWNER_ROLE);
        if(timelockDeadline == 0 || block.timestamp < timelockDeadline) revert TimelockNotExpired();

        _updateRedeemSettings(
            esToken.minRedeemRatio(),
            esToken.maxRedeemRatio(),
            pendingMinRedeemDuration,
            pendingMaxRedeemDuration,
            esToken.redeemDividendsAdjustment(),
            pendingFreeRedeemPercentage,
            esToken.minFreeRedeem(),
            pendingFreeRedeemCooldown,
            esToken.redemptionGracePeriod()
        );

        emit DangerousParamsChanged(
            pendingMinRedeemDuration,
            pendingMaxRedeemDuration,
            pendingFreeRedeemPercentage,
            pendingFreeRedeemCooldown
        );

        // Clear pending state
        timelockDeadline = 0;
    }

    /**
     * @notice Update safe parameters (no timelock)
     */
    function updateSafeParams(
        uint256 minRatio,
        uint256 maxRatio,
        uint256 divsAdjustment,
        uint256 minFreeRedeem,
        uint256 gracePeriod
    ) external {
        _checkRoles(OWNER_ROLE);
        if(minRatio > maxRatio || maxRatio > 100 || divsAdjustment > 100) revert InvalidParams();

        _updateRedeemSettings(
            minRatio,
            maxRatio,
            esToken.minRedeemDuration(),
            esToken.maxRedeemDuration(),
            divsAdjustment,
            esToken.freeRedeemPercentage(),
            minFreeRedeem,
            esToken.freeRedeemCooldown(),
            gracePeriod
        );

        emit SafeParamsChanged(minRatio, maxRatio, divsAdjustment, minFreeRedeem, gracePeriod);
    }

    /**
     * @notice Update critical addresses (no timelock)
     */
    function updateAddress(bool isDividends, address newAddr) external {
        _checkRoles(OWNER_ROLE);
        if(newAddr == address(0)) revert ZeroAddress();

        address oldAddr;
        if(isDividends) {
            oldAddr = address(esToken.dividendsAddress());
            esToken.updateDividendsAddress(IEsTokenUsage(newAddr));
        } else {
            oldAddr = esToken.treasuryAddress();
            esToken.updateTreasuryAddress(newAddr);
        }
        
        emit AddressChanged(isDividends, oldAddr, newAddr);
    }

    /**
     * @notice Update transfer whitelist (owner + rescuer)
     */
    function updateWhitelist(address account, bool status) external {
        if(!hasAnyRole(msg.sender, OWNER_ROLE | RESCUER_ROLE)) revert Unauthorized();
        if(account == address(0)) revert ZeroAddress();
        
        esToken.updateTransferWhitelist(account, status);
        emit WhitelistUpdated(account, status);
    }

    /**
     * @dev Helper to update all redeem settings
     */
    function _updateRedeemSettings(
        uint256 minRatio,
        uint256 maxRatio,
        uint256 minDuration,
        uint256 maxDuration,
        uint256 divsAdjustment,
        uint256 freePct,
        uint256 minFree,
        uint256 cooldown,
        uint256 gracePeriod
    ) internal {
        esToken.updateRedeemSettings(
            minRatio, maxRatio, minDuration, maxDuration,
            divsAdjustment, freePct, minFree, cooldown, gracePeriod
        );
    }
}