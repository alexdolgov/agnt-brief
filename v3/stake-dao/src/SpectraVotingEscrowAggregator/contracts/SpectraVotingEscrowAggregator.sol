// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.28;

import {IGovernanceRegistry} from "./interfaces/IGovernanceRegistry.sol";
import {IVotingEscrow} from "./interfaces/IVotingEscrow.sol";
import {ISpectraVotingEscrowAggregator} from "./interfaces/ISpectraVotingEscrowAggregator.sol";
import {AccessManagedUpgradeable} from "@openzeppelin-upgradeable/contracts/access/manager/AccessManagedUpgradeable.sol";

/// @title Spectra Voting Escrow Aggregator
/// @notice Aggregates the voting power of all voting escrows registered in the GovernanceRegistry
/// @author spectra.finance
contract SpectraVotingEscrowAggregator is ISpectraVotingEscrowAggregator, AccessManagedUpgradeable {
    uint256 public constant VOTING_POWER_DIVISOR = 1000000000000000000;
    IGovernanceRegistry public governanceRegistry;

    constructor() {
        _disableInitializers();
    }

    function initialize(address _initialAuthority, address _governanceRegistry) external initializer {
        __AccessManaged_init(_initialAuthority);
        governanceRegistry = IGovernanceRegistry(_governanceRegistry);
    }

    /// @inheritdoc ISpectraVotingEscrowAggregator
    function setGovernanceRegistry(address _governanceRegistry) external restricted {
        emit GovernanceRegistryChange(address(governanceRegistry), _governanceRegistry);
        governanceRegistry = IGovernanceRegistry(_governanceRegistry);
    }

    /// @inheritdoc ISpectraVotingEscrowAggregator
    function getVotingPowerOfNFT(address _ve, uint256 _tokenId) external view returns (uint256) {
        return _getVotingPowerOfNFT(_ve, _tokenId);
    }

    /// @inheritdoc ISpectraVotingEscrowAggregator
    function getVotingPowerOfNFTAt(address _ve, uint256 _tokenId, uint256 _t) external view returns (uint256) {
        return _getVotingPowerOfNFTAt(_ve, _tokenId, _t);
    }

    /// @inheritdoc ISpectraVotingEscrowAggregator
    function getTotalVotingPowerOfVE(address _ve) external view returns (uint256) {
        return _getTotalVotingPowerOfVE(_ve);
    }

    /// @inheritdoc ISpectraVotingEscrowAggregator
    function getTotalVotingPowerOfVEAt(address _ve, uint256 _t) external view returns (uint256) {
        return _getTotalVotingPowerOfVEAt(_ve, _t);
    }

    /// @inheritdoc ISpectraVotingEscrowAggregator
    function getTotalVotingPower() public view returns (uint256) {
        address[] memory veAddresses = governanceRegistry.votingEscrows();
        uint256 totalVotingPower = 0;
        for (uint256 i = 0; i < veAddresses.length; i++) {
            totalVotingPower += _getTotalVotingPowerOfVE(veAddresses[i]);
        }
        return totalVotingPower;
    }

    /// @inheritdoc ISpectraVotingEscrowAggregator
    function getTotalVotingPowerAt(uint256 _t) external view returns (uint256) {
        address[] memory veAddresses = governanceRegistry.votingEscrows();
        uint256 totalVotingPower = 0;
        for (uint256 i = 0; i < veAddresses.length; i++) {
            totalVotingPower += _getTotalVotingPowerOfVEAt(veAddresses[i], _t);
        }
        return totalVotingPower;
    }

    /// @inheritdoc ISpectraVotingEscrowAggregator
    function getTotalVotingPowerOfUser(address _user) public view returns (uint256) {
        address[] memory veAddresses = governanceRegistry.votingEscrows();
        uint256 totalVotingPower = 0;
        for (uint256 i = 0; i < veAddresses.length; i++) {
            uint256 veBalance = IVotingEscrow(veAddresses[i]).balanceOf(_user);
            for (uint256 j = 0; j < veBalance; j++) {
                uint256 tokenId = IVotingEscrow(veAddresses[i]).ownerToNFTokenIdList(_user, j);
                totalVotingPower += _getVotingPowerOfNFT(veAddresses[i], tokenId);
            }
        }
        return totalVotingPower;
    }

    /// @inheritdoc ISpectraVotingEscrowAggregator
    function balanceOf(address _user) external view returns (uint256) {
        return getTotalVotingPowerOfUser(_user);
    }

    /// @inheritdoc ISpectraVotingEscrowAggregator
    function totalSupply() external view returns (uint256) {
        return getTotalVotingPower();
    }

    /* INTERNALS
     *****************************************************************************************************************/

    function _getTotalVotingPowerOfVEAt(address _ve, uint256 _t) internal view returns (uint256) {
        if (!governanceRegistry.isValidVotingEscrow(_ve)) revert InvalidVotingEscrow(_ve);
        uint256 veTotalSupply = IVotingEscrow(_ve).totalSupplyAt(_t);
        uint256 veWeight = governanceRegistry.getVeWeightAt(address(_ve), _t);
        return (veTotalSupply * veWeight) / VOTING_POWER_DIVISOR;
    }

    function _getTotalVotingPowerOfVE(address _ve) internal view returns (uint256) {
        return _getTotalVotingPowerOfVEAt(_ve, block.timestamp);
    }

    function _getVotingPowerOfNFTAt(address _ve, uint256 _tokenId, uint256 _t) internal view returns (uint256) {
        if (!governanceRegistry.isValidVotingEscrow(_ve)) revert InvalidVotingEscrow(_ve);
        uint256 veBalance = IVotingEscrow(_ve).balanceOfNFTAt(_tokenId, _t);
        uint256 veWeight = governanceRegistry.getVeWeightAt(address(_ve), _t);
        return (veBalance * veWeight) / VOTING_POWER_DIVISOR;
    }

    function _getVotingPowerOfNFT(address _ve, uint256 _tokenId) internal view returns (uint256) {
        return _getVotingPowerOfNFTAt(_ve, _tokenId, block.timestamp);
    }
}
