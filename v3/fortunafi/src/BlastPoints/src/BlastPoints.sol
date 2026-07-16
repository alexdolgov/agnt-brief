// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

import {IBlastPoints} from "src/interfaces/IBlastPoints.sol";

import {OffchainFund} from "src/OffchainFund.sol";

contract BlastPoints is OffchainFund {
    constructor(
        address owner,
        address usdc_,
        string memory name_,
        string memory symbol_,
        address pointsOperator_
    ) OffchainFund(owner, usdc_, name_, symbol_) {
        IBlastPoints(0x2536FE9ab3F511540F2f9e2eC2A805005C3Dd800)
            .configurePointsOperator(pointsOperator_);
    }
}
