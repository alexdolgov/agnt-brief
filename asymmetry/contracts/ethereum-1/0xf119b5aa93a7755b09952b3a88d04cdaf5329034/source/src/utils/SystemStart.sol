// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

/**
    @title System Start Time
    @dev Provides a unified `startTime` and `getWeek`, used for emissions.
    @dev This would be equivalent to Prisma's SystemStart.sol (https://etherscan.io/address/0x3f78544364c3eCcDCe4d9C89a630AEa26122829d#code#F5#L1)
         except for removing the IPrismaCore(prismaCore).startTime() call, and expecting the startTime to be passed in the constructor.
    @dev startTime should at at a Thursday 00:00:00 GMT, which is the start of the first week.
 */
contract SystemStart {

    uint256 public immutable startTime;

    constructor(uint256 _startTime) {
        require(_startTime % 1 weeks == 0, "SystemStart: startTime must be a Thursday 00:00:00 GMT");
        startTime = _startTime;
    }

    function getWeek() public view returns (uint256 week) {
        return (block.timestamp - startTime) / 1 weeks;
    }
}
