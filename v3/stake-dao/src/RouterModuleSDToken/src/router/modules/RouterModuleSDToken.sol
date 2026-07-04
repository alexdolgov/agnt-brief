// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.28;

import {IFeeDistributor} from "@interfaces/curve/IFeeDistributor.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Permit2} from "@shared/src/permit2/Permit2.sol";
import {RouterModuleBase} from "src/router/modules/RouterModuleBase.sol";

/// @title RouterModuleSDToken
contract RouterModuleSDToken is RouterModuleBase {
    using SafeERC20 for IERC20;
    using Permit2 for IERC20;

    string public constant name = type(RouterModuleSDToken).name;
    string public constant version = "2.1.0";

    ////////////////////////////////////////////////////////////////
    /// --- DEPOSIT (token -> sdToken)
    ///////////////////////////////////////////////////////////////

    /// @notice Mint sdToken to the caller by depositing the caller's tokens
    /// @param depositor Address of the depositor
    /// @param amount Amount of tokens to deposit
    /// @dev The router must own the tokens to deposit when this function is called.
    ///      For doing so, the caller must have signed a permit2 authorization and used it by
    ///      calling the function `transferFromPermit2` of the RouterModuleERC20Manager module
    ///      in the **SAME TRANSACTION**. The composition ability of the router allows for this.
    function deposit(address depositor, uint256 amount) external onlyDelegateCall {
        IERC20(IDepositor(depositor).token()).approve(depositor, amount);
        IDepositor(depositor).deposit(amount, msg.sender);
    }

    ////////////////////////////////////////////////////////////////
    /// --- STAKE (sdToken ->  sdToken-gauge)
    ///////////////////////////////////////////////////////////////

    /// @notice Stake the caller's sdToken into the liquidity gauge
    /// @param gauge Address of the liquidity gauge
    /// @param amount Amount of sdToken to stake
    /// @dev The router must own the tokens to state when this function is called.
    ///      For doing so, the caller must have signed a permit2 authorization and used it by
    ///      calling the function `transferFromPermit2` of the RouterModuleERC20Manager module
    ///      in the **SAME TRANSACTION**. The composition ability of the router allows for this.
    function stake(address gauge, uint256 amount) external onlyDelegateCall {
        IERC20(ILiquidityGauge(gauge).staking_token()).approve(gauge, amount);
        ILiquidityGauge(gauge).deposit(amount, msg.sender);
    }

    ////////////////////////////////////////////////////////////////
    /// --- DEPOSIT & STAKE (token -> sdToken-gauge)
    ///////////////////////////////////////////////////////////////

    /// @notice Deposit and stake the caller's tokens into the liquidity gauge
    /// @param depositor Address of the depositor
    /// @param gauge Address of the liquidity gauge
    /// @param amount Amount of tokens to deposit
    /// @dev The router must own the tokens to deposit when this function is called.
    ///      For doing so, the caller must have signed a permit2 authorization and used it by
    ///      calling the function `transferFromPermit2` of the RouterModuleERC20Manager module
    ///      in the **SAME TRANSACTION**. The composition ability of the router allows for this.
    function depositAndStake(address depositor, address gauge, uint256 amount) external onlyDelegateCall {
        // 1. Mint sdToken using Token
        IERC20(IDepositor(depositor).token()).approve(depositor, amount);
        IDepositor(depositor).deposit(amount, address(this));

        // 2. Stake sdToken into the liquidity gauge for the caller
        address sdToken = ILiquidityGauge(gauge).staking_token();
        IERC20(sdToken).approve(gauge, amount);
        ILiquidityGauge(gauge).deposit(amount, msg.sender);
    }

    ////////////////////////////////////////////////////////////////
    /// --- CLAIM GAUGE REWARDS
    ///////////////////////////////////////////////////////////////

    /// @notice Claim rewards from the liquidity gauge
    /// @param gauge Address of the liquidity gauge
    function claim(address gauge) public onlyDelegateCall {
        ILiquidityGauge(gauge).claim_rewards(msg.sender);
    }

    /// @notice Claim rewards from the liquidity gauges
    /// @param gauges Addresses of the liquidity gauges
    function claims(address[] calldata gauges) external onlyDelegateCall {
        for (uint256 i; i < gauges.length; i++) {
            ILiquidityGauge(gauges[i]).claim_rewards(msg.sender);
        }
    }

    /// @notice Claim caller's reward tokens to the router for composition
    /// @param gauge Address of the liquidity gauge
    /// @dev This function is expected to be chain with another module's function in order to
    ///      put the claimed rewards on work
    function claimFor(address gauge) external onlyDelegateCall {
        ILiquidityGauge(gauge).claim_rewards_for(msg.sender, address(this));
    }

    /// @notice Claim caller's reward tokens to the router for composition
    /// @param gauges Addresses of the liquidity gauges
    /// @dev This function is expected to be chain with another module's function in order to
    ///      put the claimed rewards on work
    function claimsFor(address[] calldata gauges) external onlyDelegateCall {
        for (uint256 i; i < gauges.length; i++) {
            ILiquidityGauge(gauges[i]).claim_rewards_for(msg.sender, address(this));
        }
    }

    ////////////////////////////////////////////////////////////////
    /// --- CLAIM veSDT REWARDS
    ///////////////////////////////////////////////////////////////

    /// @notice Claim rewards from the veSDTFeeDistributor for the caller
    /// @param veSDTFeeDistributor Address of the veSDTFeeDistributor
    function claimVeSDT(address veSDTFeeDistributor) external onlyDelegateCall {
        IFeeDistributor(veSDTFeeDistributor).claim(msg.sender);
    }

    /// @notice Claims rewards from the veSDTFeeDistributor for up to 20 accounts at once,
    ///         or to make multiple claims for the same address when that address has
    ///         significant veCRV history
    /// @param veSDTFeeDistributor Address of the veSDTFeeDistributor
    /// @param receivers Array of up to 20 addresses of the accounts to claim rewards for
    function claimsVeSDT(address veSDTFeeDistributor, address[20] calldata receivers) external onlyDelegateCall {
        IFeeDistributor(veSDTFeeDistributor).claim_many(receivers);
    }

    ////////////////////////////////////////////////////////////////
    /// --- WITHDRAW (sdToken-gauge -> sdToken)
    ///////////////////////////////////////////////////////////////

    /// @notice Withdraw the caller's sdToken from the liquidity gauge
    /// @param gauge Address of the liquidity gauge
    /// @param amount Amount of sdToken to withdraw
    /// @dev The router must own the tokens to withdraw when this function is called.
    ///      For doing so, the caller must have signed a permit2 authorization and used it by
    ///      calling the function `transferFromPermit2` of the RouterModuleERC20Manager module
    ///      in the **SAME TRANSACTION**. The composition ability of the router allows for this.
    function withdraw(address gauge, uint256 amount) public onlyDelegateCall {
        IERC20 sdToken = IERC20(ILiquidityGauge(gauge).staking_token());
        uint256 sdTokenBalance = sdToken.balanceOf(address(this));

        ILiquidityGauge(gauge).withdraw(amount);

        sdToken.transfer(msg.sender, sdToken.balanceOf(address(this)) - sdTokenBalance);
    }

    /// @notice Withdraw the caller's sdToken from the liquidity gauge to the router for composition
    /// @param gauge Address of the liquidity gauge
    /// @param amount Amount of sdToken to withdraw
    /// @dev The router must own the tokens to withdraw when this function is called.
    ///      For doing so, the caller must have signed a permit2 authorization and used it by
    ///      calling the function `transferFromPermit2` of the RouterModuleERC20Manager module
    ///      in the **SAME TRANSACTION**. The composition ability of the router allows for this.
    function withdrawFor(address gauge, uint256 amount) public onlyDelegateCall {
        ILiquidityGauge(gauge).withdraw(amount);
    }

    ////////////////////////////////////////////////////////////////
    /// --- CLAIM & WITHDRAW (sdToken-gauge -> sdToken)
    ///////////////////////////////////////////////////////////////

    /// @notice Claim rewards and withdraw the caller's sdToken from the liquidity gauge
    /// @param gauge Address of the liquidity gauge
    /// @param amount Amount of sdToken to withdraw
    /// @dev The router must own the tokens to withdraw when this function is called.
    ///      For doing so, the caller must have signed a permit2 authorization and used it by
    ///      calling the function `transferFromPermit2` of the RouterModuleERC20Manager module
    ///      in the **SAME TRANSACTION**. The composition ability of the router allows for this.
    function claimAndWithdraw(address gauge, uint256 amount) external onlyDelegateCall {
        claim(gauge);
        withdraw(gauge, amount);
    }

    /// @notice Claim rewards and withdraw the caller's sdToken from the liquidity gauge to the router for composition
    /// @param gauge Address of the liquidity gauge
    /// @param amount Amount of sdToken to withdraw
    /// @dev The router must own the tokens to withdraw when this function is called.
    ///      For doing so, the caller must have signed a permit2 authorization and used it by
    ///      calling the function `transferFromPermit2` of the RouterModuleERC20Manager module
    ///      in the **SAME TRANSACTION**. The composition ability of the router allows for this.
    function claimAndWithdrawFor(address gauge, uint256 amount) external onlyDelegateCall {
        claim(gauge);
        withdrawFor(gauge, amount);
    }
}

interface IDepositor {
    function deposit(uint256 _amount, address _user) external;
    function token() external view returns (address);
}

interface ILiquidityGauge {
    function staking_token() external view returns (address);
    function deposit(uint256 amount, address receiver) external;
    function withdraw(uint256 amount) external;
    function claim_rewards(address user) external;
    function claim_rewards_for(address user, address recipient) external;
    function admin() external view returns (address);
    function set_claimer(address) external;
}

