// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.7.6;
pragma abicoder v2;

import {IAlgebraSwapCallback} from "./algebra/core/contracts/interfaces/callback/IAlgebraSwapCallback.sol";
import {IAlgebraPool} from "./algebra/core/contracts/interfaces/IAlgebraPool.sol";
import {TickMath} from "./algebra/core/contracts/libraries/TickMath.sol";
import {IERC20, SafeERC20} from "@openzeppelin/contracts/token/ERC20/SafeERC20.sol";
import {SafeCast} from "@openzeppelin/contracts/utils/SafeCast.sol";
import {FullMath, LiquidityAmounts, Constants} from "./algebra/periphery/contracts/libraries/LiquidityAmounts.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

import "./libraries/Babylonian.sol";
import "./libraries/LowGasSafeMath.sol";
import "./interfaces/IVault.sol";
import {IHypervisor} from "./interfaces/IHypervisor.sol";
import {IUniProxy} from "./interfaces/IUniProxy.sol";

interface IWETH is IERC20 {
    function deposit() external payable;

    function withdraw(uint256 wad) external;
}

contract ZapThenaV3 is IAlgebraSwapCallback, Ownable {
    using LowGasSafeMath for uint256;
    using LowGasSafeMath for int256;

    using SafeERC20 for IERC20;
    using SafeERC20 for IVault;

    using TickMath for int24;

    struct Ticks {
        int24 lowerTick;
        int24 upperTick;
    }

    struct CallbackData {
        address token0;
        address token1;
        address pool;
    }

    // Needed to avoid error compiler stack too deep
    struct LocalVariablesSwapAndStake {
        IVault vault;
        IHypervisor hypervisor;
        address pool;
        address proxy;
        bool zeroForOne;
        uint256 intermediateAmount0;
        uint256 intermediateAmount1;
        uint256 finalAmount0;
        uint256 finalAmount1;
        uint256 liqSharesMinted;
        uint256[4] minIn;
        bytes data;
    }

    struct LocalVariablesWithdrawAndSwap {
        IHypervisor hypervisor;
        address pool;
        bytes data;
        int256 amount0Delta;
        int256 amount1Delta;
    }

    struct LocalVariablesBalanceAmounts {
        uint160 sqrtRatioX96;
        uint16 algebraPoolFee;
        bool zeroForOne;
        int256 amount0Delta;
        int256 amount1Delta;
        uint256 amountSpecified;
    }

    uint24 internal constant basisOne = 1000000;
    uint24 internal constant basisOneSqrt = 1000;

    // How much slippage we allow between swaps -> 5000 = 0.5% slippage
    uint24 public slippageUserMax = 10000;

    event ZapIn(address sender, address grizzlyVault, uint256 shares);
    event ZapOut(address sender, address grizzlyVault, uint256 amount0, uint256 amount1);

    event SetSlippageUserMax(uint24 slippageUserMax);

    address public immutable WETH = 0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c;

    receive() external payable {
        assert(msg.sender == WETH);
    }

    // --- Algebra callback functions --- //

    /// @notice Algebra callback function, called back on pool.swap
    function algebraSwapCallback(
        int256 amount0Delta,
        int256 amount1Delta,
        bytes calldata data
    ) external override {
        CallbackData memory info = abi.decode(data, (CallbackData));

        require(msg.sender == info.pool, "callback caller");

        if (amount0Delta > 0) IERC20(info.token0).safeTransfer(msg.sender, uint256(amount0Delta));
        if (amount1Delta > 0) IERC20(info.token1).safeTransfer(msg.sender, uint256(amount1Delta));
    }

    // --- User functions --- //

    /// @notice function to zap in with native token in a pair (wrapped native token/ERC20) in a Hypervisor vault and deposit the obtained LP in a Grizzly Vault
    /// @param grizzlyVault address of the Yearn Grizzly Vault
    /// @param amountTokenDesired amount of the non native token to deposit
    /// @param maxSwapSlippage maximum slippage authorized for eventual swaps in liquidity provision. Accepts values from 0 to 1000000 (e.g. 5000 <-> 0.5%)
    /// @param referral encoded information for Yearn Grizzly referral program
    function zapInETH(
        address grizzlyVault,
        uint256 amountTokenDesired,
        uint24 maxSwapSlippage,
        bytes32 referral
    ) external payable {
        (, IHypervisor hypervisor) = _getVaultPair(grizzlyVault);

        address token0 = address(hypervisor.token0());
        address token1 = address(hypervisor.token1());

        require(token0 == WETH || token1 == WETH, "Not a WETH pair");

        // Wrap ETH
        IWETH(WETH).deposit{value: msg.value}();

        if (address(token0) == WETH) {
            if (amountTokenDesired > 0) {
                IERC20(token1).safeTransferFrom(msg.sender, address(this), amountTokenDesired);
            }
            _swapAndStake(
                grizzlyVault,
                token0,
                token1,
                msg.value,
                amountTokenDesired,
                maxSwapSlippage,
                referral
            );
        } else {
            if (amountTokenDesired > 0) {
                IERC20(token0).safeTransferFrom(msg.sender, address(this), amountTokenDesired);
            }
            _swapAndStake(
                grizzlyVault,
                token0,
                token1,
                amountTokenDesired,
                msg.value,
                maxSwapSlippage,
                referral
            );
        }

        address[] memory tokens = new address[](2);
        tokens[0] = token0;
        tokens[1] = token1;

        _returnAssets(tokens, true);
    }

    /// @notice function to zap in with ERC20 tokens Hypervisor vault and deposit the obtained LP in a Grizzly Vault
    /// @param grizzlyVault address of the Yearn Grizzly Vault
    /// @param amount0Desired amount of the token 0 to deposit
    /// @param amount1Desired amount of the token 1 to deposit
    /// @param maxSwapSlippage maximum slippage authorized for eventual swaps in liquidity provision. Accepts values from 0 to 1000000 (e.g. 5000 <-> 0.5%)
    /// @param referral encoded information for Yearn Grizzly referral program
    function zapIn(
        address grizzlyVault,
        uint256 amount0Desired,
        uint256 amount1Desired,
        uint24 maxSwapSlippage,
        bytes32 referral
    ) external {
        (, IHypervisor hypervisor) = _getVaultPair(grizzlyVault);

        address token0 = address(hypervisor.token0());
        address token1 = address(hypervisor.token1());

        // Transfer desired amounts to contract
        if (amount0Desired > 0) {
            IERC20(token0).safeTransferFrom(msg.sender, address(this), amount0Desired);
        }
        if (amount1Desired > 0) {
            IERC20(token1).safeTransferFrom(msg.sender, address(this), amount1Desired);
        }

        _swapAndStake(
            grizzlyVault,
            token0,
            token1,
            amount0Desired,
            amount1Desired,
            maxSwapSlippage,
            referral
        );

        address[] memory tokens = new address[](2);
        tokens[0] = token0;
        tokens[1] = token1;

        _returnAssets(tokens, false);
    }

    /// @notice function to zap out with ERC20 tokens or native tokens from Hypervisor vault
    /// @param grizzlyVault address of the Yearn Grizzly Vault
    /// @param withdrawAmount amount of the Yearn Grizzly Vault to burn in order to zap out
    /// @param maxSwapSlippage maximum slippage authorized for eventual swaps in withdrawal process. Accepts values from 0 to 1000000 (e.g. 5000 <-> 0.5%)
    /// @param outputToken if 0 zaps out with only token 0, if 1 zaps out with only token 1, if everything else it zaps out with both tokens
    /// @param unwrap if true, it will unwrap wrapped native tokens when zapping out. Ignored in other pairs.
    function zapOut(
        address grizzlyVault,
        uint256 withdrawAmount,
        uint24 maxSwapSlippage,
        uint8 outputToken,
        bool unwrap
    ) external returns (uint256 amount0, uint256 amount1) {
        require(withdrawAmount > 0, "burn 0");
        require(maxSwapSlippage < basisOne, "max slippage too high");

        (IVault vault, IHypervisor hypervisor) = _getVaultPair(grizzlyVault);

        vault.safeTransferFrom(msg.sender, address(this), withdrawAmount);
        uint256 shares = vault.withdraw(withdrawAmount, address(this));
        uint256[4] memory minAmounts;

        address token0 = address(hypervisor.token0());
        address token1 = address(hypervisor.token1());

        if (outputToken > 1) {
            if ((token0 == WETH || token1 == WETH) && unwrap) {
                // Send amounts to this contract
                (amount0, amount1) = hypervisor.withdraw(shares, address(this), address(this), minAmounts);
            } else {
                // Send ERC20 tokens directly to user
                (amount0, amount1) = hypervisor.withdraw(shares, msg.sender, address(this), minAmounts);

                emit ZapOut(msg.sender, grizzlyVault, amount0, amount1);
                return (amount0, amount1);
            }
        } else {
            (amount0, amount1) = _withdrawAndSwap(
                grizzlyVault,
                token0,
                token1,
                shares,
                maxSwapSlippage,
                outputToken,
                minAmounts
            );
        }

        address[] memory tokens = new address[](2);
        tokens[0] = token0;
        tokens[1] = token1;

        _returnAssets(tokens, unwrap);

        emit ZapOut(msg.sender, grizzlyVault, amount0, amount1);
    }

    // --- Internal core functions --- //

    function _swapAndStake(
        address grizzlyVault,
        address token0,
        address token1,
        uint256 amount0Desired,
        uint256 amount1Desired,
        uint24 maxSwapSlippage,
        bytes32 referral
    ) internal {
        // Sanity check
        require(maxSwapSlippage < basisOne, "max slippage too high");

        LocalVariablesSwapAndStake memory vars;

        (vars.vault, vars.hypervisor) = _getVaultPair(grizzlyVault);

        vars.pool = address(vars.hypervisor.pool());
        vars.proxy = vars.hypervisor.whitelistedAddress();

        vars.data = abi.encode(CallbackData({token0: token0, token1: token1, pool: vars.pool}));

        (vars.intermediateAmount0, vars.intermediateAmount1) = _balanceAmounts(
            vars.pool,
            address(vars.hypervisor),
            amount0Desired,
            amount1Desired,
            maxSwapSlippage,
            vars.data
        );

        // We check which token is in excess to define final amounts
        vars.zeroForOne = _getSwapDirection(
            address(vars.hypervisor),
            vars.intermediateAmount0,
            vars.intermediateAmount1
        );

        if (vars.zeroForOne) {
            // If token0 is in excess we let all token1 in
            vars.finalAmount1 = vars.intermediateAmount1;
            vars.finalAmount0 = _min(
                _getDepositAmountMax(address(vars.hypervisor), vars.proxy, token1, vars.finalAmount1),
                vars.intermediateAmount0
            );
        } else {
            // If token1 is in excess we let all token0 in
            vars.finalAmount0 = vars.intermediateAmount0;
            vars.finalAmount1 = _min(
                _getDepositAmountMax(address(vars.hypervisor), vars.proxy, token0, vars.finalAmount0),
                vars.intermediateAmount1
            );
        }

        // Approvals, called only once for each hypervisor
        _approveTokenIfNeeded(token0, address(vars.hypervisor));
        _approveTokenIfNeeded(token1, address(vars.hypervisor));

        // When direct deposit is enabled we calculate min amounts only. Final amounts are the same.
        if (vars.hypervisor.directDeposit()) {
            (vars.intermediateAmount0, vars.intermediateAmount1) = _getMintAmounts(
                vars.hypervisor,
                vars.finalAmount0,
                vars.finalAmount1
            );
            vars.minIn = [vars.intermediateAmount0, vars.intermediateAmount1, 0, 0];
        }

        require(vars.finalAmount0 > 0 || vars.finalAmount1 > 0, "deposits cannot be zero");

        vars.liqSharesMinted = IUniProxy(vars.proxy).deposit(
            vars.finalAmount0,
            vars.finalAmount1,
            address(this),
            address(vars.hypervisor),
            vars.minIn
        );

        // Transfer Hypervisor LP tokens to Grizzly vault
        _approveTokenIfNeeded(address(vars.hypervisor), address(vars.vault));
        vars.vault.deposit(vars.liqSharesMinted, address(this), referral);

        // Transfer Grizzly Vault LP tokens to user
        uint256 vaultShares = vars.vault.balanceOf(address(this));
        vars.vault.safeTransfer(msg.sender, vaultShares);

        emit ZapIn(msg.sender, grizzlyVault, vaultShares);
    }

    function _withdrawAndSwap(
        address grizzlyVault,
        address token0,
        address token1,
        uint256 shares,
        uint24 maxSwapSlippage,
        uint8 outputToken,
        uint256[4] memory minAmounts
    ) internal returns (uint256 amount0, uint256 amount1) {
        LocalVariablesWithdrawAndSwap memory vars;

        (, vars.hypervisor) = _getVaultPair(grizzlyVault);

        (amount0, amount1) = vars.hypervisor.withdraw(shares, address(this), address(this), minAmounts);

        vars.pool = address(vars.hypervisor.pool());

        vars.data = abi.encode(CallbackData({token0: token0, token1: token1, pool: vars.pool}));

        if (outputToken == 0) {
            (vars.amount0Delta, vars.amount1Delta) = _swap(
                vars.pool,
                amount1,
                false,
                maxSwapSlippage,
                vars.data
            );
            amount0 = uint256(SafeCast.toInt256(amount0).sub(vars.amount0Delta));
            amount1 = uint256(SafeCast.toInt256(amount1).sub(vars.amount1Delta));
        } else if (outputToken == 1) {
            (vars.amount0Delta, vars.amount1Delta) = _swap(
                vars.pool,
                amount0,
                true,
                maxSwapSlippage,
                vars.data
            );
            amount0 = uint256(SafeCast.toInt256(amount0).sub(vars.amount0Delta));
            amount1 = uint256(SafeCast.toInt256(amount1).sub(vars.amount1Delta));
        }
    }

    function _balanceAmounts(
        address pool,
        address vault,
        uint256 amount0Desired,
        uint256 amount1Desired,
        uint24 maxSwapSlippage,
        bytes memory data
    ) internal returns (uint256 finalAmount0, uint256 finalAmount1) {
        LocalVariablesBalanceAmounts memory vars;

        (vars.sqrtRatioX96, , vars.algebraPoolFee, , , , ) = IAlgebraPool(pool).globalState();

        // Determine the amount to swap, it is not 100% precise but is a very good approximation
        (vars.amountSpecified, vars.zeroForOne) = _getSwapAmount(
            vault,
            amount0Desired,
            amount1Desired,
            vars.sqrtRatioX96,
            vars.algebraPoolFee
        );

        if (vars.amountSpecified > 0) {
            (vars.amount0Delta, vars.amount1Delta) = _swap(
                pool,
                vars.amountSpecified,
                vars.zeroForOne,
                maxSwapSlippage,
                data
            );

            finalAmount0 = uint256(SafeCast.toInt256(amount0Desired).sub(vars.amount0Delta));
            finalAmount1 = uint256(SafeCast.toInt256(amount1Desired).sub(vars.amount1Delta));
        } else {
            return (amount0Desired, amount1Desired);
        }
    }

    /// @notice maxSwapSlippage variable as argument to have flexibility with different liquidity pools
    function _swap(
        address pool,
        uint256 amountIn,
        bool zeroForOne,
        uint24 maxSwapSlippage,
        bytes memory data
    ) internal returns (int256, int256) {
        // If the maxSwapSlippage argument is not provided we use default slippageUserMax state variable
        uint24 _slippageMax = maxSwapSlippage == 0 ? slippageUserMax : maxSwapSlippage;

        (uint160 _sqrtPriceX96, , , , , , ) = IAlgebraPool(pool).globalState();

        uint256 _slippageSqrt = zeroForOne
            ? Babylonian.sqrt(basisOne - _slippageMax)
            : Babylonian.sqrt(basisOne + _slippageMax);

        return
            IAlgebraPool(pool).swap(
                address(this),
                zeroForOne, // Swap direction, true: token0 -> token1, false: token1 -> token0
                SafeCast.toInt256(amountIn),
                uint160(uint256((_sqrtPriceX96 * _slippageSqrt) / basisOneSqrt)), // sqrtPriceLimitX96
                data
            );
    }

    /// @dev Returns assets as ERC20 or native token
    function _returnAssets(address[] memory tokens, bool unwrap) private {
        uint256 balance;
        for (uint256 i; i < tokens.length; i++) {
            balance = IERC20(tokens[i]).balanceOf(address(this));
            if (balance > 0) {
                if (tokens[i] == WETH && unwrap) {
                    IWETH(WETH).withdraw(balance);
                    (bool success, ) = msg.sender.call{value: balance}(new bytes(0));
                    require(success, "ETH transfer failed");
                } else {
                    IERC20(tokens[i]).safeTransfer(msg.sender, balance);
                }
            }
        }
    }

    // --- Internal view functions --- //

    /// @notice Gives the amount and direction to swap in order to obtain balanced amounts
    /// @dev Can only be used after first mint, otherwise will revert
    // solhint-disable-next-line function-max-lines
    function _getSwapAmount(
        address hypervisor,
        uint256 amount0,
        uint256 amount1,
        uint160 sqrtRatioX96,
        uint24 swapFee
    ) internal view returns (uint256 amountToSwap, bool zeroForOne) {
        (uint256 total0, uint256 total1) = IHypervisor(hypervisor).getTotalAmounts();

        uint256 totalSupply = IHypervisor(hypervisor).totalSupply();

        if (total0 == 0 && total1 > 0) {
            zeroForOne = true;
            amountToSwap = amount0;
        } else if (total1 == 0 && total0 > 0) {
            zeroForOne = false;
            amountToSwap = amount1;
        } else if ((total0 == 0 && total1 == 0) || totalSupply == 0) {
            revert("no balances");
        } else {
            zeroForOne = amount0.mul(total1) > amount1.mul(total0);

            if (zeroForOne) {
                uint256 numerator = (amount0.mul(total1)).sub(amount1.mul(total0));

                uint256 intermediate = FullMath.mulDiv(
                    total0.mul(basisOne - swapFee),
                    sqrtRatioX96,
                    Constants.Q96
                );

                uint256 denominator = (total1.mul(basisOne)).add(
                    FullMath.mulDiv(intermediate, sqrtRatioX96, Constants.Q96)
                );

                amountToSwap = FullMath.mulDiv(basisOne, numerator, denominator);
            } else {
                uint256 intermediate1 = FullMath.mulDiv(
                    (amount1.mul(total0)).sub(amount0.mul(total1)),
                    sqrtRatioX96,
                    Constants.Q96
                );
                uint256 numerator = FullMath.mulDiv(intermediate1, sqrtRatioX96, Constants.Q96);

                uint256 intermediate2 = FullMath.mulDiv(total0.mul(basisOne), sqrtRatioX96, Constants.Q96);
                uint256 denominator = (total1.mul(basisOne - swapFee)).add(
                    FullMath.mulDiv(intermediate2, sqrtRatioX96, Constants.Q96)
                );

                amountToSwap = FullMath.mulDiv(basisOne, numerator, denominator);
            }
        }
    }

    /// @notice gets information useful for the swap that would need to be made in order to balance amounts
    function _getSwapDirection(
        address hypervisor,
        uint256 amount0Desired,
        uint256 amount1Desired
    ) internal view returns (bool zeroForOne) {
        (uint256 total0, uint256 total1) = IHypervisor(hypervisor).getTotalAmounts();

        zeroForOne = amount0Desired.mul(total1) > amount1Desired.mul(total0);
    }

    /// @notice Gets the maximum amount of token to deposit for the given amount of pair token
    /// @param hypervisor Hypervisor Address
    /// @param proxy Uniproxy Address
    /// @param token address of token to pair
    /// @param amountIn Amount to deposit of token to pair
    /// @return amountPair Maximum amount to deposit of the pair token
    function _getDepositAmountMax(
        address hypervisor,
        address proxy,
        address token,
        uint256 amountIn
    ) internal view returns (uint256 amountPair) {
        (, amountPair) = IUniProxy(proxy).getDepositAmount(hypervisor, token, amountIn);
    }

    /// @notice Compute max amounts that can be minted in Hypervisor Vault for `amount0Max` & `amount1Max` when direct deposit is on
    /// @param hypervisor Hypervisor interface
    /// @param amount0Max The maximum amount of token0 to forward on mint
    /// @param amount0Max The maximum amount of token1 to forward on mint
    /// @return amount0 Actual amount of token0 to forward when minting `mintAmount`
    /// @return amount1 Actual amount of token1 to forward when minting `mintAmount`
    function _getMintAmounts(
        IHypervisor hypervisor,
        uint256 amount0Max,
        uint256 amount1Max
    ) internal view returns (uint256 amount0, uint256 amount1) {
        (uint160 sqrtRatioX96, , , , , , ) = hypervisor.pool().globalState();

        Ticks memory ticks;
        ticks.lowerTick = hypervisor.baseLower();
        ticks.upperTick = hypervisor.baseUpper();

        uint256 dust0Current = hypervisor.token0().balanceOf(address(hypervisor));
        uint256 dust1Current = hypervisor.token1().balanceOf(address(hypervisor));

        // get liquidity for amount to transfer plus current dust in hypervisor
        uint128 liquidity = _liquidityForAmounts(
            ticks,
            sqrtRatioX96,
            amount0Max.add(dust0Current),
            amount1Max.add(dust1Current)
        );

        // get amounts for liquidity
        (amount0, amount1) = _amountsForLiquidity(liquidity, ticks, sqrtRatioX96);

        // remove the dust from the amounts
        amount0 = amount0 > dust0Current ? amount0.sub(dust0Current) : 0;
        amount1 = amount1 > dust1Current ? amount1.sub(dust1Current) : 0;
    }

    /// @notice Computes the token0 and token1 value for a given amount of liquidity
    function _amountsForLiquidity(
        uint128 liquidity,
        Ticks memory ticks,
        uint160 sqrtRatioX96
    ) internal view returns (uint256, uint256) {
        return
            LiquidityAmounts.getAmountsForLiquidity(
                sqrtRatioX96,
                ticks.lowerTick.getSqrtRatioAtTick(),
                ticks.upperTick.getSqrtRatioAtTick(),
                liquidity
            );
    }

    /// @notice Gets the liquidity for the available amounts of token0 and token1
    function _liquidityForAmounts(
        Ticks memory ticks,
        uint160 sqrtRatioX96,
        uint256 amount0,
        uint256 amount1
    ) internal view returns (uint128) {
        return
            LiquidityAmounts.getLiquidityForAmounts(
                sqrtRatioX96,
                ticks.lowerTick.getSqrtRatioAtTick(),
                ticks.upperTick.getSqrtRatioAtTick(),
                amount0,
                amount1
            );
    }

    /// @dev approves max amount to vault for the first time
    function _approveTokenIfNeeded(address token, address spender) private {
        if (IERC20(token).allowance(address(this), spender) == 0) {
            IERC20(token).safeApprove(spender, type(uint256).max);
        }
    }

    /// @dev Returns Grizzly Vault and Hypervisor interfaces
    function _getVaultPair(address grizzlyVault) private view returns (IVault vault, IHypervisor hypervisor) {
        vault = IVault(grizzlyVault);
        hypervisor = IHypervisor(vault.token());
    }

    function _min(uint256 a, uint256 b) internal pure returns (uint256) {
        return a <= b ? a : b;
    }

    // --- External authorized functions --- //

    /// @notice setSlippageUserMax sets the default maximum slippage for users
    /// @param _slippageUserMax default maximum slippage for users when swapping is needed.
    /// Accepts values from 0 to 1000000, e.g. 5000 <-> 0.5%
    function setSlippageUserMax(uint24 _slippageUserMax) external onlyOwner {
        require(_slippageUserMax <= basisOne, "slippage too high");
        slippageUserMax = _slippageUserMax;
        emit SetSlippageUserMax(slippageUserMax);
    }
}
