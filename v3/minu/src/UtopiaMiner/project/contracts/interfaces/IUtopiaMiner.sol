// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

interface IUtopiaMiner {
    enum TradingState {
        OPEN,
        CLOSED
    }

    event Initialized();
    event Compound(address indexed user, uint256 newMiners);
    event Collect(address indexed user, uint256 bonesSold, uint256 ethReceived);
    event Hire(address indexed user, uint256 ethSpent, uint256 bonesBought);
    event TradingStateUpdated(TradingState newState);
    event TokenUpdated(address indexed token);
    event MinimumTokenBalanceUpdated(uint256 newMinimumTokenBalance);

    error NotInitialized();
    error TradingNotAllowed();
    error ZeroAddress();
    error InsufficientAmount(uint256 amount, uint256 required);
    error InsufficientBalance(uint256 balance, uint256 required);

    function initialize() external payable;

    function setTradingState(TradingState newTradingState) external;

    function setToken(address newToken) external;

    function setMinimumTokenBalance(uint256 newMinimumTokenBalance) external;

    function compoundExplorers(address ref) external;

    function hireExplorers(address ref) external payable;

    function collectRewards() external;

    function beanRewards(address adr) external view returns (uint256);

    function calculateBoneSell(uint256 bones) external view returns (uint256);

    function calculateBoneBuy(
        uint256 eth,
        uint256 contractBalance
    ) external view returns (uint256);

    function calculateBoneBuySimple(
        uint256 eth
    ) external view returns (uint256);

    function getBalance() external view returns (uint256);

    function getMyExplorers(address adr) external view returns (uint256);

    function getMyBones(address adr) external view returns (uint256);

    function getBonesSinceLastHatch(
        address adr
    ) external view returns (uint256);

    function getDailyBoneRewards(address adr) external view returns (uint256);
}
