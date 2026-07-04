// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

contract RetailRevenue {
    address public owner;

    struct BranchSales {
        uint256 totalSalesCount;
        uint256 totalSalesAmount;
        uint256 lastSaleDate; // Unix timestamp
    }

    mapping(string => BranchSales) public branchData;

    event SaleRecorded(string indexed branchCode, uint256 amount, uint256 timestamp);

    modifier onlyOwner() {
        require(msg.sender == owner, "Not authorized");
        _;
    }

    constructor() {
        owner = msg.sender;
    }

    function recordSale(string calldata branchCode, uint256 amount) external onlyOwner {
        BranchSales storage sales = branchData[branchCode];
        sales.totalSalesCount += 1;
        sales.totalSalesAmount += amount;
        sales.lastSaleDate = block.timestamp;

        emit SaleRecorded(branchCode, amount, block.timestamp);
    }

    function getBranchSales(string calldata branchCode) external view returns (
        uint256 totalSalesCount,
        uint256 totalSalesAmount,
        uint256 lastSaleDate
    ) {
        BranchSales memory sales = branchData[branchCode];
        return (
            sales.totalSalesCount,
            sales.totalSalesAmount,
            sales.lastSaleDate
        );
    }
}