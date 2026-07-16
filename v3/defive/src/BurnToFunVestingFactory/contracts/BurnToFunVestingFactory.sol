// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import { Clones } from "@openzeppelin/contracts/proxy/Clones.sol";
import { BurnToFunVesting } from "./BurnToFunVesting.sol";

/// @title BurnToFunVestingFactory
/// @notice Deterministic vesting clones (CREATE2) for predictable addresses.
/// @dev Non-upgradeable. Small admin surface to authorize campaigns.
contract BurnToFunVestingFactory {
    using Clones for address;

    // ---- Errors ----
    error NotAdmin();
    error NotAuthorized();
    error InvalidAddress();
    error NotContract();
    error AlreadyCreated();

    // ---- Admin State ----
    address public admin;
    mapping(address => bool) public isAuthorizedCampaign;

    // ---- Clone Implementation ----
    address public immutable implementation;

    // ---- Events ----
    event AdminChanged(address indexed newAdmin);
    event CampaignAuthorizationUpdated(address indexed campaign, bool authorized);
    event VestingCreated(
        address indexed campaign,
        address indexed vesting,
        address indexed token,
        address beneficiary,
        uint256 cliffTime,
        uint256 vestingEndTime,
        uint256 totalAllocation
    );

    // Vesting per campaign
    mapping(address => address) public vestingOf;

    constructor() {
        admin = msg.sender;
        implementation = address(new BurnToFunVesting());
    }

    // ---------- Admin ----------
    modifier onlyAdmin() {
        if (msg.sender != admin) revert NotAdmin();
        _;
    }

    function setAdmin(address newAdmin) external onlyAdmin {
        if (newAdmin == address(0)) revert InvalidAddress();
        admin = newAdmin;
        emit AdminChanged(newAdmin);
    }

    /// @notice Authorize or deauthorize a campaign to create its vesting.
    function setAuthorizedCampaign(address campaign, bool authorized) external onlyAdmin {
        isAuthorizedCampaign[campaign] = authorized;
        emit CampaignAuthorizationUpdated(campaign, authorized);
    }

    // ---------- Core ----------
    /// @notice Create a deterministic vesting clone for `msg.sender` (campaign).
    /// @dev Caller must be an authorized campaign. One vesting per campaign in this variant.
    function createVesting(
        address token,
        address beneficiary,
        uint256 cliffTime,
        uint256 vestingEndTime,
        uint256 totalAllocation
    ) external returns (address vesting) {
        address campaign = msg.sender;
        if (!isAuthorizedCampaign[campaign]) revert NotAuthorized();
        if (campaign.code.length == 0) revert NotContract(); // must be a contract
        if (vestingOf[campaign] != address(0)) revert AlreadyCreated();

        bytes32 salt = _vestingSalt(campaign);

        // Extra safety: ensure not already deployed with this salt
        address predicted = Clones.predictDeterministicAddress(implementation, salt, address(this));
        if (predicted.code.length != 0) revert AlreadyCreated();

        vesting = implementation.cloneDeterministic(salt);
        BurnToFunVesting(vesting).initialize(token, beneficiary, cliffTime, vestingEndTime, totalAllocation);

        vestingOf[campaign] = vesting;

        // Remove the campaign's authorization after success.
        isAuthorizedCampaign[campaign] = false;

        emit VestingCreated(campaign, vesting, token, beneficiary, cliffTime, vestingEndTime, totalAllocation);
    }

    /// @notice Predict the deterministic vesting address for a campaign.
    /// @dev Salt = keccak256("B2F:VESTING" || campaign || chainid).
    function predictVestingAddress(address campaign) external view returns (address) {
        return Clones.predictDeterministicAddress(implementation, _vestingSalt(campaign), address(this));
    }

    // -------------------- Internal helpers --------------------
    function _vestingSalt(address campaign) internal view returns (bytes32) {
        // Bind to campaign + chain id to prevent cross-network collisions
        return keccak256(abi.encodePacked("B2F:VESTING", campaign, block.chainid));
    }
}
