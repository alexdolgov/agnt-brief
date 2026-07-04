// SPDX-License-Identifier: MIT
pragma solidity ^0.8.12;

import "./EmissionsManager.sol";
import "./interfaces/ILiquidMining.sol";

error EmissionsManagerV2__LiquidMiningAddressZero();
error EmissionsManagerV2__NotLiquidMining();
error EmissionsManagerV2__AlreadyMintedForSeason();
error EmissionsManagerV2__LiquidMiningAllocationEitherZeroOrExceeded();

/// @title EmissionsManagerV2
/// @author royvardhan
/// @notice Emissions manager contract
/// @dev Utilizes 'EmissionsManager'
contract EmissionsManagerV2 is EmissionsManager {
    //////////////
    /// EVENTS ///
    //////////////

    event MintLiquidMining(address indexed liquidMining, uint256 allocation);

    ///////////////////////
    /// PRIVATE STORAGE ///
    ///////////////////////

    ILiquidMining s_liquidMining;

    uint256 public s_liquidMiningAllocation;

    uint256 public s_vapeMintedToLiquidMining;

    uint256 public s_mintedForSeason;

    /////////////////
    /// MODIFIERS ///
    /////////////////

    modifier onlyLiquidMining() {
        if (msg.sender != address(s_liquidMining)) revert EmissionsManagerV2__NotLiquidMining();
        _;
    }

    function initializeV2(
        address _vape,
        address _mVape,
        address _genesisStaking,
        address _liquidMining,
        uint256 _liquidMiningAllocation,
        uint8 _version
    ) public reinitializer(_version) {
        __Ownable_init();
        s_vape = IVape(_vape);
        s_mVape = IERC20(_mVape);
        s_liquidMining = ILiquidMining(_liquidMining);
        s_genesisStaking = _genesisStaking;
        s_liquidMiningAllocation = _liquidMiningAllocation;
    }

    /////////////
    /// ADMIN ///
    /////////////

    /// @notice Mint Vape for liquid mining
    /// @dev Only liquid mining contract can call this function
    /// @dev Can only be called once
    function mintLiquidMining() external onlyLiquidMining {
        if (address(s_liquidMining) == address(0)) revert EmissionsManagerV2__LiquidMiningAddressZero();
        uint256 currentSeason = s_liquidMining.getCurrentSeasonId();
        if (s_mintedForSeason == currentSeason) revert EmissionsManagerV2__AlreadyMintedForSeason();
        uint256 seasonalAllocation = s_liquidMining.getRewardTokenToDistribute(currentSeason);
        if (seasonalAllocation > 0 && (seasonalAllocation + s_vapeMintedToLiquidMining <= s_liquidMiningAllocation)) {
            s_vape.mint(address(s_liquidMining), seasonalAllocation);
        } else {
            revert EmissionsManagerV2__LiquidMiningAllocationEitherZeroOrExceeded();
        }
        s_mintedForSeason = s_liquidMining.getCurrentSeasonId();
        s_vapeMintedToLiquidMining += seasonalAllocation;
        emit MintLiquidMining(address(s_liquidMining), s_liquidMiningAllocation);
    }

    ///////////////
    /// GETTERS ///
    ///////////////

    function getLiquidMining() external view returns (address) {
        return address(s_liquidMining);
    }

    function getLiquidMiningAllocation() external view returns (uint256) {
        return s_liquidMiningAllocation;
    }

    function getVapeMintedToLiquidMining() external view returns (uint256) {
        return s_vapeMintedToLiquidMining;
    }
}
