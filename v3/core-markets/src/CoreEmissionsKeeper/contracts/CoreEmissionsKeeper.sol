//SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.19;

import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/IERC20Upgradeable.sol";

interface ICoreTradeRewarder {
    function fill(uint256 day, uint256 amount) external;
}

interface ICoreMultiRewarder {
    function notifyRewardAmount(
        address[] memory _rewardsTokens,
        uint256[] memory _rewards
    ) external;
}

contract CoreEmissionsKeeper is OwnableUpgradeable{

    address public coreTradeRewarder;
    address public coreMultiRewarder;
    address public coreToken;
    uint256 public startTimestamp;
    mapping(uint256 => bool) public isRewardMinted;

    event FillCoreTradeRewarder(address sender, uint256 day, uint256 amount);
    event FillCoreMultiRewarder(address sender, uint256 day, uint256 amount);

    function initialize(
        address coreToken_,
        address coreTradeRewarder_,
        address coreMultiRewarder_,
        uint256 startTimestamp_
    ) external initializer {
        __Ownable_init();
        require(
            coreTradeRewarder_ != address(0) && startTimestamp_ > block.timestamp,
            "BAD PARAMS"
        );

        coreMultiRewarder = coreMultiRewarder_;
        coreTradeRewarder = coreTradeRewarder_;
        startTimestamp = startTimestamp_;
        coreToken = coreToken_;
    }

    function getCoreRewardAmountForTraders(uint256 day) public pure returns ( uint256 corePerDay ) {
        if (day < 365)     return 54794520547945206513664;          // 20000000 * 10**18 / 365
        if (day < 365 * 2) return 27397260273972603256832;      // 10000000 * 10**18 / 365
    }

    function getCoreRewardAmountForStakers(uint256 day) public pure returns ( uint256 corePerDay ) {
        if (day < 365 * 2) return 17123287671232876511232;      // 12500000 * 10**18 / (365*2)
    }

    function fillCoreTradeRewarder(uint256 day) external {
        require(block.timestamp >= startTimestamp, "NOT STARTED");
        require(
            startTimestamp + (day * 1 days) < block.timestamp,
            "NOT REACHED DAY"
        );

        if (!isRewardMinted[day]) {
            isRewardMinted[day] = true;

            uint256 amountTraders = getCoreRewardAmountForTraders(day);
            if (amountTraders > 0) {
                IERC20Upgradeable(coreToken).approve(coreTradeRewarder,amountTraders);
                ICoreTradeRewarder(coreTradeRewarder).fill(day, amountTraders);

                emit FillCoreTradeRewarder(msg.sender, day, amountTraders);
            }


            uint256 amountStakers = getCoreRewardAmountForStakers(day);
            if (amountStakers > 0) {
                address[] memory token = new address[](1);
                token[0] = coreToken;
                uint[] memory amount = new uint[](1);
                amount[0] = amountStakers;

                IERC20Upgradeable(coreToken).approve(coreMultiRewarder,amountStakers);
                ICoreMultiRewarder(coreMultiRewarder).notifyRewardAmount(token, amount);

                emit FillCoreMultiRewarder(msg.sender, day, amountStakers);
            }


        }
    }
}
