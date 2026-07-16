// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.0;

import "../router/base/MarketApproxLib.sol";
import "./IPAllActionType.sol";

interface IPActionMisc {
    struct MultiApproval {
        address[] tokens;
        address spender;
    }

    struct Call3 {
        bool allowFailure;
        bytes callData;
    }

    struct Result {
        bool success;
        bytes returnData;
    }

    event MintSyFromToken(
        address indexed caller,
        address indexed tokenIn,
        address indexed SY,
        address receiver,
        uint256 netTokenIn,
        uint256 netSyOut
    );

    event RedeemSyToToken(
        address indexed caller,
        address indexed tokenOut,
        address indexed SY,
        address receiver,
        uint256 netSyIn,
        uint256 netTokenOut
    );

    event MintPyFromSy(
        address indexed caller, address indexed receiver, address indexed YT, uint256 netSyIn, uint256 netPyOut
    );

    event RedeemPyToSy(
        address indexed caller, address indexed receiver, address indexed YT, uint256 netPyIn, uint256 netSyOut
    );

    event MintPyFromToken(
        address indexed caller,
        address indexed tokenIn,
        address indexed YT,
        address receiver,
        uint256 netTokenIn,
        uint256 netPyOut
    );

    event RedeemPyToToken(
        address indexed caller,
        address indexed tokenOut,
        address indexed YT,
        address receiver,
        uint256 netPyIn,
        uint256 netTokenOut
    );

    function mintSyFromToken(address receiver, address SY, uint256 minSyOut, TokenInput calldata input)
        external
        payable
        returns (uint256 netSyOut);

    function redeemSyToToken(address receiver, address SY, uint256 netSyIn, TokenOutput calldata output)
        external
        returns (uint256 netTokenOut);

    function mintPyFromToken(address receiver, address YT, uint256 minPyOut, TokenInput calldata input)
        external
        payable
        returns (uint256 netPyOut);

    function redeemPyToToken(address receiver, address YT, uint256 netPyIn, TokenOutput calldata output)
        external
        returns (uint256 netTokenOut);

    function mintPyFromSy(address receiver, address YT, uint256 netSyIn, uint256 minPyOut)
        external
        returns (uint256 netPyOut);

    function redeemPyToSy(address receiver, address YT, uint256 netPyIn, uint256 minSyOut)
        external
        returns (uint256 netSyOut);

    function redeemDueInterestAndRewards(
        address user,
        address[] calldata sys,
        address[] calldata yts,
        address[] calldata markets
    ) external;

    function approveInf(MultiApproval[] calldata) external;

    function multicall(Call3[] calldata calls) external payable returns (Result[] memory returnData);

    function multicallRevert(uint256 gasLimit, Call3[] calldata calls)
        external
        payable
        returns (bytes[] memory res, uint256[] memory gasUsed);

    function callThenRevert(address target, bytes memory callData) external payable;
}
