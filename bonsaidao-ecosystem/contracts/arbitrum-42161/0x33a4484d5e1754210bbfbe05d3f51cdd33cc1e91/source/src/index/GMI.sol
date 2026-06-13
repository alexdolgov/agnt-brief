// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.17;

import { ERC20 as SolmateERC20 } from "solmate/tokens/ERC20.sol";
import { ERC20 } from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import { SafeTransferLib } from "solmate/utils/SafeTransferLib.sol";
import { GlobalACL, Auth, KEEPER_ROLE, SWAP_KEEPER } from "../Auth.sol";
import { Solarray } from "../libraries/Solarray.sol";
import { GmiUtils } from "./GmiUtils.sol";
import { IGmxV2Handler } from "../interfaces/IGmxV2Handler.sol";
import { PositionManagerRouter, WhitelistedTokenRegistry } from "../position-managers/PositionManagerRouter.sol";
import { GmiStorage } from "./GmiStorage.sol";
import { GmxStorage } from "../libraries/GmxStorage.sol";
import { TOKEN_USDC_NATIVE, TOKEN_WETH, TOKEN_ARB, GMX_V2_DATA_STORE } from "../constants.sol";

interface IDataStore {
    function getUint(bytes32) external view returns (uint256);
}

IDataStore constant DATASTORE = IDataStore(GMX_V2_DATA_STORE);
bytes32 constant POOL_AMOUNT = keccak256(abi.encode("POOL_AMOUNT"));

