pragma solidity 0.8.17;

import { AggregateVaultStorage } from "../storage/AggregateVaultStorage.sol";
import { BaseHandler } from "../BaseHandler.sol";
import { GMI } from "../index/GMI.sol";
import { Pricing } from "../libraries/Pricing.sol";
import { LibAggregateVaultUtils } from "../libraries/LibAggregateVaultUtils.sol";
import { TOKEN_USDC_NATIVE, TOKEN_WETH } from "../constants.sol";
import { ERC20 } from "solmate/tokens/ERC20.sol";
import { OracleWrapper } from "../peripheral/OracleWrapper.sol";
import { IPositionManager } from "../interfaces/IPositionManager.sol";
import { PriceCast } from "../libraries/PriceCast.sol";
import { SafeCast } from "../libraries/SafeCast.sol";
import { NettedPositionTracker } from "../libraries/NettedPositionTracker.sol";
import { Delegatecall } from "../libraries/Delegatecall.sol";
import { Solarray } from "../libraries/Solarray.sol";
import { GmxStorage } from "../libraries/GmxStorage.sol";
import { SafeTransferLib } from "solmate/utils/SafeTransferLib.sol";
import { ISwapManager } from "../interfaces/ISwapManager.sol";
import { LibCycle } from "../libraries/LibCycle.sol";
import { GlobalACL, Auth } from "../Auth.sol";

using SafeCast for uint256;
using SafeCast for int256;
using PriceCast for uint256;
using Delegatecall for address;
using Solarray for uint256[2];
using SafeTransferLib for ERC20;

/// @title AggregateVaultViews
/// @author Umami Devs
/// @notice A contract providing view functions for AggregateVaultStorage data.
contract AggregateVaultViews is AggregateVaultStorage {
    /// @notice Returns the array of AssetVaultEntry structs.
    function getAssetVaultEntries() public view returns (AssetVaultStorage[2] memory _assetVaultEntry) {
        _assetVaultEntry = _getStorage().vaults;
    }

    /// @notice Returns the index of a token in the asset vault array.
    /// @param _token The address of the token.
    function tokenToAssetVaultIndex(address _token) public view returns (uint256 _idx) {
        _idx = _getTokenToAssetVaultIndex()[_token];
    }

    /// @notice Returns the index of a vault in the asset vault array.
    /// @param _vault The address of the vault.
    function vaultToAssetVaultIndex(address _vault) public view returns (uint256 _idx) {
        _idx = _getVaultToAssetVaultIndex()[_vault];
    }

    /// @notice Returns the current vault state.
    function getVaultState() public view returns (VaultState memory _vaultState) {
        _vaultState = _getVaultState();
    }

    /// @notice Returns the current rebalance state.
    function getRebalanceState() public view returns (RebalanceState memory _rebalanceState) {
        _rebalanceState = _getRebalanceState();
    }

    /// @notice Returns the current GMI attribution for each asset vault.
    function getVaultGmiAttribution() public view returns (uint256[2] memory _gmiAttribution) {
        _gmiAttribution = _getStorage().vaultGmiAttribution;
    }

    /// @notice Returns the last netted price for a given epoch.
    /// @param _epoch The epoch for which to retrieve the netted price.
    function getLastNettedPrice(uint256 _epoch) public view returns (int256[2] memory _nettedPrices) {
        _nettedPrices = _getNettedPrices(_epoch);
    }

    /// @notice Returns the array of position managers.
    function getPositionManagers() public view returns (IPositionManager[] memory _positionManagers) {
        _positionManagers = _getPositionManagers();
    }

    /// @notice Returns the array of netted positions.
    function getNettedPositions() public view returns (int256[2][2] memory _nettedPositions) {
        _nettedPositions = _getStorage().nettedPositions;
    }

    /// @notice Returns the array of active external positions.
    function getActiveExternalPosition() public view returns (int256 _activeExternalPosition) {
        _activeExternalPosition = _getStorage().externalPosition;
    }
}

