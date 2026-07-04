// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "solady/auth/OwnableRoles.sol";
import "./interfaces/IBunniHubA.sol";

/**
 * @title BunniHubController
 * @notice Differentiated access rights controller for BunniHub
 * Ensures that fees can be collected correctly even in the presence of free flash loans.
 */

contract BunniHubController is OwnableRoles {
    error ZeroAddress();
    error InvalidParams();
    error TimelockNotExpired();

    uint256 private constant FEE_MANAGER_ROLE = _ROLE_0;
    
    uint256 private immutable TIMELOCK_DURATION;
    IBunniHub public immutable bunniHub;
    uint256 public defaultProtocolFee;

    uint256 public selfOwnershipTimelock;
    address public pendingControllerOwner;

    uint256 public hubOwnershipTimelock;
    address public pendingHubOwner;

    event RequestedOwnershipTransfer(uint256 selfOwnershipTimelock, address newOwner);
    event ExecutedOwnershipTransfer(address newOwner);
    event RequestedHubOwnershipTransfer(uint256 hubOwnershipTimelock, address newController);
    event ExecutedHubOwnershipTransfer(address newController);
    event DefaultProtocolFeeChanged(uint256 oldDefaultFee, uint256 newDefaultFee);

    constructor(IBunniHub _bunniHub, address initialOwner, address initialFeeManager, uint256 timelockHours, uint256 _defaultProtocolFee) {
        if(address(_bunniHub) == address(0) || initialOwner == address(0)) revert ZeroAddress();
        if(timelockHours == 0 || timelockHours > 168) revert InvalidParams(); // max 1 week

        bunniHub = _bunniHub;
        defaultProtocolFee = _defaultProtocolFee;
        
        TIMELOCK_DURATION = timelockHours * 1 hours;

        _initializeOwner(initialOwner);
        // _grantRoles(initialOwner, OWNER_ROLE);
        if(initialFeeManager != address(0)) _grantRoles(initialFeeManager, FEE_MANAGER_ROLE);
    }


    function renounceOwnership() public payable override onlyOwner {
        revert Unauthorized();
    }

    function requestOwnershipTransfer(address newOwner) external onlyOwner {
        if(newOwner == address(0)) revert InvalidParams();
        selfOwnershipTimelock = block.timestamp + TIMELOCK_DURATION;
        pendingControllerOwner = newOwner;
        emit RequestedOwnershipTransfer(selfOwnershipTimelock, newOwner);
    }

    function transferOwnership(address newOwner) public payable override onlyOwner {
        if(block.timestamp < selfOwnershipTimelock || block.timestamp > selfOwnershipTimelock + TIMELOCK_DURATION) revert TimelockNotExpired();
        if(pendingControllerOwner != newOwner) revert InvalidParams();
        
        super.transferOwnership(newOwner);
        
        pendingControllerOwner = address(0);
        selfOwnershipTimelock = 0;
        emit ExecutedOwnershipTransfer(newOwner);
    }
    function completeOwnershipHandover(address pendingOwner) public payable override onlyOwner {
        revert Unauthorized();
    }

    function requestHubOwnershipTransfer(address newController) external onlyOwner {
        if(newController == address(0)) revert InvalidParams();
        hubOwnershipTimelock = block.timestamp + TIMELOCK_DURATION;
        pendingHubOwner = newController;
        emit RequestedHubOwnershipTransfer(hubOwnershipTimelock, newController);
    }

    function transferHubOwnership(address newController) external onlyOwner {
        if(block.timestamp < hubOwnershipTimelock || block.timestamp > hubOwnershipTimelock + TIMELOCK_DURATION) revert TimelockNotExpired();
        if(pendingHubOwner != newController) revert InvalidParams();

        (bool success,) = address(bunniHub).call(abi.encodeWithSignature("transferOwnership(address)", newController));
        if (!success) revert InvalidParams();

        hubOwnershipTimelock = 0;
        pendingHubOwner = address(0);
        emit ExecutedHubOwnershipTransfer(newController);
    }

    function compound(BunniKey calldata key, uint protocolFee) external onlyRolesOrOwner(FEE_MANAGER_ROLE) {
        bunniHub.setProtocolFee(protocolFee);
        bunniHub.compound(key);
        bunniHub.setProtocolFee(defaultProtocolFee);
    }

    function compoundSkim(BunniKey calldata key, uint protocolFee) external onlyRolesOrOwner(FEE_MANAGER_ROLE) {
        bunniHub.setProtocolFee(protocolFee);
        bunniHub.compoundSkim(key);
        bunniHub.setProtocolFee(defaultProtocolFee);
    }

    function sweepTokens(IERC20[] calldata tokens, address recipient) external onlyRolesOrOwner(FEE_MANAGER_ROLE) {
        bunniHub.sweepTokens(tokens, recipient);
    }

    function setDefaultProtocolFee(uint protocolFee) external onlyRolesOrOwner(FEE_MANAGER_ROLE) {
        uint256 oldProtocolFee = defaultProtocolFee;
        defaultProtocolFee = protocolFee;
        bunniHub.setProtocolFee(protocolFee);
        emit DefaultProtocolFeeChanged(oldProtocolFee, protocolFee);
    }
}