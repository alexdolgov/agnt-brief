// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.28;

import {IVlSDT} from "@lockers/src/interfaces/IVlSDT.sol";
import {IVlFeeDistributor} from "@lockers/src/interfaces/IVlFeeDistributor.sol";
import {IVeSDT} from "@lockers/src/interfaces/IVeSDT.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {RouterModuleBase} from "src/router/modules/RouterModuleBase.sol";

/// @title RouterModuleVLSDT
/// @notice Router module for the vlSDT contract and the different vlFeeDistributors
/// @dev    This module is expected to be used in composition with the other modules of the router.
///         The router must be an operator of the vlSDT contract to call the functions of this module.
/// @author Stake DAO
/// @custom:contact contact@stakedao.org
contract RouterModuleVLSDT is RouterModuleBase {
    using SafeERC20 for IERC20;

    string public constant name = type(RouterModuleVLSDT).name;
    string public constant version = "1.0.0";

    IVlSDT public immutable VLSDT;
    IVeSDT public immutable VE_SDT;
    IERC20 public immutable SDT;

    error InvalidData();

    constructor(address _vlSDT) {
        VLSDT = IVlSDT(_vlSDT);
        SDT = IERC20(VLSDT.SDT());
        VE_SDT = IVeSDT(VLSDT.VE_SDT());
    }

    ////////////////////////////////////////////////////////////////
    /// --- MIGRATE
    ///////////////////////////////////////////////////////////////

    /// @notice Migrate the caller's veSDT into the vlSDT
    function migrateVeSDT() external onlyDelegateCall {
        VE_SDT.forceMigrate(msg.sender);
    }

    ////////////////////////////////////////////////////////////////
    /// --- STAKE
    ///////////////////////////////////////////////////////////////

    /// @notice Stake the caller's SDT into the vlSDT
    /// @param amount The amount of SDT to stake
    /// @dev The router must own the tokens to stake when this function is called.
    ///      For doing so, the caller must have signed a permit2 authorization and used it by
    ///      calling the function `transferFromPermit2` of the RouterModuleERC20Manager module
    ///      in the **SAME TRANSACTION**. The composition ability of the router allows for this.
    function stake(uint256 amount) external onlyDelegateCall {
        SDT.approve(address(VLSDT), amount);
        VLSDT.stake(amount, msg.sender);
    }

    ////////////////////////////////////////////////////////////////
    /// --- DEPOSIT REWARDS
    ///////////////////////////////////////////////////////////////

    /// @notice Deposit rewards from the caller into the vlFeeDistributors
    /// @param vlFeeDistributors The addresses of the vlFeeDistributors to deposit into
    /// @param amounts The amounts of rewards to deposit
    /// @dev The router must own the tokens to deposit when this function is called.
    ///      For doing so, the caller must have signed a permit2 authorization and used it by
    ///      calling the function `transferFromPermit2` of the RouterModuleERC20Manager module
    ///      in the **SAME TRANSACTION**. The composition ability of the router allows for this.
    function depositRewards(address[] calldata vlFeeDistributors, uint256[] calldata amounts)
        external
        onlyDelegateCall
    {
        require(vlFeeDistributors.length == amounts.length, InvalidData());

        for (uint256 i; i < vlFeeDistributors.length; i++) {
            IVlFeeDistributor(vlFeeDistributors[i]).REWARD_TOKEN().approve(vlFeeDistributors[i], amounts[i]);
            IVlFeeDistributor(vlFeeDistributors[i]).deposit(amounts[i]);
        }
    }

    ////////////////////////////////////////////////////////////////
    /// --- CLAIM
    ///////////////////////////////////////////////////////////////

    /// @notice Claim rewards from the vlFeeDistributors for the caller
    /// @param vlFeeDistributors The addresses of the vlFeeDistributors to claim from for the caller
    /// @return amounts The amounts of rewards claimed for each vlFeeDistributor
    function claim(address[] calldata vlFeeDistributors) external onlyDelegateCall returns (uint256[] memory amounts) {
        amounts = new uint256[](vlFeeDistributors.length);
        for (uint256 i; i < vlFeeDistributors.length; i++) {
            amounts[i] = IVlFeeDistributor(vlFeeDistributors[i]).claim(msg.sender, msg.sender);
        }
    }

    /// @notice Claim rewards from the vlFeeDistributor for the caller to the router for composition
    /// @dev This function is expected to be chain with another module's function in order to
    ///      put the claimed rewards on work
    /// @param vlFeeDistributors The addresses of the vlFeeDistributors to claim from for the router
    /// @return amounts The amounts of rewards claimed for each vlFeeDistributor
    function claimFor(address[] calldata vlFeeDistributors)
        external
        onlyDelegateCall
        returns (uint256[] memory amounts)
    {
        amounts = new uint256[](vlFeeDistributors.length);
        for (uint256 i; i < vlFeeDistributors.length; i++) {
            amounts[i] = IVlFeeDistributor(vlFeeDistributors[i]).claim(msg.sender, address(this));
        }
    }

    /// @notice Claim rewards from the vlFeeDistributors starting from a specific epoch
    /// @dev Power-user entrypoint. Epochs before startEpoch are permanently forfeited.
    ///      Use this when a third party has dust-staked on behalf of the caller at an early epoch,
    ///      forcing claim iteration to start far before any real rewards.
    /// @param vlFeeDistributors The addresses of the vlFeeDistributors to claim from
    /// @param startEpoch The epoch timestamp to start claiming from (0 = use default)
    /// @return amounts The amounts of rewards claimed for each vlFeeDistributor
    function claimWithPermanentEpochSkip(address[] calldata vlFeeDistributors, uint256 startEpoch)
        external
        onlyDelegateCall
        returns (uint256[] memory amounts)
    {
        amounts = new uint256[](vlFeeDistributors.length);
        for (uint256 i; i < vlFeeDistributors.length; i++) {
            amounts[i] =
                IVlFeeDistributor(vlFeeDistributors[i]).claimWithPermanentEpochSkip(msg.sender, msg.sender, startEpoch);
        }
    }

    /// @notice Claim rewards to the router for composition, starting from a specific epoch
    /// @dev Power-user entrypoint. Epochs before startEpoch are permanently forfeited.
    /// @param vlFeeDistributors The addresses of the vlFeeDistributors to claim from
    /// @param startEpoch The epoch timestamp to start claiming from (0 = use default)
    /// @return amounts The amounts of rewards claimed for each vlFeeDistributor
    function claimForWithPermanentEpochSkip(address[] calldata vlFeeDistributors, uint256 startEpoch)
        external
        onlyDelegateCall
        returns (uint256[] memory amounts)
    {
        amounts = new uint256[](vlFeeDistributors.length);
        for (uint256 i; i < vlFeeDistributors.length; i++) {
            amounts[i] = IVlFeeDistributor(vlFeeDistributors[i]).claimWithPermanentEpochSkip(
                msg.sender, address(this), startEpoch
            );
        }
    }

    ////////////////////////////////////////////////////////////////
    /// --- CHECKPOINT TOKENS
    ///////////////////////////////////////////////////////////////

    /// @notice Checkpoint the distribution of rewards for different vlFeeDistributors
    /// @param vlFeeDistributors The addresses of the vlFeeDistributors to checkpoint
    function checkpoints(address[] calldata vlFeeDistributors) external onlyDelegateCall {
        for (uint256 i; i < vlFeeDistributors.length; i++) {
            IVlFeeDistributor(vlFeeDistributors[i]).checkpointToken();
        }
    }
}