/// @title GMI
/// @author Umami Devs
/// @notice ERC4626-like implementation for GMX V2 index
contract GMI is GmiStorage, PositionManagerRouter, ERC20, GlobalACL {
    using SafeTransferLib for SolmateERC20;

    error InvalidMintAsset();

    uint256 public constant INDEX_SIZE = 4;
    bool private initialized = false;

    event Deposit(address indexed caller, address indexed owner, uint256 value, uint256 shares);
    event Withdraw(
        address indexed caller, address indexed receiver, address indexed owner, uint256 value, uint256 shares
    );

    constructor(Auth auth, WhitelistedTokenRegistry registry)
        ERC20("_UNUSED_", "_UNUSED_")
        GlobalACL(auth)
        PositionManagerRouter(registry)
    { }

    function initStorage(
        address gmHandler,
        address[] memory _indexAssets,
        uint256[] memory _weights,
        uint256 _mintCapTolerance,
        uint8 _fallbackPool
    ) external {
        require(!initialized);
        require(_indexAssets[0] != address(0));
        require(_indexAssets[1] != address(0));
        require(_indexAssets[2] != address(0));
        require(_indexAssets[3] != address(0));
        require(_indexAssets.length == _weights.length);
        require(address(gmHandler) != address(0));
        require(Solarray.arraySum(_weights) == 1e18);
        require(INDEX_SIZE == _indexAssets.length);
        _setIndexAssets(_indexAssets);
        _setGmiV2Handler(gmHandler);
        _setWeights(_weights);
        _setMintCapTolerance(_mintCapTolerance);
        _setFallbackMintPool(_fallbackPool);
        initialized = true;
    }

    // DEPOSIT & WITHDRAW
    // ------------------------------------------------------------------------------------------

    /**
     * @notice Deposit a group of assets
     * @param assets The amount of assets to deposit
     * @param receiver The address to receive the minted shares
     * @return shares The amount of shares minted for the deposited assets
     */
    function deposit(uint256[] memory assets, GmxStorage.MarketPrices[] memory prices, address receiver)
        public
        onlyAggregateVault
        returns (uint256 shares)
    {
        require(INDEX_SIZE == assets.length, "GMI: !INDEX_SIZE");
        require(INDEX_SIZE == prices.length, "GMI: !INDEX_SIZE");
        // value the shares being deposited
        uint256[] memory depositAssetsValue = appraiseAssets(assets, prices);
        uint256 depositAssetValue = Solarray.arraySum(depositAssetsValue);

        // lock in pps before deposit handling
        /// @dev round up pps here for deposits
        uint256 singleShare = 10 ** decimals();
        uint256 depositPPS =
            totalSupply() == 0 ? singleShare : (singleShare * tvl(prices) + totalSupply() - 1) / totalSupply();

        // convert bundle of assets to shares
        shares = GmiUtils.valueToShares(depositAssetValue, depositPPS, decimals());
        require(shares > 0, "GMI: !shares");

        // Transfer assets, transfer before minting or ERC777s could reenter.
        _transferIn(assets, msg.sender);

        _mint(receiver, shares);

        emit Deposit(msg.sender, receiver, depositAssetValue, shares);
    }

    /**
     * @notice Redeem a specified amount of shares by burning them and transferring the corresponding amount of assets to the receiver
     * @param shares The amount of shares to redeem
     * @param receiver The address to receive the corresponding assets
     * @param owner The address of the share owner
     * @return assets The amount of assets transferred for the redeemed shares
     */
    function redeem(uint256 shares, address receiver, address owner, GmxStorage.MarketPrices[] memory prices)
        public
        onlyAggregateVault
        returns (uint256[] memory assets)
    {
        require(INDEX_SIZE == prices.length, "GMI: !INDEX_SIZE");
        require(shares > 0, "AssetVault: !shares > 0");
        assets = previewRedeem(shares, prices);
        // check valid withdrawal
        if (msg.sender != owner) {
            _checkAllowance(owner, shares);
        }

        // check available assets
        _chechkAvailableTokenBalance(assets);

        _burn(owner, shares);

        _transferOut(assets, receiver);

        // value the shares being withdrawn
        uint256 withdrawalAssetValue = _appraiseAllAssets(assets, prices);

        emit Withdraw(msg.sender, receiver, owner, withdrawalAssetValue, shares);
    }

    // MANUAL REBALANCE
    // ------------------------------------------------------------------------------------------

    /// @dev External payable function to receive eth.
    function depositEth() external payable onlyRole(KEEPER_ROLE) { }

    /// @dev External payable function to withdraw eth.
    function retrieveEth(uint256 amount) external payable onlyRole(KEEPER_ROLE) {
        (bool success,) = msg.sender.call{ value: amount }("");
        require(success);
    }

    // VIEWS
    // ------------------------------------------------------------------------------------------

    function name() public view override returns (string memory) {
        return "GMI";
    }

    function symbol() public view override returns (string memory) {
        return "GMI";
    }

    function getWeights() external view returns (uint256[] memory) {
        return _getWeights();
    }

    // MATH
    // ------------------------------------------------------------------------------------------

    /**
     * @notice Preview the amount of assets for a given mint amount
     * @param shares The amount of shares to mint
     * @param asset The asset to mint GM tokens from for validation
     * @param prices prices of the underlying tokens
     * @return mintAmount The amount of assets in $ to mint
     */
    function previewMint(uint256 shares, address asset, GmxStorage.MarketPrices[] memory prices)
        public
        view
        returns (uint256[] memory)
    {
        require(INDEX_SIZE == prices.length, "GMI: !INDEX_SIZE");
        uint256[] memory gmValueToMint = new uint256[](INDEX_SIZE);
        uint256[] memory weights = _getWeights();
        uint256[] memory marketTokenPrices = _getMarketTokenPrices(prices);
        if (totalSupply() == 0) {
            /// @dev shares are $1 each
            for (uint256 i = 0; i < INDEX_SIZE; i++) {
                gmValueToMint[i] = (shares * weights[i]) / SCALE;
            }
        } else {
            // case for finding a balanced allocation
            uint256[] memory bals = balances();
            uint256[] memory currentAssetValue = appraiseAssets(bals, prices);
            uint256 totalVaultValue = Solarray.arraySum(currentAssetValue);
            uint256[] memory target = GmiUtils.findWeightedBalances(totalVaultValue, weights);
            int256[] memory difference = Solarray.arrayDifference(target, currentAssetValue);
            gmValueToMint =
                GmiUtils.adjustToBalance(shares, totalVaultValue, difference, weights, totalSupply(), INDEX_SIZE);
        }
        // validation for deposit/withdrawal caps
        return _toMarketTokenAmount(
            _validateMintableAmounts(asset, gmValueToMint, prices[0].longTokenPrice, prices[0].shortTokenPrice),
            marketTokenPrices
        );
    }

    /**
     * @notice Preview the amount of assets for a given redeem amount
     * @param shares The amount of shares to redeem
     * @param prices the current prices
     * @return withdrawAmount The amount of assets for the given redeem amount
     */
    function previewRedeem(uint256 shares, GmxStorage.MarketPrices[] memory prices)
        public
        view
        returns (uint256[] memory)
    {
        require(INDEX_SIZE == prices.length, "GMI: !INDEX_SIZE");
        uint256[] memory withdrawAmount = new uint256[](INDEX_SIZE);
        if (totalSupply() == 0) {
            return new uint256[](INDEX_SIZE);
        } else if (shares == totalSupply()) {
            return balances();
        } else {
            uint256[] memory weights = _getWeights();
            uint256[] memory marketTokenPrices = _getMarketTokenPrices(prices);
            uint256[] memory bal = balances();
            uint256[] memory currentAssetValue = appraiseAssets(bal, prices);
            uint256 totalValue = Solarray.arraySum(currentAssetValue);
            uint256[] memory target = GmiUtils.findWeightedBalances(totalValue, weights);
            int256[] memory difference = Solarray.arrayDifference(currentAssetValue, target);
            uint256[] memory valueToBalance =
                GmiUtils.adjustToBalance(shares, totalValue, difference, weights, totalSupply(), INDEX_SIZE);
            withdrawAmount = _toMarketTokenAmount(valueToBalance, marketTokenPrices);
        }
        return withdrawAmount;
    }

    /**
     * @notice Converts shares to a group of market tokens
     * @param shares The amount of shares
     * @param prices the current prices
     */
    function sharesToMarketTokens(uint256 shares, GmxStorage.MarketPrices[] memory prices)
        public
        view
        returns (uint256[] memory)
    {
        uint256[] memory gmAmount = new uint256[](INDEX_SIZE);
        require(INDEX_SIZE == prices.length, "GMI: !INDEX_SIZE");
        uint256[] memory weights = _getWeights();
        uint256[] memory marketTokenPrices = _getMarketTokenPrices(prices);
        for (uint256 i = 0; i < INDEX_SIZE; i++) {
            gmAmount[i] = (shares * 1e18 * weights[i]) / (SCALE * marketTokenPrices[i]);
        }
        return gmAmount;
    }

    // UTILS
    // ------------------------------------------------------------------------------------------

    /**
     * @notice Get the index asset addresses
     */
    function indexAssets() public view returns (address[] memory assetAddresses) {
        assetAddresses = _getIndexAssets();
    }

    /**
     * @notice Get the price per share (PPS) of the vault in dollars
     * @return pricePerShare The current price per share in dollars
     */
    function pps(GmxStorage.MarketPrices[] memory prices) public view returns (uint256 pricePerShare) {
        require(INDEX_SIZE == prices.length, "GMI: !INDEX_SIZE");
        uint256 singleShare = 10 ** decimals();
        pricePerShare = totalSupply() == 0 ? singleShare : singleShare * tvl(prices) / totalSupply();
    }

    /**
     * @notice Get the total value locked (TVL) of the vault
     * @param prices the prices
     * @return totalValueLocked The current total value locked in dollars
     */
    function tvl(GmxStorage.MarketPrices[] memory prices) public view returns (uint256 totalValueLocked) {
        require(INDEX_SIZE == prices.length, "GMI: !INDEX_SIZE");
        uint256[] memory balOfGm = balances();
        return _appraiseAllAssets(balOfGm, prices);
    }

    /**
     * @notice Get the total value locked (TVL) of the vault
     * @return balOfGm The current total value locked in dollars
     */
    function balances() public view returns (uint256[] memory) {
        address[] memory assets = _getIndexAssets();
        uint256[] memory balOfGm = new uint256[](INDEX_SIZE);
        for (uint256 i = 0; i < INDEX_SIZE; i++) {
            balOfGm[i] = ERC20(assets[i]).balanceOf(address(this));
        }
        return balOfGm;
    }

    /**
     * @notice Appraise a bundle of underlying tokens at prices
     * @param assetAmounts the amounts of the underlying to price
     * @param prices the prices
     */
    function appraiseAssets(uint256[] memory assetAmounts, GmxStorage.MarketPrices[] memory prices)
        public
        view
        returns (uint256[] memory)
    {
        require(INDEX_SIZE == assetAmounts.length, "GMI: !INDEX_SIZE");
        require(INDEX_SIZE == prices.length, "GMI: !INDEX_SIZE");
        uint256[] memory assetsValue = new uint256[](INDEX_SIZE);
        address[] memory assets = _getIndexAssets();
        IGmxV2Handler handler = IGmxV2Handler(_getStorage().gmiV2Handler);
        for (uint256 i = 0; i < INDEX_SIZE; i++) {
            assetsValue[i] = assetAmounts[i] * handler.getGmMidPrice(assets[i], prices[i]) / 1e30;
        }
        return assetsValue;
    }

    /**
     * @notice Get the underlying balances of all markets in the index
     */
    function getUnderlyingMarketCompositions() public view returns (uint256[2] memory underlyingBalances) {
        address[] memory assets = _getIndexAssets();

        for (uint8 i = 0; i < INDEX_SIZE; i++) {
            address gm = assets[i];
            underlyingBalances[0] += DATASTORE.getUint(_poolAmountKey(gm, TOKEN_USDC_NATIVE));
            underlyingBalances[1] += DATASTORE.getUint(_poolAmountKey(gm, TOKEN_WETH));
        }
    }

    /**
     * @notice Get the current index composition weights
     */
    function getIndexComposition(uint256 usdcExternalPrice, uint256 ethExternalPrice)
        external
        view
        returns (uint256[2] memory composition)
    {
        uint256[2] memory underlyingBalances = getUnderlyingMarketCompositions();
        uint256 usdcUsd = underlyingBalances[0] * usdcExternalPrice;
        uint256 ethUsd = underlyingBalances[1] * ethExternalPrice;
        uint256 totalUsd = usdcUsd + ethUsd;
        uint256 usdcComp = usdcUsd * 1e18 / totalUsd;
        composition[0] = usdcComp;
        composition[1] = 1e18 - usdcComp;
    }

    function _poolAmountKey(address _market, address _token) internal pure returns (bytes32) {
        return keccak256(abi.encode(POOL_AMOUNT, _market, _token));
    }

    /**
     * @notice Collect any arb emissions sent to the contract
     */
    function collectArb() external onlyConfigurator {
        uint256 arbBalance = ERC20(TOKEN_ARB).balanceOf(address(this));
        if (arbBalance > 0) SolmateERC20(TOKEN_ARB).safeTransfer(msg.sender, arbBalance);
    }

    // CONFIG
    // ------------------------------------------------------------------------------------------

    /**
     * @notice Set the new target weights for the index
     * @param newWeights The new weights for the index
     */
    function setTargetWeights(uint256[] memory newWeights) external onlyConfigurator {
        require(INDEX_SIZE == newWeights.length, "GMI: !INDEX_SIZE");
        require(Solarray.arraySum(newWeights) == 1e18, "GMI: weights");
        _setWeights(newWeights);
    }

    /**
     * @notice set mint tolerance
     * @param newTolderance the new tolerance
     */
    function setMintCapTolerance(uint256 newTolderance) external onlyConfigurator {
        require(newTolderance <= 1e18, "GMI: !mintCapTolerance");
        _setMintCapTolerance(newTolderance);
    }

    /**
     * @notice set fallback mint pool
     * @param poolIndex the index of the pool to fallback on
     */
    function setFallbackMintPool(uint8 poolIndex) external onlyConfigurator {
        require(poolIndex < INDEX_SIZE, "GMI: !poolIndex");
        _setFallbackMintPool(poolIndex);
    }

    /**
     * @notice set gmiV2handler
     * @param gmiHandler the new gmi handler
     */
    function setGmiV2Handler(address gmiHandler) external onlyConfigurator {
        _setGmiV2Handler(gmiHandler);
    }

    // INTERNAL
    // ------------------------------------------------------------------------------------------

    /**
     * @notice Appraise the value of the deposit assets
     * @return assetsValue The asset bundle to value
     */
    function _appraiseAllAssets(uint256[] memory assetAmounts, GmxStorage.MarketPrices[] memory prices)
        internal
        view
        returns (uint256 assetsValue)
    {
        address[] memory assets = _getIndexAssets();
        IGmxV2Handler handler = IGmxV2Handler(_getStorage().gmiV2Handler);
        for (uint256 i = 0; i < INDEX_SIZE; i++) {
            assetsValue += assetAmounts[i] * handler.getGmMidPrice(assets[i], prices[i]) / 1e30;
        }
    }

    /**
     * @dev Validates the amounts of underlying to be minted prior to deposit and updates the quote
     */
    function _validateMintableAmounts(
        address asset,
        uint256[] memory gmUsdValue,
        GmxStorage.Price memory ethPrice,
        GmxStorage.Price memory usdcPrice
    ) internal view returns (uint256[] memory) {
        IGmxV2Handler handler = IGmxV2Handler(_getStorage().gmiV2Handler);
        address[] memory assets = _getIndexAssets();
        uint256 mintCapTol = _getMintCapTolerance();
        uint256[] memory gmUsdToMint = new uint256[](INDEX_SIZE);
        uint256[] memory maxMintable = new uint256[](INDEX_SIZE);
        bool[] memory canMintAll = new bool[](INDEX_SIZE);
        uint256 mintableAmount;
        uint256 totalMissed;
        for (uint256 i = 0; i < INDEX_SIZE; i++) {
            /// @dev use a tolerance param to account for changing price during rebalance
            if (asset == TOKEN_WETH) {
                mintableAmount = handler.getMaxDepositAmount(assets[i], TOKEN_WETH) * ethPrice.min * mintCapTol / 1e18;
            } else if (asset == TOKEN_USDC_NATIVE) {
                mintableAmount =
                    handler.getMaxDepositAmount(assets[i], TOKEN_USDC_NATIVE) * usdcPrice.min * mintCapTol / 1e18;
            } else {
                revert InvalidMintAsset();
            }
            maxMintable[i] = mintableAmount * 1e18 / 1e30;
            canMintAll[i] = maxMintable[i] > gmUsdValue[i];
            gmUsdToMint[i] = canMintAll[i] ? gmUsdValue[i] : maxMintable[i];

            if (!canMintAll[i]) {
                totalMissed += gmUsdValue[i] - maxMintable[i];
            }
        }

        /// @dev add the missed to the priority pool
        uint8 fallbackPool = _getFallbackMintPool();
        if (totalMissed > 0) {
            require(totalMissed < maxMintable[fallbackPool] - gmUsdToMint[fallbackPool], "GMI: over limit");
            gmUsdToMint[fallbackPool] += totalMissed;
        }
        return gmUsdToMint;
    }

    /**
     * @dev Validates the available token balances
     */
    function _chechkAvailableTokenBalance(uint256[] memory requestedTokenAmount) internal view {
        uint256[] memory currentBalance = balances();
        for (uint8 i = 0; i < INDEX_SIZE; i++) {
            require(requestedTokenAmount[i] <= currentBalance[i], "GMI: !balance");
        }
    }

    /**
     * @dev Converts $ amounts to market token amounts
     */
    function _toMarketTokenAmount(uint256[] memory marketValueAmount, uint256[] memory prices)
        internal
        view
        returns (uint256[] memory)
    {
        address[] memory assets = _getIndexAssets();
        uint256[] memory marketTokenAmount = new uint256[](INDEX_SIZE);
        for (uint256 i = 0; i < INDEX_SIZE; i++) {
            marketTokenAmount[i] = (10 ** ERC20(assets[i]).decimals() * marketValueAmount[i]) / prices[i];
        }
        return marketTokenAmount;
    }

    /**
     * @dev Gets the market tokens prices
     */
    function _getMarketTokenPrices(GmxStorage.MarketPrices[] memory prices) internal view returns (uint256[] memory) {
        uint256[] memory marketPrices = new uint256[](INDEX_SIZE);
        IGmxV2Handler handler = IGmxV2Handler(_getStorage().gmiV2Handler);
        address[] memory assets = _getIndexAssets();
        for (uint256 i = 0; i < INDEX_SIZE; i++) {
            marketPrices[i] = handler.getGmMidPrice(assets[i], prices[i]) * 1e18 / 1e30;
        }
        return marketPrices;
    }

    /**
     * @dev Check the owners spend allowance
     */
    function _checkAllowance(address owner, uint256 shares) internal {
        uint256 approved = allowance(owner, msg.sender); // Saves gas for limited approvals.
        if (approved != type(uint256).max) _approve(owner, msg.sender, approved - shares);
    }

    /**
     * @dev Transfer the tokens into the index
     */
    function _transferIn(uint256[] memory assetAmounts, address sender) internal {
        address[] memory assets = _getIndexAssets();
        for (uint256 i = 0; i < INDEX_SIZE; i++) {
            SolmateERC20(assets[i]).safeTransferFrom(sender, address(this), assetAmounts[i]);
        }
    }

    /**
     * @dev Transfer the tokens out of the index
     */
    function _transferOut(uint256[] memory assetAmounts, address receiver) internal {
        address[] memory assets = _getIndexAssets();
        for (uint256 i = 0; i < INDEX_SIZE; i++) {
            SolmateERC20(assets[i]).safeTransfer(receiver, assetAmounts[i]);
        }
    }

    // MODIFIERS
    // ------------------------------------------------------------------------------------------

    /// @dev To be implemented by inheriting contracts to restrict certain functions to a configurator role.
    function _onlyConfigurator() internal override onlyConfigurator { }

    /// @dev To be implemented by inheriting contracts to validate the caller's authorization for execute calls.
    function _validateExecuteCallAuth() internal override onlyRole(KEEPER_ROLE) { }

    /// @dev Ensures the caller is permissioned to swap.
    function _onlySwapIssuer() internal override onlyRole(SWAP_KEEPER) { }
}
