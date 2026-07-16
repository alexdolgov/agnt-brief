// Sources flattened with hardhat v2.6.1 https://hardhat.org

// File contracts/core/interfaces/IVault.sol

// SPDX-License-Identifier: MIT

pragma solidity 0.6.12;

interface IVault {
    function setInManagerMode(bool _inManagerMode) external;
    function setManager(address _manager, bool _isManager) external;
    function setIsSwapEnabled(bool _isSwapEnabled) external;
    function setIsLeverageEnabled(bool _isLeverageEnabled) external;
    function setMaxGasPrice(uint256 _maxGasPrice) external;

    function setFees(
        uint256 _taxBasisPoints,
        uint256 _stableTaxBasisPoints,
        uint256 _mintBurnFeeBasisPoints,
        uint256 _swapFeeBasisPoints,
        uint256 _stableSwapFeeBasisPoints,
        uint256 _marginFeeBasisPoints,
        uint256 _liquidationFeeUsd,
        uint256 _minProfitTime,
        bool _hasDynamicFees
    ) external;

    function setTokenConfig(
        address _token,
        uint256 _tokenDecimals,
        uint256 _redemptionBps,
        uint256 _minProfitBps,
        uint256 _maxUsdgAmount,
        bool _isStable,
        bool _isShortable
    ) external;

    function setPriceFeed(address _priceFeed) external;
    function withdrawFees(address _token, address _receiver) external returns (uint256);

    function directPoolDeposit(address _token) external;
    function buyUSDG(address _token, address _receiver) external returns (uint256);
    function sellUSDG(address _token, address _receiver) external returns (uint256);
    function swap(address _tokenIn, address _tokenOut, address _receiver) external returns (uint256);
    function increasePosition(address _account, address _collateralToken, address _indexToken, uint256 _sizeDelta, bool _isLong) external;
    function decreasePosition(address _account, address _collateralToken, address _indexToken, uint256 _collateralDelta, uint256 _sizeDelta, bool _isLong, address _receiver) external returns (uint256);
    function tokenToUsdMin(address _token, uint256 _tokenAmount) external view returns (uint256);

    function priceFeed() external view returns (address);
    function fundingRateFactor() external view returns (uint256);
    function stableFundingRateFactor() external view returns (uint256);
    function cumulativeFundingRates(address _token) external view returns (uint256);
    function getNextFundingRate(address _token) external view returns (uint256);
    function getFeeBasisPoints(address _token, uint256 _usdgDelta, uint256 _feeBasisPoints, uint256 _taxBasisPoints, bool _increment) external view returns (uint256);

    function taxBasisPoints() external view returns (uint256);
    function stableTaxBasisPoints() external view returns (uint256);
    function mintBurnFeeBasisPoints() external view returns (uint256);
    function swapFeeBasisPoints() external view returns (uint256);
    function stableSwapFeeBasisPoints() external view returns (uint256);

    function allWhitelistedTokensLength() external view returns (uint256);
    function allWhitelistedTokens(uint256) external view returns (address);
    function whitelistedTokens(address _token) external view returns (bool);
    function stableTokens(address _token) external view returns (bool);
    function shortableTokens(address _token) external view returns (bool);
    function feeReserves(address _token) external view returns (uint256);
    function globalShortSizes(address _token) external view returns (uint256);
    function globalShortAveragePrices(address _token) external view returns (uint256);
    function tokenDecimals(address _token) external view returns (uint256);
    function tokenWeights(address _token) external view returns (uint256);
    function guaranteedUsd(address _token) external view returns (uint256);
    function poolAmounts(address _token) external view returns (uint256);
    function bufferAmounts(address _token) external view returns (uint256);
    function reservedAmounts(address _token) external view returns (uint256);
    function usdgAmounts(address _token) external view returns (uint256);
    function maxUsdgAmounts(address _token) external view returns (uint256);
    function getRedemptionAmount(address _token, uint256 _usdgAmount) external view returns (uint256);
    function getMaxPrice(address _token) external view returns (uint256);
    function getMinPrice(address _token) external view returns (uint256);

