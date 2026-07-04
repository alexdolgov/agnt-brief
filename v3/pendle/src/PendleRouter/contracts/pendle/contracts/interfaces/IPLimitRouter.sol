// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.0;

import "../core/StandardizedYield/PYIndex.sol";

interface IPOrderMixinType {
    enum OrderType {
        SY_FOR_PT,
        PT_FOR_SY,
        SY_FOR_YT,
        YT_FOR_SY
    }

    // Fixed-size order part with core information
    struct StaticOrder {
        uint256 salt;
        uint256 expiry;
        uint256 nonce;
        OrderType orderType;
        address token;
        address YT;
        address maker;
        address receiver;
        uint256 makingAmount;
        uint256 lnImpliedRate;
    }

    struct NormalResults {
        uint256 totalMaking;
        uint256 totalTaking;
        uint256 totalFee;
        uint256[] netMakings;
        uint256[] netTakings;
        uint256[] netFees;
    }

    struct OnchainParams {
        uint256 timeToExpiry;
        uint256 pyIndex;
        address feeRecipient;
        uint256 lnFeeRateRoot;
    }
}

struct Order {
    uint256 salt;
    uint256 expiry;
    uint256 nonce;
    IPOrderMixinType.OrderType orderType;
    address token;
    address YT;
    address maker;
    address receiver;
    uint256 makingAmount;
    uint256 lnImpliedRate;
    bytes permit; // On first fill: permit.1.call(abi.encodePacked(permit.selector, permit.2))
}

struct FillOrderParams {
    Order order;
    bytes signature;
    uint256 makingAmount;
}

interface IPOrderMixin is IPOrderMixinType {
    event OrderCanceled(address indexed maker, bytes32 indexed orderHash, uint256 remaining);

    event OrderRemainingUpdated(bytes32 indexed orderHash, uint256 remaining);

    event NormalFill(
        OrderType indexed orderType,
        address indexed YT,
        address indexed taker,
        uint256 actualMaking,
        uint256 actualTaking,
        uint256 totalFee,
        uint256 rawTotalMaking,
        uint256 rawTotalTaking
    );

    event FlashFill(
        OrderType indexed orderType,
        address indexed YT,
        address indexed taker,
        uint256 netOutputToTaker,
        uint256 netInputFromTaker,
        uint256 totalFee,
        uint256 rawTotalMaking,
        uint256 rawTotalTaking
    );

    /**
     * (making, taking)
     * SY_FOR_PT: (SY, PT)
     * PT_FOR_SY: (PT, SY)
     * SY_FOR_YT: (SY, YT)
     * YT_FOR_SY: (YT, SY)
     */
    function normalFill(FillOrderParams[] memory params, address receiver, uint256 maxTaking, bytes calldata callback)
        external
        returns (uint256 actualMaking, uint256 actualTaking, uint256 totalFee);

    /**
     * (output, input)
     * SY_FOR_PT: (YT, SY)
     * PT_FOR_SY: (SY, YT)
     * SY_FOR_YT: (PT, SY)
     * YT_FOR_SY: (SY, PT)
     */
    function flashFill(FillOrderParams[] memory params, address receiver, uint256 maxInput, bytes calldata callback)
        external
        returns (uint256 netOutputToTaker, uint256 netInputFromTaker, uint256 totalFee);

    function feeRecipient() external view returns (address);

    function lnFeeRateRoot() external view returns (uint96);

    function hashOrder(Order memory order) external view returns (bytes32);

    function getOnchainParams(address YT) external returns (OnchainParams memory);
}

interface ILimitOrderCallee is IPOrderMixinType {
    /// Refer to normalFill
    function normalFillCall(
        OrderType orderType,
        uint256 actualMaking,
        uint256 actualTaking,
        uint256 totalFee,
        bytes memory data
    ) external;

    /// Refer to flashFill
    function flashFillCall(
        OrderType orderType,
        uint256 netOutputToTaker,
        uint256 netInputFromTaker,
        uint256 totalFee,
        bytes memory data
    ) external;
}

interface IPLimitRouter is IPOrderMixin {
    struct MultiApproval {
        address[] tokens;
        address spender;
    }

    function cancelSingle(Order calldata order) external;

    function cancelBatch(Order[] calldata orders) external;

    function approveInf(MultiApproval[] calldata arr) external;

    function remaining(bytes32 orderHash) external view returns (uint256);

    function remainingRaw(bytes32 orderHash) external view returns (uint256);

    function remainingsRaw(bytes32[] memory orderHashes) external view returns (uint256[] memory);

    function DOMAIN_SEPARATOR() external view returns (bytes32);
}