/// @title AggregateVaultHelper
/// @author Umami Devs
/// @notice A contract that constains extended logic of the AggregateVault. Common storage layout is used with delegate calls.
contract AggregateVaultHelper is AggregateVaultStorage, AggregateVaultViews, BaseHandler, GlobalACL {
    constructor(Auth _auth) GlobalACL(_auth) { }

    /**
     * @notice Gets the current asset vault price per share (PPS)
     * @param _vault The address of the asset vault
     * @param isDeposit if the pricing is for a deposit or withdrawal
     * @param useLlo should use the LLO price
     * @return - The price per share of the asset vault
     */
    function getVaultPPS(address _vault, bool isDeposit, bool useLlo) external onlyDelegateCall returns (uint256) {
        VaultState memory vaultState = _getVaultState();
        uint256 index = vaultToAssetVaultIndex(_vault);
        if (vaultState.rebalanceOpen) return vaultState.rebalancePPS[index];

        AssetVaultStorage storage vault = _getStorage().vaults[index];
        uint256 vaultSupply = ERC20(vault.vault).totalSupply();
        uint256 decimals = _vaultDecimals(index);
        uint256 oneToken = 10 ** decimals;

        if (vaultSupply == 0) return oneToken;

        uint256 nativeTokenBalance = ERC20(vault.token).balanceOf(address(this));
        uint256 gmiUsd = useLlo ? _vaultGmiBalanceUsd(index) : _vaultGmiBalanceUsdChainlink(index); // 18 decimal

        uint256 vaultTokenPrice = useLlo ? _vaultTokenPrice(index) : _vaultTokenPriceChainlink(index);
        uint256 gmiToVaultToken = gmiUsd * 1e12 / vaultTokenPrice;

        uint256 positionMargin =
            _getAssetVaultHedgesInNativeToken(index, vaultTokenPrice.toInternalPrice(decimals), decimals);

        uint256 totalBalance = nativeTokenBalance + gmiToVaultToken + positionMargin;
        return isDeposit
            ? (totalBalance * oneToken + vaultSupply - 1) / vaultSupply
            : totalBalance * oneToken / vaultSupply;
    }

    /**
     * @notice Gets the current asset vault Total Value Locked (TVL)
     * @dev TVL of the vaults may not equal PPS * totalSupply due to precision loss
     * @param _vault The address of the asset vault
     * @param useLlo should use the LLO price
     * @return - The total value locked in the asset vault
     */
    function getVaultTVL(address _vault, bool useLlo) external onlyDelegateCall returns (uint256) {
        uint256 index = vaultToAssetVaultIndex(_vault);
        uint256 decimals = _vaultDecimals(index);
        if (_getStorage().vaultState.rebalanceOpen) {
            uint256 totalSupply = ERC20(_vault).totalSupply();
            return _getStorage().vaultState.rebalancePPS[index] * totalSupply / 10 ** decimals;
        }

        AssetVaultStorage storage vault = _getStorage().vaults[index];
        uint256 gmiUsd = useLlo ? _vaultGmiBalanceUsd(index) : _vaultGmiBalanceUsdChainlink(index); // 18 decimals

        uint256 vaultTokenPrice = useLlo ? _vaultTokenPrice(index) : _vaultTokenPriceChainlink(index);

        uint256 positionMargin =
            _getAssetVaultHedgesInNativeToken(index, vaultTokenPrice.toInternalPrice(decimals), decimals);

        uint256 gmiToVaultToken = gmiUsd * 1e12 / vaultTokenPrice;
        uint256 nativeTokenBalance = ERC20(vault.token).balanceOf(address(this));
        return nativeTokenBalance + gmiToVaultToken + positionMargin;
    }

    /**
     * @notice Gets the current asset vault price per share (PPS). This function can be used to
     * get the PPS according to an off chain price set.
     * @param _vault The address of the asset vault
     * @param isDeposit if the pricing is for a deposit or withdrawal
     * @param prices The prices of the markets in GMI. This array is ordered in the same sequence
     * as the GMI index assets. To get the ordering of prices call GMI.indexAssets()
     * @param max Should the max or min price be used.
     * @return - The price per share of the asset vault
     */
    function getVaultPPSWithPrices(address _vault, bool isDeposit, GmxStorage.MarketPrices[] memory prices, bool max)
        external
        onlyDelegateCall
        returns (uint256)
    {
        uint256 index = vaultToAssetVaultIndex(_vault);
        AssetVaultStorage storage vault = _getStorage().vaults[index];
        uint256 vaultSupply = ERC20(vault.vault).totalSupply();
        uint256 decimals = _vaultDecimals(index);
        uint256 oneToken = 10 ** decimals;
        if (vaultSupply == 0) return oneToken;
        uint256 gmiUsd;
        uint256 vaultTokenPrice;
        {
            uint256 ethPrice = max ? prices[0].longTokenPrice.max : prices[0].longTokenPrice.min;
            uint256 usdcPrice = max ? prices[0].shortTokenPrice.max : prices[0].shortTokenPrice.min;
            uint256 gmiPPS = GMI(_getStorage().gmi).pps(prices);
            uint256 gmiBalance = LibAggregateVaultUtils.getVaultGmiWithPrices(
                index,
                _getVaultState().epoch,
                gmiPPS,
                Solarray.int256s(usdcPrice.toInternalPrice(6).toInt256(), ethPrice.toInternalPrice(18).toInt256())
            );
            gmiUsd = gmiPPS * gmiBalance / 1e18;
            vaultTokenPrice = vault.token == TOKEN_USDC_NATIVE ? usdcPrice : ethPrice;
        }
        uint256 gmiToVaultToken = gmiUsd * 1e12 / vaultTokenPrice;
        uint256 positionMargin =
            _getAssetVaultHedgesInNativeToken(index, vaultTokenPrice.toInternalPrice(decimals), decimals);
        uint256 totalBalance = ERC20(vault.token).balanceOf(address(this)) + gmiToVaultToken + positionMargin;
        return isDeposit
            ? (totalBalance * oneToken + vaultSupply - 1) / vaultSupply
            : totalBalance * oneToken / vaultSupply;
    }

    /**
     * @notice Gets the current asset vault Total Value Locked (TVL). This function can be used to
     * get the TVL according to an off chain price set.
     * @dev TVL of the vaults may not equal PPS * totalSupply due to precision loss.
     * @param _vault The address of the asset vault
     * @param prices The prices of the markets in GMI. This array is ordered in the same sequence
     * as the GMI index assets. To get the ordering of prices call GMI.indexAssets()
     * @param max Should the max or min price be used.
     * @return - The total value locked in the asset vault
     */
    function getVaultTVLWithPrices(address _vault, GmxStorage.MarketPrices[] memory prices, bool max)
        external
        onlyDelegateCall
        returns (uint256)
    {
        uint256 index = vaultToAssetVaultIndex(_vault);
        uint256 decimals = _vaultDecimals(index);
        AssetVaultStorage storage vault = _getStorage().vaults[index];
        uint256 ethPrice = max ? prices[0].longTokenPrice.max : prices[0].longTokenPrice.min;
        uint256 usdcPrice = max ? prices[0].shortTokenPrice.max : prices[0].shortTokenPrice.min;
        uint256 gmiPPS = GMI(_getStorage().gmi).pps(prices);
        uint256 gmiBalance = LibAggregateVaultUtils.getVaultGmiWithPrices(
            index,
            _getVaultState().epoch,
            gmiPPS,
            Solarray.int256s(usdcPrice.toInternalPrice(6).toInt256(), ethPrice.toInternalPrice(18).toInt256())
        );
        uint256 gmiUsd = gmiPPS * gmiBalance / 1e18;
        uint256 vaultTokenPrice = vault.token == TOKEN_USDC_NATIVE ? usdcPrice : ethPrice;
        uint256 positionMargin =
            _getAssetVaultHedgesInNativeToken(index, vaultTokenPrice.toInternalPrice(decimals), decimals);

        uint256 gmiToVaultToken = gmiUsd * 1e12 / vaultTokenPrice;
        uint256 nativeTokenBalance = ERC20(vault.token).balanceOf(address(this));
        return nativeTokenBalance + gmiToVaultToken + positionMargin;
    }

    /**
     * @notice Gets the current GMI for all vaults
     * @return gmiAmounts An array containing the GMI for each vault
     */
    function getVaultGmi(uint256 currentEpoch, bool useLlo) public view returns (uint256[2] memory gmiAmounts) {
        return _getVaultsGmi(currentEpoch, useLlo);
    }

    /**
     * @notice Gets the current GMI in $ with 1e18 decimals for all vaults
     * @return - An array containing the GMI dollars for each vault
     */
    function getVaultsGmiValue(uint256 currentEpoch, bool useLlo)
        external
        view
        onlyDelegateCall
        returns (uint256[2] memory)
    {
        return _getVaultsGmiInUsd(currentEpoch, useLlo);
    }

    /**
     * @notice Gets the current GMI in $ with 1e18 decimals for all vaults using an off chain price
     * @param prices The prices of the markets in GMI. This array is ordered in the same sequence
     * as the GMI index assets. To get the ordering of prices call GMI.indexAssets()
     * @param max Should the max or min price be used.
     * @return gmiUsdAmounts An array containing the GMI dollars for each vault
     */
    function getVaultsGmiValueWithPrices(GmxStorage.MarketPrices[] memory prices, bool max)
        external
        view
        onlyDelegateCall
        returns (uint256[2] memory gmiUsdAmounts)
    {
        uint256 currentEpoch = _getVaultState().epoch;
        uint256 ethPrice = max ? prices[0].longTokenPrice.max : prices[0].longTokenPrice.min;
        uint256 usdcPrice = max ? prices[0].shortTokenPrice.max : prices[0].shortTokenPrice.min;
        uint256 gmiPPS = GMI(_getStorage().gmi).pps(prices);
        gmiUsdAmounts = [
            LibAggregateVaultUtils.getVaultGmiWithPrices(
                0,
                currentEpoch,
                gmiPPS,
                Solarray.int256s(usdcPrice.toInternalPrice(6).toInt256(), ethPrice.toInternalPrice(18).toInt256())
            ),
            LibAggregateVaultUtils.getVaultGmiWithPrices(
                1,
                currentEpoch,
                gmiPPS,
                Solarray.int256s(usdcPrice.toInternalPrice(6).toInt256(), ethPrice.toInternalPrice(18).toInt256())
            )
        ];
        gmiUsdAmounts[0] = gmiUsdAmounts[0] * gmiPPS / 1e18;
        gmiUsdAmounts[1] = gmiUsdAmounts[1] * gmiPPS / 1e18;
    }

    // CYCLE
    // ------------------------------------------------------------------------------------------

    /**
     * @notice Cycles the vaults, this settles internal position pnl,
     * and rebalances GMI held by each vault to the target amounts set in `openRebalancePeriod(...)`
     * @param shouldRebalanceGmi Whether the GMI amounts should be rebalanced this cycle. Flag set in keeper
     */
    function cycle(bool shouldRebalanceGmi)
        external
        onlyDelegateCall
        returns (LibCycle.GMIMintRequest[2] memory, LibCycle.GMIBurnRequest[2] memory)
    {
        require(getVaultState().rebalanceOpen, "!rebalanceOpen");
        return LibCycle.cycle(shouldRebalanceGmi);
    }

    /**
     * @notice Fulfills the requests made in `cycle(...)`. This is called after the GMX keeper has executed requests
     */
    function fulfilRequests() external onlyDelegateCall {
        require(getVaultState().rebalanceOpen, "!rebalanceOpen");
        LibCycle.fulfilRequests();
    }

    /// @dev for recovering from a failed cycle
    function rebalanceGmi(uint256[2] memory _previous, uint256[2] memory _new)
        external
        onlyDelegateCall
        returns (LibCycle.GMIMintRequest[2] memory _mintRequests, LibCycle.GMIBurnRequest[2] memory _burnRequests)
    {
        uint256 gmiPrice = Pricing.getIndexPps(_getStorage().oracleWrapper, GMI(_getStorage().gmi));
        (_mintRequests, _burnRequests) = LibCycle.rebalanceGmi(_previous, _new, gmiPrice);
    }

    /// @notice for setting the netted positions via config to recover
    function setNettedPositions(int256[2][2] memory nettedPositions, int256 externalPosition)
        public
        onlyDelegateCall
        onlyConfigurator
    {
        _setPositions(nettedPositions, externalPosition);
    }

    /// @notice for setting the Gmi Attribution via config to recover
    function setVaultGmiAttribution(uint256[2] memory _gmiAttribution) external onlyDelegateCall onlyConfigurator {
        _getStorage().vaultGmiAttribution = _gmiAttribution;
    }

    /// @notice for setting the last netted prices via config to recover
    function setLastNettedPrices(uint256 epoch, int256[2] memory _nettedPrices)
        external
        onlyDelegateCall
        onlyConfigurator
    {
        _getStorage().lastNettedPrices[epoch] = _nettedPrices;
    }

    /// @notice for setting the epoch via config to recover
    function setEpoch(uint256 epoch) external onlyDelegateCall onlyConfigurator {
        _getStorage().vaultState.epoch = epoch;
    }

    /// @notice to clear stale requests
    function clearMintBurnRequests(uint256 start, uint256 end) external onlyDelegateCall onlyConfigurator {
        for (uint256 i = start; i <= end; i++) {
            LibCycle.clearMintBurnRequestForEpoch(i);
        }
    }

    /// @notice set slippage tolerance for swaps
    function setSwapSlippageTolerance(uint256 _slippage) external onlyDelegateCall onlyConfigurator {
        _getStorage().swapSlippage = _slippage;
    }

    // INTERNAL GETTERS
    // ------------------------------------------------------------------------------------------

    /**
     * @notice Gets the breakdown of the asset vault TVL
     * @param _assetVault The address of the asset vault
     * @param _useLlo Should use chainlink llo.
     * @return _total The total TVL in the asset vault
     * @return _buffer The buffer portion of the TVL
     * @return _gmi The GMI portion of the TVL
     * @return _hedges The hedge portion of the TVL
     */
    function getVaultTVLBreakdown(address _assetVault, bool _useLlo)
        public
        onlyDelegateCall
        returns (uint256 _total, uint256 _buffer, uint256 _gmi, uint256 _hedges)
    {
        (_total, _buffer, _gmi, _hedges) =
            _getAssetVaultTvl(_getAssetVaultEntry(vaultToAssetVaultIndex(_assetVault)), _useLlo);
    }

    // INTERNAL GETTERS
    // ------------------------------------------------------------------------------------------

    /**
     * @notice Get the total value locked (TVL) for a specific AssetVaultEntry.
     * @param _assetVault The AssetVaultEntry to get the TVL for.
     * @param _useLlo Should use chainlink llo.
     * @return _totalTvl The total TVL for the AssetVaultEntry.
     * @return _bufferTvl The TVL held in the buffer for the AssetVaultEntry.
     * @return _gmiTvl The TVL held in the glp for the AssetVaultEntry.
     * @return _hedgesTvl The TVL held in hedges for the AssetVaultEntry.
     */
    function _getAssetVaultTvl(AssetVaultStorage storage _assetVault, bool _useLlo)
        internal
        returns (uint256 _totalTvl, uint256 _bufferTvl, uint256 _gmiTvl, uint256 _hedgesTvl)
    {
        uint256 index = vaultToAssetVaultIndex(_assetVault.vault);
        _bufferTvl = ERC20(_assetVault.token).balanceOf(address(this));
        uint256 vaultTokenPrice = _useLlo ? _vaultTokenPrice(index) : _vaultTokenPriceChainlink(index);
        uint256 decimals = _vaultDecimals(index);
        _gmiTvl = _useLlo ? _vaultGmiBalanceUsd(index) : _vaultGmiBalanceUsdChainlink(index); // 18 decimals
        _gmiTvl = _gmiTvl * 1e12 / vaultTokenPrice;

        _hedgesTvl = _getAssetVaultHedgesInNativeToken(index, vaultTokenPrice.toInternalPrice(decimals), decimals);
        _totalTvl = _bufferTvl + _gmiTvl + _hedgesTvl;
    }

    /**
     * @notice Get the hedges value in native token for a specific vault index.
     * @param _vaultIdx The index of the vault to get the hedges value for.
     * @return _hedgesToken The hedges value in native token for the specified vault index.
     */
    function _getAssetVaultHedgesInNativeToken(uint256 _vaultIdx, uint256 tokenPrice, uint256 tokenDecimals)
        internal
        returns (uint256 _hedgesToken)
    {
        uint256 hedgesUsd = _getAssetVaultHedgeInUsd(_vaultIdx);
        _hedgesToken = (hedgesUsd * (10 ** tokenDecimals)) / tokenPrice;
    }

    /**
     * @notice Get the hedges value in USD for a specific vault index.
     * @param _vaultIdx The index of the vault to get the hedges value for.
     * @return _hedgesUsd The hedges value in USD for the specified vault index.
     */
    function _getAssetVaultHedgeInUsd(uint256 _vaultIdx) internal returns (uint256 _hedgesUsd) {
        AVStorage storage stg = _getStorage();
        uint256 positionMargin;

        /// @dev here we assume all margin belongs to one vault
        if (stg.externalPosition > 0 && _vaultIdx == 0) {
            (positionMargin,) = _getTotalMargin(TOKEN_WETH);
            return positionMargin * 1e18 / 1e30;
        } else if (stg.externalPosition < 0 && _vaultIdx == 1) {
            (positionMargin,) = _getTotalMargin(TOKEN_WETH);
            return positionMargin * 1e18 / 1e30;
        } else {
            return 0;
        }
    }

    /**
     * @notice Get the total margin value for a specific token.
     * @param _token The address of the token to get the total margin value for.
     * @return _totalMargin The total margin value for the specified token.
     */
    function _getTotalMargin(address _token) internal returns (uint256 _totalMargin, bool _isLong) {
        IPositionManager[] storage positionManagers = _getPositionManagers();
        uint256 length = positionManagers.length;

        bool unset = true;
        _isLong = false;

        for (uint256 i = 0; i < length; ++i) {
            bytes memory ret =
                address(positionManagers[i]).delegateCall(abi.encodeWithSignature("positionMargin(address)", _token));
            (uint256 margin, bool isLong_) = abi.decode(ret, (uint256, bool));
            if (margin > 0) {
                if (unset) {
                    _isLong = isLong_;
                    unset = false;
                } else {
                    require(_isLong == isLong_, "AggregateVaultHelper: mixed long/short");
                }
            }
            _totalMargin += margin;
        }
    }

    /**
     * @notice Get the total notional value for a specific token.
     * @param _token The address of the token to get the total notional value for.
     * @return _totalNotional The total notional value for the specified token.
     */
    function getTotalNotional(address _token) public returns (uint256 _totalNotional, bool _isLong) {
        IPositionManager[] storage positionManagers = _getPositionManagers();
        uint256 length = positionManagers.length;

        bool unset = true;
        _isLong = false;

        for (uint256 i = 0; i < length; ++i) {
            bytes memory ret =
                address(positionManagers[i]).delegateCall(abi.encodeWithSignature("positionNotional(address)", _token));
            (uint256 notional, bool isLong_) = abi.decode(ret, (uint256, bool));
            if (notional > 0) {
                if (unset) {
                    _isLong = isLong_;
                    unset = false;
                } else {
                    require(_isLong == isLong_, "AggregateVaultHelper: mixed long/short");
                }
            }

            _totalNotional += notional;
        }
    }

    /// @dev calls the library logic to get the gmi in dollars held by vaults, uses the LLO
    function _vaultGmiBalanceUsd(uint256 _idx) internal view returns (uint256) {
        uint256 pps = Pricing.getIndexPps(_getStorage().oracleWrapper, GMI(_getStorage().gmi));
        uint256 gmiBalance = LibAggregateVaultUtils.getVaultGmi(_idx, _getVaultState().epoch, true);
        return pps * gmiBalance / 1e18;
    }

    /// @dev calls the library logic to get the gmi in dollars held by vaults, uses the onchain prices
    function _vaultGmiBalanceUsdChainlink(uint256 _idx) internal view returns (uint256) {
        uint256 pps = Pricing.getIndexPpsChainlink(_getStorage().oracleWrapper, GMI(_getStorage().gmi));
        uint256 gmiBalance = LibAggregateVaultUtils.getVaultGmi(_idx, _getVaultState().epoch, false);
        return pps * gmiBalance / 1e18;
    }

    /**
     * @notice Calculates the GMI amount owned by a vault in USD at a given epoch.
     * @param currentEpoch The epoch number.
     * @param useLlo Should use chainlink llo.
     * @return gmiUsdAmounts The amount of GMI in usd owned by the vault.
     */
    function _getVaultsGmiInUsd(uint256 currentEpoch, bool useLlo)
        internal
        view
        returns (uint256[2] memory gmiUsdAmounts)
    {
        gmiUsdAmounts = [
            LibAggregateVaultUtils.getVaultGmi(0, currentEpoch, useLlo),
            LibAggregateVaultUtils.getVaultGmi(1, currentEpoch, useLlo)
        ];
        uint256 pps = useLlo
            ? Pricing.getIndexPps(_getStorage().oracleWrapper, GMI(_getStorage().gmi))
            : Pricing.getIndexPpsChainlink(_getStorage().oracleWrapper, GMI(_getStorage().gmi));
        gmiUsdAmounts[0] = gmiUsdAmounts[0] * pps / 1e18;
        gmiUsdAmounts[1] = gmiUsdAmounts[1] * pps / 1e18;
    }

    /**
     * @notice Calculates the GMI amount owned by a vault at a given epoch.
     * @param currentEpoch The epoch number.
     * @param useLlo Should use chainlink llo.
     * @return gmiAmounts The amount of GLP owned by the vault.
     */
    function _getVaultsGmi(uint256 currentEpoch, bool useLlo) internal view returns (uint256[2] memory gmiAmounts) {
        return LibAggregateVaultUtils.getVaultsGmi(currentEpoch, useLlo);
    }

    /// @notice gets the vault token price from the vault index
    function _vaultTokenPrice(uint256 _idx) internal view returns (uint256) {
        address token = _getStorage().vaults[_idx].token;
        address oracle = _getStorage().oracleWrapper;

        if (token == TOKEN_USDC_NATIVE) {
            return OracleWrapper(oracle).getChainlinkPrice(token);
        } else {
            return OracleWrapper(oracle).getLloPriceWithinL1Blocks(token);
        }
    }

    /// @notice gets the vault token price from the vault index, using the onchain price
    function _vaultTokenPriceChainlink(uint256 _idx) internal view returns (uint256) {
        address token = _getStorage().vaults[_idx].token;
        address oracle = _getStorage().oracleWrapper;
        return OracleWrapper(oracle).getChainlinkPrice(token);
    }

    /// @notice gets the vault token decimals
    function _vaultDecimals(uint256 _idx) internal view returns (uint256) {
        address token = _getStorage().vaults[_idx].token;
        return token == TOKEN_USDC_NATIVE ? 6 : 18;
    }

    /// @dev for callbacks
    function callbackSigs() external pure returns (bytes4[] memory) {
        bytes4[] memory sigs = new bytes4[](0);
        return sigs;
    }
}