    function getDelta(address _indexToken, uint256 _size, uint256 _averagePrice, bool _isLong, uint256 _lastIncreasedTime) external view returns (bool, uint256);
    function getPosition(address _account, address _collateralToken, address _indexToken, bool _isLong) external view returns (uint256, uint256, uint256, uint256, uint256, uint256, bool, uint256);
}


// File contracts/peripherals/VaultReader.sol


pragma solidity 0.6.12;

contract VaultReader {
    IVault public vault;

    constructor(IVault _vault) public {
        vault = _vault;
    }

    function priceFeed() external view returns (address) {
        return vault.priceFeed();
    }
    function fundingRateFactor() external view returns (uint256) {
        return vault.fundingRateFactor();
    }

    function stableFundingRateFactor() external view returns (uint256) {
        return vault.stableFundingRateFactor();
    }
    function cumulativeFundingRates(address _token) external view returns (uint256) {
        return vault.cumulativeFundingRates(_token);
    }
    function getFeeBasisPoints(address _token, uint256 _usdgDelta, uint256 _feeBasisPoints, uint256 _taxBasisPoints, bool _increment) external view returns (uint256) {
        return vault.getFeeBasisPoints(_token, _usdgDelta, _feeBasisPoints, _taxBasisPoints, _increment);
    }

    function taxBasisPoints() external view returns (uint256) {
        return vault.taxBasisPoints();
    }
    function stableTaxBasisPoints() external view returns (uint256) {
        return vault.stableTaxBasisPoints();
    }
    function mintBurnFeeBasisPoints() external view returns (uint256) {
        return vault.mintBurnFeeBasisPoints();
    }
    function swapFeeBasisPoints() external view returns (uint256) {
        return vault.swapFeeBasisPoints();
    }
    function stableSwapFeeBasisPoints() external view returns (uint256) {
        return vault.stableSwapFeeBasisPoints();
    }

    function allWhitelistedTokensLength() external view returns (uint256) {
        return vault.allWhitelistedTokensLength();
    }
    function allWhitelistedTokens(uint256 _index) external view returns (address) {
        return vault.allWhitelistedTokens(_index);
    }
    function whitelistedTokens(address _token) external view returns (bool) {
        return vault.whitelistedTokens(_token);
    }
    function stableTokens(address _token) external view returns (bool) {
        return vault.stableTokens(_token);
    }
    function shortableTokens(address _token) external view returns (bool) {
        return vault.shortableTokens(_token);
    }
    function feeReserves(address _token) external view returns (uint256) {
        return vault.feeReserves(_token);
    }
    function globalShortSizes(address _token) external view returns (uint256) {
        return vault.globalShortSizes(_token);
    }
    function globalShortAveragePrices(address _token) external view returns (uint256) {
        return vault.globalShortAveragePrices(_token);
    }
    function tokenDecimals(address _token) external view returns (uint256) {
        return vault.tokenDecimals(_token);
    }
    function tokenWeights(address _token) external view returns (uint256) {
        return vault.tokenWeights(_token);
    }
    function guaranteedUsd(address _token) external view returns (uint256) {
        return vault.guaranteedUsd(_token);
    }
    function poolAmounts(address _token) external view returns (uint256) {
        return vault.poolAmounts(_token);
    }
    function bufferAmounts(address _token) external view returns (uint256) {
        return vault.bufferAmounts(_token);
    }
    function reservedAmounts(address _token) external view returns (uint256) {
        return vault.reservedAmounts(_token);
    }
    function usdgAmounts(address _token) external view returns (uint256) {
        return vault.usdgAmounts(_token);
    }
    function maxUsdgAmounts(address _token) external view returns (uint256) {
        return vault.maxUsdgAmounts(_token);
    }
    function getMaxPrice(address _token) external view returns (uint256) {
        return vault.getMaxPrice(_token);
    }
    function getMinPrice(address _token) external view returns (uint256) {
        return vault.getMinPrice(_token);
    }
}