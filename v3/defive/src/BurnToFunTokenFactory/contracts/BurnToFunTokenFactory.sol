// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import { Clones } from "@openzeppelin/contracts/proxy/Clones.sol";
import { BurnToFunToken } from "./BurnToFunToken.sol";

/// @title BurnToFunTokenFactory
/// @notice Deterministically deploys token clones (CREATE2) for authorized campaigns.
/// @dev
/// - Salt is computed as keccak256("B2F:TOKEN" || campaign || chainid) inside the factory.
/// - Only `admin` can authorize campaigns; only authorized campaigns may create their token.
/// - Exactly one token per campaign (tracked in `tokenOf[campaign]`).
contract BurnToFunTokenFactory {
    using Clones for address;

    // ---------- Errors ----------
    error NotAdmin();
    error NotAuthorized();
    error AlreadyCreated();
    error InvalidAddress();
    error NotContract();
    error ZeroSupply();

    // ---------- Immutable Implementation ----------
    address public immutable implementation;

    // ---------- Admin State ----------
    address public admin;
    mapping(address => bool) public isAuthorizedCampaign;

    // ---------- Registry ----------
    mapping(address => address) public tokenOf; // campaign => token

    // ---------- Events ----------
    event AdminChanged(address indexed newAdmin);
    event CampaignAuthorizationUpdated(address indexed campaign, bool authorized);
    event TokenCreated(
        address indexed token,
        address indexed campaign,
        string name,
        string symbol,
        uint256 initialSupply
    );

    constructor() {
        implementation = address(new BurnToFunToken());
        admin = msg.sender;
    }

    // ---------- Modifiers ----------
    modifier onlyAdmin() {
        if (msg.sender != admin) revert NotAdmin();
        _;
    }

    // ---------- Admin ----------
    function setAdmin(address newAdmin) external onlyAdmin {
        if (newAdmin == address(0)) revert InvalidAddress();
        admin = newAdmin;
        emit AdminChanged(newAdmin);
    }

    function setAuthorizedCampaign(address campaign, bool authorized) external onlyAdmin {
        isAuthorizedCampaign[campaign] = authorized;
        emit CampaignAuthorizationUpdated(campaign, authorized);
    }

    // ---------- Create & Predict ----------
    /// @notice Create the token for the calling campaign at a predictable address.
    /// @dev Mints the full supply to `to` (must equal the campaign).
    function createToken(
        string calldata name_,
        string calldata symbol_,
        address to,
        uint256 supply
    ) external returns (address tokenAddr) {
        address campaign = msg.sender;

        if (!isAuthorizedCampaign[campaign]) revert NotAuthorized();
        if (to != campaign) revert InvalidAddress();
        if (campaign.code.length == 0) revert NotContract();
        if (tokenOf[campaign] != address(0)) revert AlreadyCreated();
        if (supply == 0) revert ZeroSupply();

        bytes32 salt = _tokenSalt(campaign);

        // Clean revert if a token was somehow deployed with this salt already.
        address predicted = Clones.predictDeterministicAddress(implementation, salt, address(this));
        if (predicted.code.length != 0) revert AlreadyCreated();

        tokenAddr = implementation.cloneDeterministic(salt);
        BurnToFunToken(tokenAddr).initialize(name_, symbol_, to, supply);

        tokenOf[campaign] = tokenAddr;

        // Remove the campaign's authorization after success.
        isAuthorizedCampaign[campaign] = false;

        emit TokenCreated(tokenAddr, campaign, name_, symbol_, supply);
    }

    /// @notice Predict the token address for a given campaign (before deployment).
    function predictTokenAddress(address campaign) external view returns (address) {
        return Clones.predictDeterministicAddress(implementation, _tokenSalt(campaign), address(this));
    }

    // ---------- Internal ----------
    function _tokenSalt(address campaign) internal view returns (bytes32) {
        // Bind salt to campaign and chain to prevent cross-network collisions.
        return keccak256(abi.encodePacked("B2F:TOKEN", campaign, block.chainid));
    }
}
