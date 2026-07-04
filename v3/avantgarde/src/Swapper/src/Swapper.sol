// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {AccessControl} from "../lib/openzeppelin-contracts/contracts/access/AccessControl.sol";
import {IERC20} from "../lib/openzeppelin-contracts/contracts/interfaces/IERC20.sol";
import {IERC20Metadata} from "../lib/openzeppelin-contracts/contracts/interfaces/IERC20Metadata.sol";
import {SafeERC20} from "../lib/openzeppelin-contracts/contracts/token/ERC20/utils/SafeERC20.sol";

import {ISwapRoute} from "./interfaces/ISwapRoute.sol";
import {ISwapper} from "./interfaces/ISwapper.sol";

struct SwapRoute {
    ISwapRoute swapper;
    uint32 routeId;
}

struct Segment {
    ISwapRoute swapper;
    uint32 routeId;
    uint32 next;
}

contract Swapper is ISwapper, AccessControl {
    using SafeERC20 for IERC20;

    event SegmentAdded(
        IERC20 source,
        IERC20 destination,
        uint256 step,
        uint256 segmentId,
        ISwapRoute swapper,
        uint32 routeId,
        uint32 nextSegmentId
    );
    event RouteSet(IERC20 source, IERC20 destination, uint32 firstSegment);
    event Sold(
        IERC20 source,
        IERC20 destination,
        uint256 input,
        uint256 output
    );

    bytes32 public constant OPERATOR_ROLE = keccak256("OPERATOR_ROLE");
    uint32 constant NO_SEGMENT = 0;

    mapping(IERC20 => mapping(IERC20 => uint32)) firstSegments;
    mapping(uint32 => Segment) segments;
    uint32 segmentsIdx = 1;

    address private immutable STEAKHOUSE_SIGNER_1 =
        0x0D61C8b6CA9669A36F351De3AE335e9689dd9C5b;
    address private immutable STEAKHOUSE_SMOL_OPS =
        0x0000aeB716a0DF7A9A1AAd119b772644Bc089dA8;
    // 0x0000aeB716a0DF7A9A1AAd119b772644Bc089dA8 on Base
    // 0x29d4CDFee8F533af8529A9e1517b580E022874f7 on Ethereum

    constructor() {
        _grantRole(DEFAULT_ADMIN_ROLE, STEAKHOUSE_SIGNER_1);
        _grantRole(DEFAULT_ADMIN_ROLE, STEAKHOUSE_SMOL_OPS);

        _grantRole(OPERATOR_ROLE, msg.sender);
        _grantRole(OPERATOR_ROLE, STEAKHOUSE_SIGNER_1);
        _grantRole(OPERATOR_ROLE, STEAKHOUSE_SMOL_OPS);
    }

    function setRoute(
        IERC20 tokenFrom,
        IERC20 tokenTo,
        SwapRoute[] memory route
    ) public onlyRole(OPERATOR_ROLE) {
        require(route.length > 0, "Route shouldn't be empty");

        SwapRoute memory routeSegment;

        uint32 nextSegmentId = NO_SEGMENT;
        for (uint256 i = route.length - 1; i > 0; i--) {
            routeSegment = route[i];
            segments[segmentsIdx] = Segment(
                routeSegment.swapper,
                routeSegment.routeId,
                nextSegmentId
            );

            emit SegmentAdded(
                tokenFrom,
                tokenTo,
                i,
                segmentsIdx,
                routeSegment.swapper,
                routeSegment.routeId,
                nextSegmentId
            );

            nextSegmentId = segmentsIdx;
            segmentsIdx += 1;
        }

        routeSegment = route[0];
        segments[segmentsIdx] = Segment(
            routeSegment.swapper,
            routeSegment.routeId,
            nextSegmentId
        );
        firstSegments[tokenFrom][tokenTo] = segmentsIdx;

        emit SegmentAdded(
            tokenFrom,
            tokenTo,
            0,
            segmentsIdx,
            routeSegment.swapper,
            routeSegment.routeId,
            nextSegmentId
        );

        emit RouteSet(tokenFrom, tokenTo, segmentsIdx);

        segmentsIdx += 1;
    }

    function resetRoute(
        IERC20 tokenFrom,
        IERC20 tokenTo,
        uint32 firstSegment
    ) public onlyRole(OPERATOR_ROLE) {
        require(firstSegment != NO_SEGMENT, "First segment id can't be 0");
        require(
            firstSegment < segmentsIdx,
            "First segment id outside what exist"
        );

        firstSegments[tokenFrom][tokenTo] = firstSegment;

        emit RouteSet(tokenFrom, tokenTo, firstSegment);
    }

    /// @notice Sell a token for another one, if amount is 0 all the balance is sold
    function sell(
        IERC20 tokenFrom,
        IERC20 tokenTo,
        uint256 amountIn
    ) public returns (uint256) {
        // Get the first segment of the route
        uint32 nextSegment = firstSegments[tokenFrom][tokenTo];
        require(nextSegment != NO_SEGMENT, "No swapping route");

        // If no amount was given, use the balance
        if (amountIn == 0) amountIn = tokenFrom.balanceOf(address(msg.sender));

        tokenFrom.safeTransferFrom(address(msg.sender), address(this), amountIn);

        while (nextSegment != NO_SEGMENT) {
            Segment memory segment = segments[nextSegment];
            (IERC20 token, address who, uint256 amount) = segment
                .swapper
                .approvalNeeded(segment.routeId);
            token.safeIncreaseAllowance(who, amount);
            segment.swapper.sell(segment.routeId);
            nextSegment = segment.next;
        }

        uint256 amountOut = tokenTo.balanceOf(address(this));

        tokenTo.safeTransfer(address(msg.sender), amountOut);

        emit Sold(tokenFrom, tokenTo, amountIn, amountOut);

        return amountOut;
    }

    /// @notice sell a token for another one with a expected return and allowed deviation
    /// @param maxSlippage 6 digit allowed deviation 200 means 2 bips
    function sellWithLimit(
        IERC20 tokenFrom,
        IERC20 tokenTo,
        uint256 amountIn,
        uint256 expected,
        uint256 maxSlippage
    ) external returns (uint256) {
        uint256 amountOut = sell(tokenFrom, tokenTo, amountIn);

        uint256 minAmount = (expected * (1000000 - maxSlippage)) / 1000000;
        require(
            amountOut >= minAmount,
            "Revert due to amountOut being below allowed"
        );

        return amountOut;
    }

    /// @notice sell a token for another one with a minAmountOut
    /// @param minAmountOut minimum amount of tokenTo or it revert
    function sellWithThreshold(
        IERC20 tokenFrom,
        IERC20 tokenTo,
        uint256 amountIn,
        uint256 minAmountOut
    ) external returns (uint256) {
        uint256 amountOut = sell(tokenFrom, tokenTo, amountIn);

        require(
            amountOut >= minAmountOut,
            "Revert due to amountOut being below allowed"
        );

        return amountOut;
    }

    function previewSell(
        IERC20 tokenFrom,
        IERC20 tokenTo,
        uint256 amountIn
    ) external returns (uint256) {
        // Get the first segment of the route
        uint32 nextSegment = firstSegments[tokenFrom][tokenTo];
        require(nextSegment != NO_SEGMENT, "No swapping route");

        // If no amount was given, use the balance
        if (amountIn == 0) amountIn = tokenFrom.balanceOf(address(msg.sender));

        uint256 current = amountIn;

        while (nextSegment != NO_SEGMENT) {
            Segment memory segment = segments[nextSegment];
            current = segment.swapper.previewSell(segment.routeId, current);
            nextSegment = segment.next;
        }

        return current;
    }

    /******************************************
     * RECOVER AND UNSTUCK FUNCTIONS
     ******************************************/

    function recover(
        IERC20 token,
        address where,
        uint256 amount
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        require(
            amount <= token.balanceOf(address(this)),
            "Insufficient balance"
        );
        token.safeTransfer(where, amount);
    }

    function recover(
        IERC20 token,
        address where
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        token.safeTransfer(where, token.balanceOf(address(this)));
    }

    function recoverETH(
        address payable where,
        uint256 amount
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        require(amount <= address(this).balance, "Insufficient balance");
        where.transfer(amount);
    }

    function approve(
        IERC20 token,
        address where,
        uint256 amount
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        token.safeIncreaseAllowance(where, amount);
    }
}
