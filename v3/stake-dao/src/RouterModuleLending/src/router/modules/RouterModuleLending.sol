// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.28;

import {RouterModuleBase} from "src/router/modules/RouterModuleBase.sol";
import {IStrategyWrapper} from "src/lending/interfaces/IStrategyWrapper.sol";

/// @title RouterModuleLending
/// @notice A module that allows for the deposit of collateral, the claim of rewards,
///         and the liquidation of positions accross different Stake DAO markets
/// @dev    This module is expected to be used in composition with the RouterModuleERC20Manager module.
/// @author Stake DAO
/// @custom:contact contact@stakedao.org
contract RouterModuleLending is RouterModuleBase {
    string public constant name = type(RouterModuleLending).name;
    string public constant version = "1.0.0";

    error InvalidData();

    /// @notice Deposit shares (Stake DAO Reward Vault shares) into the strategy wrappers for the caller
    /// @param wrappers The addresses of the strategy wrappers to deposit the shares into
    /// @param amounts The amounts of shares to deposit for each wrapper
    /// @dev The router must own the shares to deposit when this function is called.
    ///      For doing so, the caller must have signed a permit2 authorization and used it by
    ///      calling the function `transferFromPermit2AndApprove` of the RouterModuleERC20Manager module
    ///      in the **SAME TRANSACTION**. The composition ability of the router allows for this.
    function depositShares(address[] calldata wrappers, uint256[] calldata amounts) external onlyDelegateCall {
        require(wrappers.length == amounts.length, InvalidData());

        for (uint256 i; i < wrappers.length; i++) {
            IStrategyWrapper(wrappers[i]).depositShares(amounts[i], msg.sender);
        }
    }

    /// @notice Deposit assets (e.g. Curve LP tokens) into the strategy wrappers for the caller
    /// @param wrappers The addresses of the strategy wrappers to deposit the assets into
    /// @param amounts The amounts of assets to deposit for each wrapper
    /// @dev The router must own the assets to deposit when this function is called.
    ///      For doing so, the caller must have signed a permit2 authorization and used it by
    ///      calling the function `transferFromPermit2AndApprove` of the RouterModuleERC20Manager module
    ///      in the **SAME TRANSACTION**. The composition ability of the router allows for this.
    function depositAssets(address[] calldata wrappers, uint256[] calldata amounts) external onlyDelegateCall {
        require(wrappers.length == amounts.length, InvalidData());

        for (uint256 i; i < wrappers.length; i++) {
            IStrategyWrapper(wrappers[i]).depositAssets(amounts[i], msg.sender);
        }
    }

    /// @notice Claim main rewards (e.g. CRV) from the strategy wrappers for the caller
    /// @param wrappers The addresses of the strategy wrappers to claim the main rewards from
    /// @return amounts The amounts of main rewards claimed for each wrapper
    function claimMainRewards(address[] calldata wrappers)
        external
        onlyDelegateCall
        returns (uint256[] memory amounts)
    {
        require(wrappers.length > 0, InvalidData());

        amounts = new uint256[](wrappers.length);
        for (uint256 i; i < wrappers.length; i++) {
            amounts[i] = IStrategyWrapper(wrappers[i]).claim(msg.sender);
        }
    }

    /// @notice Claim main rewards (e.g. CRV) from the strategy wrappers for the router
    /// @param wrappers The addresses of the strategy wrappers to claim the main rewards from
    /// @return amounts The amounts of main rewards claimed for each wrapper
    function claimMainRewardsFor(address[] calldata wrappers)
        external
        onlyDelegateCall
        returns (uint256[] memory amounts)
    {
        require(wrappers.length > 0, InvalidData());

        amounts = new uint256[](wrappers.length);
        for (uint256 i; i < wrappers.length; i++) {
            amounts[i] = IStrategyWrapper(wrappers[i]).claim(address(this));
        }
    }

    /// @notice Claim specific extra rewards from the strategy wrappers for the caller
    /// @param wrappers The addresses of the strategy wrappers to claim the extra rewards from
    /// @param tokens The addresses of the tokens to claim the extra rewards for
    /// @return amounts The amounts of extra rewards claimed for each wrapper for each token
    function claimExtraRewards(address[] calldata wrappers, address[] calldata tokens)
        external
        onlyDelegateCall
        returns (uint256[][] memory amounts)
    {
        require(wrappers.length > 0 && tokens.length > 0, InvalidData());

        amounts = new uint256[][](wrappers.length);
        for (uint256 i; i < wrappers.length; i++) {
            amounts[i] = IStrategyWrapper(wrappers[i]).claimExtraRewards(msg.sender, tokens);
        }
    }

    /// @notice Claim specific extra rewards from the strategy wrappers for the router
    /// @param wrappers The addresses of the strategy wrappers to claim the extra rewards from
    /// @param tokens The addresses of the tokens to claim the extra rewards for
    /// @return amounts The amounts of extra rewards claimed for each wrapper for each token
    function claimExtraRewardsFor(address[] calldata wrappers, address[] calldata tokens)
        external
        onlyDelegateCall
        returns (uint256[][] memory amounts)
    {
        require(wrappers.length > 0 && tokens.length > 0, InvalidData());

        amounts = new uint256[][](wrappers.length);
        for (uint256 i; i < wrappers.length; i++) {
            amounts[i] = IStrategyWrapper(wrappers[i]).claimExtraRewards(address(this), tokens);
        }
    }

    /// @notice Claim all extra rewards from the strategy wrappers for the caller
    /// @param wrappers The addresses of the strategy wrappers to claim the extra rewards from
    /// @return amounts The amounts of extra rewards claimed for each wrapper
    function claimExtraRewards(address[] calldata wrappers)
        external
        onlyDelegateCall
        returns (uint256[][] memory amounts)
    {
        require(wrappers.length > 0, InvalidData());

        amounts = new uint256[][](wrappers.length);
        for (uint256 i; i < wrappers.length; i++) {
            amounts[i] = IStrategyWrapper(wrappers[i]).claimExtraRewards(msg.sender);
        }
    }

    /// @notice Claim all extra rewards from the strategy wrappers for the router
    /// @param wrappers The addresses of the strategy wrappers to claim the extra rewards from
    /// @return amounts The amounts of extra rewards claimed for each wrapper
    function claimExtraRewardsFor(address[] calldata wrappers)
        external
        onlyDelegateCall
        returns (uint256[][] memory amounts)
    {
        require(wrappers.length > 0, InvalidData());

        amounts = new uint256[][](wrappers.length);
        for (uint256 i; i < wrappers.length; i++) {
            amounts[i] = IStrategyWrapper(wrappers[i]).claimExtraRewards(address(this));
        }
    }

    /// @notice Claim all main and extra rewards from the strategy wrappers for the caller
    /// @param wrappers The addresses of the strategy wrappers to claim the rewards from
    /// @return mainRewards The amounts of main rewards claimed for each wrapper
    /// @return extraRewards The amounts of extra rewards claimed for each wrapper for each token
    function claimAllRewards(address[] calldata wrappers)
        external
        onlyDelegateCall
        returns (uint256[] memory mainRewards, uint256[][] memory extraRewards)
    {
        require(wrappers.length > 0, InvalidData());

        mainRewards = new uint256[](wrappers.length);
        extraRewards = new uint256[][](wrappers.length);
        for (uint256 i; i < wrappers.length; i++) {
            mainRewards[i] = IStrategyWrapper(wrappers[i]).claim(msg.sender);
            extraRewards[i] = IStrategyWrapper(wrappers[i]).claimExtraRewards(msg.sender);
        }
    }

    /// @notice Claim all main and extra rewards from the strategy wrappers for the router
    /// @param wrappers The addresses of the strategy wrappers to claim the rewards from
    /// @return mainRewards The amounts of main rewards claimed for each wrapper
    /// @return extraRewards The amounts of extra rewards claimed for each wrapper for each token
    function claimAllRewardsFor(address[] calldata wrappers)
        external
        onlyDelegateCall
        returns (uint256[] memory mainRewards, uint256[][] memory extraRewards)
    {
        require(wrappers.length > 0, InvalidData());

        mainRewards = new uint256[](wrappers.length);
        extraRewards = new uint256[][](wrappers.length);

        for (uint256 i; i < wrappers.length; i++) {
            mainRewards[i] = IStrategyWrapper(wrappers[i]).claim(address(this));
            extraRewards[i] = IStrategyWrapper(wrappers[i]).claimExtraRewards(address(this));
        }
    }
}
