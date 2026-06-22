// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";


interface Exchange {
    function withdrawFee() external;
}

contract FeeCollector is Ownable {
    mapping(address => address[]) public exchanges;
    address[] public exchangeList;

    address public revenueRecipient1;
    address public revenueRecipient2;
    uint256 public revenueShare1;
    uint256 public revenueShare2;

    uint256 public constant DENOMINATOR = 10000;

    event RevenueDistributed(
        address indexed recipient1,
        address indexed recipient2,
        uint256 tokenRevenue1,
        uint256 tokenRevenue2
    );

    constructor(
        address _revenueRecipient1,
        address _revenueRecipient2,
        uint256 _revenueShare1,
        uint256 _revenueShare2
    ) {
        revenueRecipient1 = _revenueRecipient1;
        revenueRecipient2 = _revenueRecipient2;
        revenueShare1 = _revenueShare1;
        revenueShare2 = _revenueShare2;
    }

    function addExchange(address exchange, address token1, address token2) external onlyOwner {
        require(exchanges[exchange].length == 0, "Exchange already added");
        exchanges[exchange].push(token1);
        exchanges[exchange].push(token2);
        exchangeList.push(exchange);
    }

    function removeExchange(address exchange) external onlyOwner {
        require(exchanges[exchange].length > 0, "Exchange not found");
        delete exchanges[exchange];
        for (uint256 i = 0; i < exchangeList.length; i++) {
            if (exchangeList[i] == exchange) {
                exchangeList[i] = exchangeList[exchangeList.length - 1];
                exchangeList.pop();
                break;
            }
        }
    }

    function setRevenueRecipient1(address _revenueRecipient1) external onlyOwner {
        revenueRecipient1 = _revenueRecipient1;
    }

    function setRevenueRecipient2(address _revenueRecipient2) external onlyOwner {
        revenueRecipient2 = _revenueRecipient2;
    }

    function setRevenueShare1(uint256 _revenueShare1) external onlyOwner {
        require(_revenueShare1 <= DENOMINATOR, "Invalid revenue share");
        revenueShare1 = _revenueShare1;
    }

    function setRevenueShare2(uint256 _revenueShare2) external onlyOwner {
        require(_revenueShare2 <= DENOMINATOR, "Invalid revenue share");
        revenueShare2 = _revenueShare2;
    }

    function collectFee() external {
        require(revenueRecipient1 != address(0), "Recipient1 not set");
        require(revenueRecipient2 != address(0), "Recipient2 not set");
        require(revenueShare1 + revenueShare2 == DENOMINATOR, "Invalid revenue share");
        require(exchangeList.length > 0, "No exchanges added");
        _withdrawFee();
        _distributeRevenue();

        emit RevenueDistributed(revenueRecipient1, revenueRecipient2, revenueShare1, revenueShare2);
    }

    function exchangeLength() external view returns (uint256) {
        return exchangeList.length;
    }

    function _withdrawFee() internal {
        for (uint256 i = 0; i < exchangeList.length; i++) {
            Exchange(exchangeList[i]).withdrawFee();
        }
    }

    function _distributeRevenue() internal {
        for (uint256 i = 0; i < exchangeList.length; i++) {
            address[] memory tokens = exchanges[exchangeList[i]];
            uint256 tokenRevenue00 = (IERC20(tokens[0]).balanceOf(address(this)) * revenueShare1) / DENOMINATOR;
            uint256 tokenRevenue01 = (IERC20(tokens[1]).balanceOf(address(this)) * revenueShare1) / DENOMINATOR;
            uint256 tokenRevenue10 = (IERC20(tokens[0]).balanceOf(address(this)) * revenueShare2) / DENOMINATOR;
            uint256 tokenRevenue11 = (IERC20(tokens[1]).balanceOf(address(this)) * revenueShare2) / DENOMINATOR;
            for (uint256 j = 0; j < tokens.length; j++) {
                IERC20(tokens[j]).transfer(revenueRecipient1, j == 0 ? tokenRevenue00 : tokenRevenue01);
                IERC20(tokens[j]).transfer(revenueRecipient2, j == 0 ? tokenRevenue10 : tokenRevenue11);
            }
        }
    }
}
