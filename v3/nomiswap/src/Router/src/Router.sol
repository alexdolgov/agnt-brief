// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.19;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/utils/Address.sol";

import "./interfaces/IBalancer.sol";
import "./interfaces/IAdapter.sol";
import "./interfaces/IWETH.sol";
import "./interfaces/IRouter.sol";
import "./helpers/SwapExecutor.sol";

struct RedeemContext {
    address[] adapters;
    uint[] values;
    uint nav;
    uint totalSupply;
}

contract Router is IRouter {
    address constant ETH_IDENTIFIER = address(0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE);
    uint256 constant VALUE_DEGRADATION_COEFFICIENT = 1e18; // 100%
    uint256 public constant VALUE_DEGRADATION_DURATION = 7 days;
    uint256 public constant VALUE_DEGRADATION_RATE =
        VALUE_DEGRADATION_COEFFICIENT / VALUE_DEGRADATION_DURATION; // (0.0000016534*100)% per sec, 100% in 7 days
    address public immutable weth;
    SwapExecutor public immutable swapExecutor;

    constructor(address _weth, address _swapExecutor) {
        weth = _weth;
        swapExecutor = SwapExecutor(_swapExecutor);
    }

    function dustEstimatingInvest(
        address adapter,
        address balancer,
        address tokenIn,
        uint256 amountIn,
        uint256 minShareAmount,
        IBalancer.SwapInfo[] calldata swaps,
        uint32 deadline
    ) external payable returns (uint sharesAdded, address[] memory dustTokens, uint[] memory dustAmounts) {
        dustTokens = IAdapter(adapter).depositTokens();
        dustAmounts = new uint[](dustTokens.length);
        for (uint i = 0; i < dustTokens.length; i++) {
            dustAmounts[i] = IERC20(dustTokens[i]).balanceOf(msg.sender);
        }
        sharesAdded = invest(adapter, balancer, tokenIn, amountIn, minShareAmount, swaps, deadline);
        for (uint i = 0; i < dustTokens.length; i++) {
            if (dustTokens[i] == tokenIn) dustAmounts[i] = dustAmounts[i] - amountIn;
            dustAmounts[i] = IERC20(dustTokens[i]).balanceOf(msg.sender) - dustAmounts[i];
        }
    }

    function invest(
        address adapter,
        address balancer,
        address tokenIn,
        uint256 amountIn,
        uint256 minShareAmount,
        IBalancer.SwapInfo[] calldata swaps,
        uint32 deadline
    ) public payable override returns (uint sharesAdded) {
        if (deadline < block.timestamp) {
            revert Expired(deadline);
        }
        if (tokenIn == ETH_IDENTIFIER) {
            if (amountIn != msg.value) {
                revert IncorrectDepositAmount(msg.value, amountIn);
            }
            IWETH(weth).deposit{value: msg.value}();
            tokenIn = weth;
        } else {
            SafeERC20.safeTransferFrom(
                IERC20(tokenIn),
                msg.sender,
                address(this),
                amountIn
            );
        }

        uint256 totalSwapAmount = 0;
        for (uint i = 0; i < swaps.length; i++) {
            IBalancer.SwapInfo memory swap = swaps[i];
            if (swap.token != tokenIn) {
                revert IncorrectSwapToken(tokenIn, swap.token);
            }
            totalSwapAmount += swap.amount;
        }

        if (totalSwapAmount > amountIn) {
            revert SwapAmountExceedsBalance(amountIn, totalSwapAmount);
        }

        SafeERC20.safeTransfer(IERC20(tokenIn), address(swapExecutor), totalSwapAmount);
        swapExecutor.executeSwaps(swaps);

        SafeERC20.safeTransfer(IERC20(tokenIn), adapter, amountIn - totalSwapAmount);

        sharesAdded = IBalancer(balancer).invest(adapter, msg.sender);

        if (sharesAdded < minShareAmount) {
            revert InsufficientSharesMinted(sharesAdded, minShareAmount);
        }
    }

    function redeem(
        address balancer,
        uint shares, 
        IAdapter targetAdapter, 
        address receiver,
        TokenAmount[] memory minAmounts,
        uint32 deadline
    ) external override returns (address[] memory tokens, uint[] memory amounts) 
    {
        if (deadline < block.timestamp) {
            revert Expired(deadline);
        }
        uint256[] memory balancesBefore = new uint256[](minAmounts.length);
        for (uint i = 0; i < minAmounts.length; i++) {
            TokenAmount memory ta = minAmounts[i];
            balancesBefore[i] = IERC20(ta.token).balanceOf(receiver);
        }
        
        SafeERC20.safeTransferFrom(IERC20(balancer), msg.sender, address(this), shares);
        (tokens, amounts) = IBalancer(balancer).redeem(shares, targetAdapter, receiver);

        for (uint i = 0; i < minAmounts.length; i++) {
            TokenAmount memory ta = minAmounts[i];
            uint balanceAfter = IERC20(ta.token).balanceOf(receiver);
            uint diff = balanceAfter - balancesBefore[i];
            if (diff < ta.amount) {
                revert InsufficientTokenRedeemed(ta.token, diff, ta.amount);
            }
        }
    }

    function redeemFromSeveralAdapters(
        address balancer,
        uint shares,
        IAdapter[] memory targetAdapters,
        address receiver,
        TokenAmount[] memory minAmounts,
        uint32 deadline
    )
        external
        returns (
            address[] memory tokens,
            uint[] memory amounts,
            uint touchedAdapterCount
        )
    {
        if (deadline < block.timestamp) {
            revert Expired(deadline);
        }
        uint256[] memory balancesBefore = new uint256[](minAmounts.length);
        for (uint i = 0; i < minAmounts.length; i++) {
            TokenAmount memory ta = minAmounts[i];
            balancesBefore[i] = IERC20(ta.token).balanceOf(receiver);
        }

        SafeERC20.safeTransferFrom(
            IERC20(balancer),
            msg.sender,
            address(this),
            shares
        );

        RedeemContext memory ctx = _buildRedeemContext(IBalancer(balancer));

        for (uint i; i < targetAdapters.length && shares > 0; i++) {
            uint redeemableShares = _redeemableShares(
                shares,
                address(targetAdapters[i]),
                ctx
            );
            shares -= redeemableShares;
            touchedAdapterCount++;
            (address[] memory _tokens, uint[] memory _amounts) = IBalancer(
                balancer
            ).redeem(redeemableShares, targetAdapters[i], receiver);
            (tokens, amounts) = _merge(tokens, amounts, _tokens, _amounts);
        }

        for (uint i; i < minAmounts.length; i++) {
            TokenAmount memory ta = minAmounts[i];
            uint balanceAfter = IERC20(ta.token).balanceOf(receiver);
            uint diff = balanceAfter - balancesBefore[i];
            if (diff < ta.amount) {
                revert InsufficientTokenRedeemed(ta.token, diff, ta.amount);
            }
        }
    }

    function _buildRedeemContext(
        IBalancer balancer
    ) private view returns (RedeemContext memory ctx) {
        uint value;
        (value, ctx.adapters, ctx.values) = _adapterValues(balancer);
        ctx.nav = _totalNAV(balancer, value);
        ctx.totalSupply = IERC20(address(balancer)).totalSupply();
    }

    function _merge(
        address[] memory addressesA,
        uint[] memory amountsA,
        address[] memory addressesB,
        uint[] memory amountsB
    ) private pure returns (address[] memory, uint[] memory) {
        for (uint i; i < addressesB.length; i++) {
            uint indexInA = addressesA.length;
            for (uint j; j < addressesA.length; j++) {
                if (addressesA[j] == addressesB[i]) {
                    indexInA = j;
                    break;
                }
            }
            if (indexInA == addressesA.length) {
                address[] memory _addresses = new address[](indexInA + 1);
                uint[] memory _amounts = new uint[](indexInA + 1);
                for (uint j; j < addressesA.length; j++) {
                    _addresses[j] = addressesA[j];
                    _amounts[j] = amountsA[j];
                }
                addressesA = _addresses;
                amountsA = _amounts;
                addressesA[indexInA] = addressesB[i];
            }
            amountsA[indexInA] += amountsB[i];
        }
        return (addressesA, amountsA);
    }

    function _redeemableShares(
        uint shares,
        address adapter,
        RedeemContext memory ctx
    ) private pure returns (uint) {
        uint sharesValue = (shares * ctx.nav) / ctx.totalSupply;
        if (sharesValue == 0) return shares;
        uint adapterValue;
        for (uint i; i < ctx.adapters.length; i++) {
            if (ctx.adapters[i] == adapter) {
                adapterValue = ctx.values[i];
                break;
            }
        }
        if (adapterValue >= sharesValue) return shares;
        return (shares * adapterValue) / sharesValue;
    }

    function _adapterValues(
        IBalancer balancer
    )
        private
        view
        returns (
            uint totalValue,
            address[] memory adapters,
            uint[] memory values
        )
    {
        adapters = balancer.chargedAdapters();
        values = new uint[](adapters.length);

        for (uint i = 0; i < adapters.length; i++) {
            IAdapter adapter = IAdapter(adapters[i]);
            (uint v, ) = adapter.value();
            totalValue += v;
            values[i] = v;
        }
    }

    function _totalNAV(
        IBalancer balancer,
        uint value
    ) private view returns (uint nav) {
        uint lockedFee = _lockedFunds(balancer);
        nav = value > lockedFee ? value - lockedFee : 0;
    }

    function _lockedFunds(
        IBalancer balancer
    ) private view returns (uint112 lockedFee) {
        uint lastValueLock = balancer.$lastValueLock();
        if (lastValueLock == 0) return 0;
        uint degradationRatio = uint256(block.timestamp - lastValueLock) *
            VALUE_DEGRADATION_RATE;
        uint112 valueDecayTarget = balancer.$valueDecayTarget();

        // if decayRatio >= 100% we consider that all fees were locked so, from now on we use entire target value
        if (degradationRatio < VALUE_DEGRADATION_COEFFICIENT) {
            lockedFee = uint112(
                (uint256(valueDecayTarget) * degradationRatio) /
                    VALUE_DEGRADATION_COEFFICIENT
            );
        } else {
            lockedFee = valueDecayTarget;
        }
    }
}
