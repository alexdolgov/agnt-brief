// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IChamETF {
    /**
     * @dev Token record data structure
     * @param bound is token bound to pool
     * @param ready has token been initialized
     * @param index index of address in tokens array
     * @param balance token balance
     */
    struct Record {
        bool bound;
        bool ready;
        uint8 index;
        uint256 balance;
    }

    function exitFee() external view returns (uint256);

    function INIT_POOL_SUPPLY() external view returns (uint256);

    function maxBoundTokens() external view returns (uint256);

    function MIN_BALANCE() external view returns (uint256);

    function minBoundTokens() external view returns (uint256);

    function addTokenAsset(address token, uint256 minimumBalance, uint256 balance) external;

    function exitFeeRecipient() external view returns (address);

    function exitPool(uint256 poolAmountIn, uint256[] memory minAmountsOut)
        external;

    function getUsedBalance(address token) external view returns (uint256);

    function getCurrentTokens()
        external
        view
        returns (address[] memory currentTokens);

    function initialize(
        address[] memory tokens,
        uint256[] memory balances,
        address tokenProvider
    ) external;

    function joinPool(uint256 poolAmountOut, uint256[] memory maxAmountsIn)
        external;

    function maxPoolTokens() external view returns (uint256);

    function removeTokenAsset(address token) external;

    function setExitFee(uint256 _exitFee) external;

    function setMinBoundTokens(uint256 _minBoundTokens) external;

    function setMaxBoundTokens(uint256 _maxBoundTokens) external;

    function setMaxPoolTokens(uint256 _maxPoolTokens) external;

    function setMinimumBalance(address token, uint256 minimumBalance) external;
}
