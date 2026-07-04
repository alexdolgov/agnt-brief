// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.30;

/**
 * @title IPackSale interface
 */
interface IPackSale {
    // Events
    event UserBoughtPacks(uint256 numOfPacksBought, address buyer, address userSmartWalletAddress, uint256 totalPriceOfPacks);
    event SaleEnabledChanged(bool enabled);
    event PackPriceChanged(uint256 newPrice);
    event TxSignerChanged(address newSigner);
    event TreasuryWalletChanged(address newTreasuryWallet);
    event TotalPacksChanged(uint256 newTotalPacks);
    event UsdcTokenChanged(address newUsdcToken);

    // Errors
    error ZeroAddress();
    error SaleNotActive();
    error InvalidSignature();
    error PackSpendingLimitReached();
    error InvalidPackAmountBought();
    error InvalidPackPrice();
    error NoPacksAvailable();
    error InvalidTotalPacks();

    // Functions
    function buyPacks(uint32 _numOfPacks, uint256 _spendingLimit, bytes calldata _signature, address _userSmartWalletAddress) external;
    function setPackPrice(uint256 _newPackPrice) external;
    function getPacksBoughtByUser(address _account) external view returns(uint32);
    function getTotalSpentByUser(address _account) external view returns(uint256);
    function getTotalInvested() external view returns(uint256);
    function getPackBuyers() external view returns(address[] memory);
    function setSaleEnabled(bool _enabled) external;
    function setTxSigner(address _newTxSigner) external;
    function setTreasuryWallet(address _newTreasuryWallet) external;
    function setUsdcToken(address _newUsdcTokenAddress) external;
    function setTotalPacks(uint256 _newTotalPacks) external;
    function getWalletsByFdfWallet(address _fdfWallet) external view returns(address[] memory);
} 