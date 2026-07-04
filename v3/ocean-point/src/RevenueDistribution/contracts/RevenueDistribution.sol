/*
* SPDX-License-Identifier: UNLICENSED
* Copyright © 2021 Blocksquare d.o.o.
*/

pragma solidity 0.8.23;

import "@openzeppelin/contracts-upgradeable/access/Ownable2StepUpgradeable.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

interface RevenueDistributionHelpers {
    function canDistributeRent(address user) external view returns (bool);
}

contract RevenueDistribution is Ownable2StepUpgradeable {
    using SafeERC20 for IERC20;

    mapping(address => mapping(address => uint256)) private _revenueAmount;
    mapping(address => uint256) private _totalRevenue;
    mapping(address => uint256) private _totalPayout;
    mapping(address => uint256) private _totalDays;

    address private _tokenAddress;
    address private _data;

    event RevenueAdded(address indexed property, address[] users, uint256[] amounts, uint256 fromTime, uint256 toTime);
    event RevenueClaimed(address indexed property, address indexed user, uint256 amount, uint256 time);
    event DataProxyChanged(address newDataProxyContract);

    /// @dev Initialize contract params with `initialize` function behind a proxy
    constructor() {
        _disableInitializers();
    }

    /**
    * @notice Initialize the contract. Can only be called once
    * @dev Sets initial values for data, DAI, and owner addresses
    * @param data Address of the data proxy contract
    * @param token Address of the token contract
    * @param ownerAddress Address of the owner of this contract
    */
    function initialize(
        address data,
        address token,
        address ownerAddress
    ) external initializer {
        require(data != address(0) && token != address(0), "RevenueDistribution: Address must not be zero");
        __Ownable_init(ownerAddress);
        _data = data;
        _tokenAddress = token;
    }

    /**
    * @notice User function to add revenue for a property and distribute it among specified users
    * @dev Only system admin or authorized CP (Community Partner) can call this function
    * @param property Address of the PropToken to add revenue for
    * @param users Array of user addresses to receive revenue
    * @param amount Array of corresponding revenue amounts for each user
    * @param from Start date for revenue calculation
    * @param to End date for revenue calculation
    */
    function addRevenue(address property, address[] memory users, uint256[] memory amount, uint256 from, uint256 to) external {
        require(users.length == amount.length, "RevenueDistribution: number of user addresses must be the same as number of values");
        require(from < to, "RevenueDistribution: From must be lower than to");
        require(RevenueDistributionHelpers(_data).canDistributeRent(msg.sender), "RevenueDistribution: caller doesn't have permission to add rent");
        require(property != address(0), "RevenueDistribution: Property address must not be zero");
        uint256 diff = to - from;
        uint256 diffDays = diff / (1 days);
        require(diffDays > 0, "RevenueDistribution:At least one day must pass");
        uint256 amountToPay = 0;
        for (uint256 i = 0; i < users.length; i++) {
            require(users[i] != address(0), "RevenueDistribution: User address must not be zero");
            _revenueAmount[property][users[i]] = _revenueAmount[property][users[i]] + amount[i];
            _totalRevenue[users[i]] = _totalRevenue[users[i]] + amount[i];
            amountToPay = amountToPay + amount[i];
        }
        IERC20(_tokenAddress).safeTransferFrom(msg.sender, address(this), amountToPay);
        _totalPayout[property] = _totalPayout[property] + amountToPay;
        _totalDays[property] = _totalDays[property] + diffDays;

        emit RevenueAdded(property, users, amount, from, to);
    }

    /**
    * @notice Internal function to claim revenue for a specific property and wallet
    * @dev Transfers the claimed revenue to the wallet address
    * @param property Address of the property to claim revenue for
    * @param wallet Address of the wallet to which revenue is claimed
    */
    function _claimRevenue(address property, address wallet) private {
        require(property != address(0) && wallet != address(0), "RevenueDistribution: Address must not be zero");
        uint256 revenue = _revenueAmount[property][wallet];
        if (revenue > 0) {
            _revenueAmount[property][wallet] = 0;
            _totalRevenue[wallet] = _totalRevenue[wallet] - revenue;
            IERC20(_tokenAddress).safeTransfer(wallet, revenue);
        }
        emit RevenueClaimed(property, wallet, revenue, block.timestamp);
    }

    /**
    * @notice User function to claim revenue for a specific wallet and property
    * @dev Reclaim rent for a specific wallet and property
    * @param wallet Address of recipient to claim rent for
    * @param property Address of PropToken for which you wish to reclaim rent
    */
    function claimRevenuesForWalletForProperty(address wallet, address property) external {
        _claimRevenue(property, wallet);
    }

    /**
    * @notice User function to claim rent for multiple properties for a specific wallet
    * @dev Reclaim rent for multiple properties
    * @param wallet Address of the recipient to claim rent for
    * @param properties Array of PropTokens for which you wish to reclaim rent
    */
    function claimRevenuesForWalletForMultipleProperties(address wallet, address[] memory properties) external {
        for (uint256 i = 0; i < properties.length; i++) {
            _claimRevenue(properties[i], wallet);
        }
    }

    /**
    * @notice User function to claim rent for a specific property for multiple wallets
    * @dev Reclaim rent for a specific property for multiple wallets
    * @param property Address of PropToken for which you wish to reclaim rent
    * @param wallets Array of recipient addresses to claim rent for
    */
    function pushRevenueToUser(address property, address[] memory wallets) external {
        for (uint256 i = 0; i < wallets.length; i++) {
            _claimRevenue(property, wallets[i]);
        }
    }

    /**
    * @notice Owner function to update the data proxy contract address
    * @param dataProxy Address of the data proxy contract
    */
    function setDataProxy(address dataProxy) external onlyOwner {
        require(dataProxy != address(0), "RevenueDistribution: Address must not be zero");
        _data = dataProxy;
        emit DataProxyChanged(dataProxy);
    }

    /**
    * @dev Check the amount of pending rent for a specific property and user
    * @param property Address of PropToken
    * @param user Address of the user
    * @return Amount of pending tokens
    */
    function pendingRevenue(address property, address user) external view returns (uint256) {
        return _revenueAmount[property][user];
    }

    /**
    * @dev Check the amount of total pending rent for a specific user
    * @param user Address of the user
    * @return Amount of total pending tokens
    */
    function totalPendingRevenue(address user) external view returns (uint256) {
        return _totalRevenue[user];
    }

    /**
    * @dev Check the amount of the average monthly payout for a specific property
    * @param property Address of PropToken
    * @return Average monthly payout amount
    */
    function getAverageMonthlyPayout(address property) external view returns (uint256) {
        if (_totalDays[property] == 0) {
            return 0;
        }
        return _totalPayout[property] * 30 / _totalDays[property];
    }

    /**
    * @dev Check the amount of the total payout for a specific property
    * @param property Address of PropToken
    * @return Total payout amount
    */
    function totalPayout(address property) external view returns (uint256) {
        return _totalPayout[property];
    }
}

