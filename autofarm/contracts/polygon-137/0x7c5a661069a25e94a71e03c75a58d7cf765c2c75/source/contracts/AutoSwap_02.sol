// SPDX-License-Identifier: MIT

pragma solidity 0.6.12;
pragma experimental ABIEncoderV2;

import "./libraries/SafeERC20.sol";
import "./libraries/Math.sol";

import "./helpers/Ownable.sol";

import "./helpers/Pausable.sol";

import "./libraries/UniversalERC20.sol";

import "./helpers/ReentrancyGuard.sol";

import "./helpers/Whitelist.sol";

import "./interfaces/IPancakeRouter02.sol";
import "./interfaces/IPancakePair.sol";
import "./interfaces/IWETH.sol";
import "./interfaces/ICurvePool.sol";

contract AutoSwap_02 is Ownable, ReentrancyGuard, Pausable, Whitelist {
    using SafeMath for uint256;
    using SafeERC20 for IERC20;
    using UniversalERC20 for IERC20;
    using UniversalERC20 for IPancakePair;

    uint256 public feeRate;
    uint256 public referrerFeeRate;

    event FeeRateChanged(
        uint256 indexed oldFeeRate,
        uint256 indexed newFeeRate
    );
    event ReferrerFeeRateChanged(
        uint256 indexed oldReferrerFeeRate,
        uint256 indexed newReferrerFeeRate
    );

    event Order(
        address indexed sender,
        IERC20 indexed inToken,
        IERC20 indexed outToken,
        uint256 inAmount,
        uint256 outAmount
    );

    event Swapped(
        IERC20 indexed inToken,
        IERC20 indexed outToken,
        address indexed referrer,
        uint256 inAmount,
        uint256 outAmount,
        uint256 fee,
        uint256 referrerFee,
        bool isLPSwap
    );

    struct CallStruct {
        address target;
        IERC20 inToken;
        uint256 amount;
        bytes4 selector;
        bytes data;
        bytes prefix;
    }
    struct AddLiquidityCallStruct {
        IPancakeRouter02 router;
        uint amount0Min;
        uint amount1Min;
        uint deadline;
    }

    enum RouterTypes { Uniswap, Curve }

    struct QuoteCallStruct {
      address router;
      RouterTypes routerType;
      uint amount;
      address[] path;
      uint inputTokenIndex;
      uint outputTokenIndex;
      int128 i;
      int128 j;
    }

    constructor(
        address _owner,
        uint256 _feeRate,
        uint256 _referrerFeeRate
    ) public {
        transferOwnership(_owner);
        feeRate = _feeRate;
        referrerFeeRate = _referrerFeeRate;
    }

    function _getAmountsOut(
        uint tokensLookupSize,
        uint inputAmount,
        QuoteCallStruct[] calldata calls
    ) internal view returns (uint[] memory amountsOut) {
        uint[] memory balance = new uint[](tokensLookupSize);
        balance[0] = inputAmount;

        for (uint256 i = 0; i < calls.length; i++) {
            require(isMember(calls[i].router), "!whitelisted");
            uint subswapInAmount = Math.min(
                calls[i].amount,
                balance[calls[i].inputTokenIndex]
            );
            balance[calls[i].inputTokenIndex] -= subswapInAmount;
            if (calls[i].routerType == RouterTypes.Uniswap) {
                uint[] memory amountsOut = IPancakeRouter02(calls[i].router).getAmountsOut(
                    subswapInAmount,
                    calls[i].path
                );
                balance[calls[i].outputTokenIndex] += amountsOut[amountsOut.length - 1];
            } else {
                uint amountOut = ICurvePool(calls[i].router).get_dy(
                    calls[i].i,
                    calls[i].j,
                    subswapInAmount
                );
                balance[calls[i].outputTokenIndex] += amountOut;
            }
        }
        return balance;
    }
    function getAmountsOut(
        uint tokensLookupSize,
        uint inputAmount,
        QuoteCallStruct[] calldata calls
    ) public view returns (uint[] memory amountsOut) {
      return _getAmountsOut(tokensLookupSize, inputAmount, calls);
    }

    function getAmountsOutLP(
        uint tokensLookupSize,
        uint inputAmount,
        QuoteCallStruct[] calldata calls,
        IPancakePair outputToken,
        uint token0BalanceIndex,
        uint token1BalanceIndex
    ) public view returns (uint token0Amount, uint token1Amount, uint lpTokenAmount) {
      uint[] memory amountsOut = _getAmountsOut(tokensLookupSize, inputAmount, calls);
      uint token0Balance = amountsOut[token0BalanceIndex];
      uint token1Balance = amountsOut[token1BalanceIndex];
      (uint token0Reserve, uint token1Reserve,) = outputToken.getReserves();
      uint totalSupply = outputToken.totalSupply();

      uint lpAmountOut = Math.min(
        token0Balance.mul(totalSupply).div(token0Reserve),
        token1Balance.mul(totalSupply).div(token1Reserve)
      );
      return (token0Balance, token1Balance, lpAmountOut);
    }

    function _doCalls(
        IERC20 inToken,
        uint256 inAmount,
        CallStruct[] calldata calls
    ) internal whenNotPaused {
        // Initial checks
        require(calls.length > 0, "!(calls.length > 0)");
        require(
            (msg.value != 0) == inToken.isETH(),
            "msg.value should be used only for ETH swap"
        );

        // Transfer inToken to address(this)
        if (!inToken.isETH()) {
            inToken.safeTransferFrom(msg.sender, address(this), inAmount);
        }

        // Execute swaps
        for (uint256 i = 0; i < calls.length; i++) {
            // If call is a swap
            require(isMember(calls[i].target), "!whitelisted");
            if (calls[i].inToken.isETH()) {
                (bool succeeded,) = calls[i].target.call{value: calls[i].amount}(
                    abi.encodePacked(
                        calls[i].selector,
                        calls[i].data
                    )
                );
                require(succeeded, "ETH Subswap failed");
            } else {
                _resetAllowances(calls[i].inToken, calls[i].amount, calls[i].target);
                uint subswapInAmount = Math.min(
                    calls[i].amount,
                    calls[i].inToken.universalBalanceOf(address(this))
                );
                uint256 minOutAmount = 1;
                (bool succeeded,) = calls[i].target.call(
                    abi.encodePacked(
                      calls[i].selector,
                      calls[i].prefix,
                      subswapInAmount,
                      minOutAmount,
                      calls[i].data
                    )
                );
                require(succeeded, "Subswap failed");
            }
        }
    }

    function swapToLP(
        IERC20 inToken,
        IERC20 outToken,
        uint256 inAmount,
        uint256 minOutAmount,
        uint256 guaranteedAmount,
        address payable referrer,
        CallStruct[] calldata calls,
        AddLiquidityCallStruct calldata addLiquidityCall
    ) public payable nonReentrant whenNotPaused returns (uint256 outAmount) {
        require(minOutAmount > 0, "!(minOutAmount > 0)");
        require(isMember(address(addLiquidityCall.router)), "!whitelisted");

        _doCalls(inToken, inAmount, calls);

        IERC20 token0 = IERC20(IPancakePair(address(outToken)).token0());
        IERC20 token1 = IERC20(IPancakePair(address(outToken)).token1());

        if (inToken.isETH()) {
          IWETH9(addLiquidityCall.router.WETH())
            .deposit{ value: inToken.universalBalanceOf(address(this)) }();
        }

        _resetAllowances(token0, token0.universalBalanceOf(address(this)), address(addLiquidityCall.router));
        _resetAllowances(token1, token1.universalBalanceOf(address(this)), address(addLiquidityCall.router));

        addLiquidityCall.router.addLiquidity(
          address(token0),
          address(token1),
          token0.universalBalanceOf(address(this)),
          token1.universalBalanceOf(address(this)),
          addLiquidityCall.amount0Min,
          addLiquidityCall.amount1Min,
          address(this),
          addLiquidityCall.deadline
        );

        // Transfer subtokens dust (if any) to user
        token0.universalTransfer(
            msg.sender,
            token0.universalBalanceOf(address(this))
        );
        token1.universalTransfer(
            msg.sender,
            token1.universalBalanceOf(address(this))
        );

        // Handle fees
        outAmount = outToken.universalBalanceOf(address(this));
        uint256 fee;
        uint256 referrerFee;
        (outAmount, fee, referrerFee) = _handleFees(
            outToken,
            outAmount,
            guaranteedAmount,
            referrer
        );

        // Closing checks
        require(
            outAmount >= minOutAmount,
            "Return amount less than the minimum required amount"
        );

        // Transfer outToken to user
        outToken.universalTransfer(msg.sender, outAmount);

        emit Order(msg.sender, inToken, outToken, inAmount, outAmount);
        emit Swapped(
            inToken,
            outToken,
            referrer,
            inAmount,
            outAmount,
            fee,
            referrerFee,
            true
        );
    }

    function swap(
        IERC20 inToken,
        IERC20 outToken,
        uint256 inAmount,
        uint256 minOutAmount,
        uint256 guaranteedAmount,
        address payable referrer,
        CallStruct[] calldata calls
    ) public payable nonReentrant whenNotPaused returns (uint256 outAmount) {
        require(minOutAmount > 0, "!(minOutAmount > 0)");

        _doCalls(inToken, inAmount, calls);

        // Handle fees
        outAmount = outToken.universalBalanceOf(address(this));
        uint256 fee;
        uint256 referrerFee;
        (outAmount, fee, referrerFee) = _handleFees(
            outToken,
            outAmount,
            guaranteedAmount,
            referrer
        );

        // Closing checks
        require(
            outAmount >= minOutAmount,
            "Return amount less than the minimum required amount"
        );

        // Transfer outToken to user
        outToken.universalTransfer(msg.sender, outAmount);

        emit Order(msg.sender, inToken, outToken, inAmount, outAmount);
        emit Swapped(
            inToken,
            outToken,
            referrer,
            inAmount,
            outAmount,
            fee,
            referrerFee,
            false
        );
    }

    function _handleFees(
        IERC20 toToken,
        uint256 outAmount,
        uint256 guaranteedAmount,
        address referrer
    )
        internal
        returns (
            uint256 realOutAmount,
            uint256 fee,
            uint256 referrerFee
        )
    {
        if (outAmount <= guaranteedAmount || feeRate == 0) {
            return (outAmount, 0, 0);
        }

        fee = outAmount.sub(guaranteedAmount).mul(feeRate).div(10000);

        if (
            referrer != address(0) &&
            referrer != msg.sender &&
            referrer != tx.origin
        ) {
            referrerFee = fee.mul(referrerFeeRate).div(10000);
            if (toToken.universalTransfer(referrer, referrerFee)) {
                outAmount = outAmount.sub(referrerFee);
                fee = fee.sub(referrerFee);
            } else {
                referrerFee = 0;
            }
        }

        if (toToken.universalTransfer(owner(), fee)) {
            outAmount = outAmount.sub(fee);
        }

        return (outAmount, fee, referrerFee);
    }

    function _resetAllowances(IERC20 token, uint256 amt, address spenderAddress)
        internal
    {
        token.safeApprove(spenderAddress, uint256(0));
        token.safeIncreaseAllowance(spenderAddress, amt);
    }

    function changeFeeRate(uint256 _feeRate) public onlyOwner {
        require(_feeRate <= 10000, "!safe - too high");
        uint256 oldFeeRate = feeRate;
        feeRate = _feeRate;
        emit FeeRateChanged(oldFeeRate, _feeRate);
    }

    function changeReferrerFeeRate(uint256 _referrerFeeRate) public onlyOwner {
        require(_referrerFeeRate <= 10000, "!safe - too high");
        uint256 oldReferrerFeeRate = referrerFeeRate;
        referrerFeeRate = _referrerFeeRate;
        emit ReferrerFeeRateChanged(oldReferrerFeeRate, _referrerFeeRate);
    }

    function pause() public onlyOwner {
        _pause();
    }

    function unpause() public onlyOwner {
        _unpause();
    }

    receive() external payable {}
}
