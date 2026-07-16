// SPDX-License-Identifier: BUSL-1.1
// Last deployed from commit: f41657e23726031f73a7517ece8ee5da3a05900c;
pragma solidity 0.8.17;

import "@uniswap/lib/contracts/libraries/TransferHelper.sol";
import "../lib/SolvencyMethods.sol";
import "../Pool.sol";
import {DiamondStorageLib} from "../lib/DiamondStorageLib.sol";
import {LeverageTierLib} from "../lib/LeverageTierLib.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

//This path is updated during deployment
import "../lib/arbitrum-qa/DeploymentConstants.sol";
import {GmxV2FeesLib} from "../lib/GmxV2FeesLib.sol";
import {IGmxReader} from "../interfaces/gmx-v2/IGmxReader.sol";

contract SmartLoanViewFacet is SolvencyMethods {
    using TransferHelper for address payable;
    using TransferHelper for address;

    struct AssetNameBalance {
        bytes32 name;
        uint256 balance;
    }

    struct AssetNameBalanceDebtCoverage {
        bytes32 name;
        uint256 balance;
        uint256 debtCoverage;
    }

    struct AssetNameDebt {
        bytes32 name;
        uint256 debt;
    }

    struct AssetNamePrice {
        bytes32 name;
        uint256 price;
    }

    /* ========== PUBLIC AND EXTERNAL MUTATIVE FUNCTIONS ========== */

    function initialize(address owner) external {
        require(owner != address(0), "Initialize: Cannot set the owner to a zero address");
        require(address(this) != DeploymentConstants.getDiamondAddress(), "DiamondInit: Cannot initialize DiamondBeacon");

        DiamondStorageLib.SmartLoanStorage storage sls = DiamondStorageLib.smartLoanStorage();
        require(!sls._initialized, "DiamondInit: contract is already initialized");
        DiamondStorageLib.setContractOwner(owner);
        DiamondStorageLib.setPrimeLeverageTier(LeverageTierLib.LeverageTier.BASIC);
        sls._initialized = true;
    }

    /* ========== VIEW FUNCTIONS ========== */

    function getPercentagePrecision() public view virtual returns (uint256) {
        return DeploymentConstants.getPercentagePrecision();
    }

    function getAccountFrozenSince() public view returns (uint256){
        DiamondStorageLib.SmartLoanStorage storage sls = DiamondStorageLib.smartLoanStorage();
        return sls.frozenSince;
    }

    /**
    * Returns the saved GMX position benchmark for a given market
    * @param market The GMX market address to get benchmark data for
    * @return benchmark The benchmark data including value, token amounts, timestamps, and addresses
    */
    function getGmxPositionBenchmark(address market) external view returns (DiamondStorageLib.GmxPositionBenchmark memory benchmark) {
        return DiamondStorageLib.getGmxPositionBenchmark(market);
    }


    /**
    * Returns a current balance of the asset held by the smart loan
    * @param _asset the code of an asset
    **/
    function getBalance(bytes32 _asset) public view returns (uint256) {
        IERC20 token = IERC20(DeploymentConstants.getTokenManager().getAssetAddress(_asset, true));
        return token.balanceOf(address(this));
    }

    function getAllOwnedAssets() external view returns (bytes32[] memory result) {
        return DeploymentConstants.getAllOwnedAssets();
    }

    function getSupportedTokensAddresses() external view returns (address[] memory) {
        ITokenManager tokenManager = DeploymentConstants.getTokenManager();
        return tokenManager.getSupportedTokensAddresses();
    }

    function getAllAssetsBalancesDebtCoverages() public view returns (AssetNameBalanceDebtCoverage[] memory) {
        ITokenManager tokenManager = DeploymentConstants.getTokenManager();
        bytes32[] memory assets = tokenManager.getAllTokenAssets();
        AssetNameBalanceDebtCoverage[] memory result = new AssetNameBalanceDebtCoverage[](assets.length);

        for (uint256 i = 0; i < assets.length; i++) {
            address assetAddress = tokenManager.getAssetAddress(assets[i], true);
            result[i] = AssetNameBalanceDebtCoverage({
                name : assets[i],
                balance : IERC20(assetAddress).balanceOf(address(this)),
                debtCoverage : tokenManager.tieredDebtCoverage(DiamondStorageLib.getPrimeLeverageTier(), assetAddress)
            });
        }

        return result;
    }

    function getAllAssetsBalances() public view returns (AssetNameBalance[] memory) {
        ITokenManager tokenManager = DeploymentConstants.getTokenManager();
        bytes32[] memory assets = tokenManager.getAllTokenAssets();
        AssetNameBalance[] memory result = new AssetNameBalance[](assets.length);

        for (uint256 i = 0; i < assets.length; i++) {
            address assetAddress = tokenManager.getAssetAddress(assets[i], true);
            if (tokenManager.isGmxMarketWhitelisted(assetAddress)) {
                result[i] = AssetNameBalance({
                name : assets[i],
                balance : _getGmTokenBalanceAfterFees(assetAddress)
                });
                continue;
            }
            result[i] = AssetNameBalance({
            name : assets[i],
            balance : IERC20(assetAddress).balanceOf(address(this))
            });
        }

        return result;
    }

    function _getGmTokenBalanceAfterFees(address gmToken) internal view returns (uint256) {
        ITokenManager tokenManager = DeploymentConstants.getTokenManager();
        address gmxReader = DeploymentConstants.getGmxReaderAddress();
        address dataStore = DeploymentConstants.getGmxDataStoreAddress();
        IGmxReader.MarketProps memory marketProps = IGmxReader(gmxReader).getMarket(dataStore, gmToken);
        address longToken = marketProps.longToken;
        address shortToken = marketProps.shortToken;
        require(longToken != address(0) && shortToken != address(0), "GMX market tokens not found");
        bytes32[] memory tokenSymbols = new bytes32[](3);
        tokenSymbols[0] = tokenManager.tokenAddressToSymbol(gmToken);
        tokenSymbols[1] = tokenManager.tokenAddressToSymbol(longToken);
        tokenSymbols[2] = tokenManager.tokenAddressToSymbol(shortToken);
        uint256[] memory tokenPrices = getPrices(tokenSymbols);
        if (tokenManager.isGmxPlusMarket(gmToken)) {
            tokenPrices[2] = 0; // to avoid double counting of tokenPriceUSD in GMX Plus Markets
        }
        uint256 feeInGmTokens = GmxV2FeesLib._getDeductibleFeesInGmTokens(gmToken, tokenPrices[0], tokenPrices[1], tokenPrices[2]);
        uint256 balance = IERC20(gmToken).balanceOf(address(this));
        if (feeInGmTokens >= balance) {
            return 0;
        } else {
            return balance - feeInGmTokens;
        }
    }

    function getGmTokenBalanceAfterFees(address gmToken) external view returns (uint256) {
        return _getGmTokenBalanceAfterFees(gmToken);
    }

    function getDebts() public view returns (AssetNameDebt[] memory) {
        ITokenManager tokenManager = DeploymentConstants.getTokenManager();
        bytes32[] memory assets = tokenManager.getAllPoolAssets();
        AssetNameDebt[] memory result = new AssetNameDebt[](assets.length);

        for (uint256 i = 0; i < assets.length; i++) {
            Pool pool = Pool(tokenManager.getPoolAddress(assets[i]));

            result[i] = AssetNameDebt({
            name : assets[i],
            debt : pool.getBorrowed(address(this))
            });
        }

        return result;
    }

    /**
     * Returns the prices of all assets supported by the TokenManager
     * It could be used as a helper method for UI
     * @dev This function uses the redstone-evm-connector
     **/
    function getAllAssetsPrices() public returns (AssetNamePrice[] memory) {
        bytes32[] memory assets = DeploymentConstants.getTokenManager().getAllTokenAssets();
        uint256[] memory prices = SolvencyMethods.getPrices(assets);
        AssetNamePrice[] memory result = new AssetNamePrice[](assets.length);
        for (uint i = 0; i < assets.length; i++) {
            result[i] = AssetNamePrice({
                name : assets[i],
                price : prices[i]
            });
        }
        return result;
    }

    function getContractOwner() external view returns (address _owner) {
        _owner = DiamondStorageLib.contractOwner();
    }

    function getProposedOwner() external view returns (address _proposed) {
        _proposed = DiamondStorageLib.proposedOwner();
    }

    function getStakedPositions() external view returns (IStakingPositions.StakedPosition[] memory  _positions) {
        _positions = DiamondStorageLib.stakedPositions();
    }

    /* ========== MODIFIERS ========== */

    modifier onlyOwner() {
        DiamondStorageLib.enforceIsContractOwner();
        _;
    }
}