// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.20;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {IBlast} from "./interface/IBlast.sol";
import {IBlastPoints} from "./interface/IBlastPoints.sol";

contract BlastAdapter is Ownable {
    constructor() {}

    function gasClaimable(address gov) external onlyOwner {
        IBlast(0x4300000000000000000000000000000000000002).configure(
            IBlast.YieldMode.CLAIMABLE,
            IBlast.GasMode.CLAIMABLE,
            gov
        );
    }

    function pointClaimable(address gov) external onlyOwner {
        IBlastPoints(0x2536FE9ab3F511540F2f9e2eC2A805005C3Dd800)
            .configurePointsOperator(gov);
    }
}
