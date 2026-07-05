// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

contract FixedRateIRM {
    bool public constant isInterestRateModel = true;
    uint256 public constant WAD = 1e18;
    uint256 public constant BLOCKS_PER_YEAR = 2102400;

    address public operator;
    uint256 public borrowRatePerBlock;

    modifier onlyOperator() { require(msg.sender == operator); _; }

    constructor(address operator_, uint256 initialBorrowRatePerBlock_) {
        operator = operator_;
        borrowRatePerBlock = initialBorrowRatePerBlock_;
    }

    function setOperator(address a) external onlyOperator { operator = a; }
    function setBorrowRatePerBlock(uint256 r) external onlyOperator { borrowRatePerBlock = r; }

    function getBorrowRate(uint, uint, uint) external view returns (uint) { return borrowRatePerBlock; }

    function getSupplyRate(uint cash, uint borrows, uint reserves, uint reserveFactorMantissa) external view returns (uint) {
        uint util = _utilizationRate(cash, borrows, reserves);
        if (util == 0) return 0;
        uint oneMinusReserve = reserveFactorMantissa >= WAD ? 0 : (WAD - reserveFactorMantissa);
        uint rateToSuppliers = (borrowRatePerBlock * oneMinusReserve) / WAD;
        return (util * rateToSuppliers) / WAD;
    }

    function _utilizationRate(uint cash, uint borrows, uint reserves) internal pure returns (uint) {
        if (borrows == 0) return 0;
        uint total = cash + borrows;
        if (total <= reserves) return 0;
        return (borrows * WAD) / (total - reserves);
    }
}