// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.7.6;

interface IBondAVAX {

    event CertTokenChanged(address oldToken, address newToken);

    event SwapFeeOperatorChanged(address oldSwapFeeOperator, address newSwapFeeOperator);

    event SwapFeeRatioUpdate(uint256 newSwapFeeRatio);

    function mintBonds(address account, uint256 amount) external;

    function burn(address account, uint256 amount) external;

    function pendingBurn(address account) external view returns (uint256);

    function lockForDelayedBurn(address account, uint256 amount) external;

    function commitDelayedBurn(address account, uint256 amount) external;

    function ratio() external view returns (uint256);

    function lastConfirmedRatio() external view returns (uint256);

    function unlockShares(uint256 shares) external;

    function unlockSharesFor(address account, uint256 bonds) external;

    function totalSharesSupply() external view returns (uint256);

    function sharesToBalance(uint256 amount) external view returns (uint256);

    function lockShares(uint256 shares) external;

    function lockSharesFor(address account, uint256 bonds) external;

    function updateSwapFeeRatio(uint256 newRatio) external;

    function changeSwapFeeOperator(address newSwapFeeOperator) external;

    function getSwapFeeInShares(uint256 shares) external returns(uint256);

    function getSwapFeeInBonds(uint256 bonds) external returns(uint256);

    function isRebasing() external returns (bool);
}
