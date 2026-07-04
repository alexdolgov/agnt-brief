// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.7.6;

interface IBondAVAX_R1 {

    event CertTokenChanged(address oldToken, address newToken);

    event SwapFeeOperatorChanged(address oldSwapFeeOperator, address newSwapFeeOperator);

    event SwapFeeRatioUpdate(uint256 newSwapFeeRatio);

    event OperatorChanged(address operator);

    event NameAndSymbolChanged(string name, string symbol);

    event CrossChainBridgeChanged(address bridge);

    event AvalanchePoolChanged(address pool);

    function mintBonds(address account, uint256 amount) external;

    function burn(address account, uint256 amount) external;

    function pendingBurn(address account) external view returns (uint256);

    function ratio() external view returns (uint256);

    function lastConfirmedRatio() external view returns (uint256);

    function unlockShares(uint256 shares) external;

    function unlockSharesFor(address account, uint256 bonds) external;

    function totalSharesSupply() external view returns (uint256);

    function totalSharesSupplyWithBurns() external view returns (uint256);

    function sharesToBalance(uint256 amount) external view returns (uint256);

    function lockShares(uint256 shares) external;

    function lockSharesFor(address account, uint256 bonds) external;

    function updateSwapFeeRatio(uint256 newRatio) external;

    function changeSwapFeeOperator(address newSwapFeeOperator) external;

    function burnBondsFor(address account, address from, uint256 amount) external;

    function confirmBurn(address account, uint256 amount) external;

    function migrateBurnDelayed(address claimer, uint256 amount) external;

    function getSwapFeeInShares(uint256 shares) external returns(uint256);

    function getSwapFeeInBonds(uint256 bonds) external returns(uint256);

    function isRebasing() external returns (bool);
}
