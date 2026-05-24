// SPDX-License-Identifier: MIT

pragma solidity 0.8.28;

interface IController {
    struct EpochStats {
        uint256 previousEpoch;
        uint256 currentEpoch;
    }

    struct LiquidityProviderParams {
        EpochStats twtShares;
        EpochStats swaPrice;
        uint256 totalSharesInPreviousEpoch;
        uint256 latestDepositBlockNumber;
    }

    function initialize(
        address vaultAddress,
        address treasuryAddress,
        address ownerAddress,
        uint256 depositFeeBp,
        uint256 withdrawFeeBp,
        uint256 gainsFeeBp,
        uint256 depositLimit,
        uint256 redeemLimit
    ) external;

    function _epoch() external view returns (uint256);
    function _treasury() external view returns (address);
    function _epochStartedAt() external view returns (uint256);

    function _lastDepositAt() external view returns (uint256);
    function _previousEpochStartedAt() external view returns (uint256);

    function _depositFeeBp() external returns (uint256 depositFeeBp);
    function _withdrawFeeBp() external returns (uint256 withdrawFeeBp);
    function _gainsFeeBp() external returns (uint256 gainsFeeBp);

    // denominated in assets
    function _depositLimit() external view returns (uint256);
    function _withdrawLimit() external view returns (uint256);
    function _totalAssetsSnapshot() external view returns (uint256);

    // denominated in shares
    function _redeemLimit() external view returns (uint256);
    function _totalRedeemRequests() external view returns (uint256);
    function _totalSupplySnapshot() external view returns (uint256);
    function _redeemRequests(address owner, uint256 epoch) external view returns (uint256 sharesToRedeem);

    function twtShares(address owner)
        external
        view
        returns (uint256 twtSharesInPreviousEpoch, uint256 twtSharesInCurrentEpoch);
    function totalSharesInPreviousEpoch(address owner) external view returns (uint256 totalSharesInPreviousEpoch);
    function swaPrice(address owner)
        external
        view
        returns (uint256 swaPriceInPreviousEpoch, uint256 swaPriceInCurrentEpoch);
    function latestDepositBlockNumber(address owner) external view returns (uint256);

    function _twaTotalSupply()
        external
        view
        returns (uint256 totalSupplyInPreviousEpoch, uint256 totalSupplyInCurrentEpoch);
    function _totalDeposits()
        external
        view
        returns (uint256 totalDepositsInPreviousEpoch, uint256 totalDepositsInCurrentEpoch);

    function vault() external view returns (address);
    function deposit(uint256 assets, uint256 minShares) external;
    function requestRedeem(uint256 shares) external;
    function redeem(address owner) external returns (uint256);

    function botWithdraw(uint256 assets, address recipient) external;
    function botUpdatePnl(uint256 assets, bool isPositive) external;
    function botDepositAndStartEpoch(uint256 assets) external;
}
