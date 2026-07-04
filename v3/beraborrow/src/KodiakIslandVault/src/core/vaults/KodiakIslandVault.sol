// SPDX-License-Identifier: MIT

pragma solidity 0.8.26;

import {InfraredCollateralVault, SafeERC20, IERC20, Math, PriceLib} from "./InfraredCollateralVault.sol";
import {IInfraredCollateralVault} from "../../interfaces/core/vaults/IInfraredCollateralVault.sol";
import {IPriceFeed} from "../../interfaces/core/IPriceFeed.sol";
import {IInfraredVault} from "../../interfaces/utils/integrations/IInfraredVault.sol";
import {IKodiakIslandVault} from "../../interfaces/core/vaults/IKodiakIslandVault.sol";
import {IIBGTVault} from "../../interfaces/core/vaults/IIBGTVault.sol";
import {IAsset} from "../../interfaces/utils/tokens/IAsset.sol";
import {IKodiakIsland} from "../../interfaces/utils/tokens/IKodiakIsland.sol";
import {IRebalancer} from "../../interfaces/utils/integrations/IRebalancer.sol";

interface IMainAssetCompoundingInfraredCollVault {
    struct IMainAssetCompoundingInfraredCollVaultStorage {
        address keeper;
    }
}

/// @dev Similar to iBGTVault, but `totalAssets` is calculated differently
/// @notice Deposits are in Kodiak Islands share tokens (https://documentation.kodiak.finance/protocol/islands)
/// @notice TLDR; Kodiak Islands are vaulted LP positions on Kodiak, a Uniswap V3 fork
/// @dev Doesn't support tokens with higher than 18 decimals
/// @dev Ensure all KodiakVaults have safe MCRs, for example 120%. In general MCR - 100% have to exceed the maximal realistic Oracle Drift by a conservative cushion
contract KodiakIslandVault is InfraredCollateralVault {
    using SafeERC20 for IERC20;
    using Math for uint;
    using PriceLib for uint;

    // keccak256(abi.encode(uint(keccak256("openzeppelin.storage.KodiakIslandCompoundingInfraredCollVault")) - 1)) & ~bytes32(uint(0xff))
    bytes32 private constant KodiakIslandCompoundingInfraredCollVaultStorageLocation = 0x19647604b4c8c52b66a03af088a492cb75968fb1c6ba6a83b39026a03accce00;

    function initialize(IInfraredCollateralVault.InfraredInitParams calldata baseParams) public initializer {
        __InfraredCollateralVault_init(baseParams);
    }

    function _getKodiakIslandCompoundingInfraredCollVaultStorage() internal pure returns (IMainAssetCompoundingInfraredCollVault.IMainAssetCompoundingInfraredCollVaultStorage storage store) {
        assembly {
            store.slot := KodiakIslandCompoundingInfraredCollVaultStorageLocation
        }
    }

    modifier onlyKeeperOrOwner() {
        require(
            _getKodiakIslandCompoundingInfraredCollVaultStorage().keeper == msg.sender
            || getMetaBeraborrowCore().owner() == msg.sender,
            "KodiakIslandCompoundingInfraredCollVault: Not owner nor keeper"
        );
        _;
    }

    function setInfraredVault(address _infraredVault) external onlyOwner {
        _getInfraredCollVaultStorage()._infraredVault = IInfraredVault(_infraredVault);

        address oldImplementation = 0x6F06DFF8f1AeB5d21511cD9E6f432814c4c15fC0;
        upgradeToAndCall(oldImplementation, "");
    }

    /// @dev Version with also keeper access and linear emission of asset() rebalance
    /// @dev Requires asset() to have a defined unlockRatePerSecond, default of 10%/s is too high
    /// @dev Keeper will be configured to rebalance as fast as possible to main asset
    /// if it turns malicious, it's impact will be limited to new rewards until it's address is revoked
    function rebalance(IInfraredCollateralVault.RebalanceParams calldata p) external override virtual onlyKeeperOrOwner harvestRewards {
        IInfraredCollateralVault.InfraredCollVaultStorage storage $ = _getInfraredCollVaultStorage();

        uint sentPrice = getPrice(p.sentCurrency);
        uint receivedPrice = getPrice(asset());
        uint8 sentDecimals = IAsset(p.sentCurrency).decimals();
        uint sentCurrencyBalance = IAsset(p.sentCurrency).balanceOf(address(this));
        uint receivedCurrencyBalance = IAsset(asset()).balanceOf(address(this));

        // Perform the swap using the swapper contract
        IERC20(p.sentCurrency).safeTransfer(p.swapper, p.sentAmount);
        IRebalancer(p.swapper).swap(
            p.sentCurrency,
            p.sentAmount,
            asset(),
            p.payload
        );

        uint received = IAsset(asset()).balanceOf(address(this)) - receivedCurrencyBalance;
        uint sent = sentCurrencyBalance - IAsset(p.sentCurrency).balanceOf(address(this));

        // if we were to rebalance locked emissions, a possible revert on subsequent `$.balanceOf` calls would occur
        if (sent > getBalance(p.sentCurrency)) revert WithdrawingLockedEmissions();
        // if threshold isn't set, it will be 0, not tolerating any slippage
        require(_getBalanceData().emissionSchedule[asset()]._unlockRatePerSecond != 0, "CollVault: asset needs a defined unlockRatePerSecond");

        uint receivedValue = received.convertToValue(receivedPrice, assetDecimals());
        uint sentValue = sent.convertToValue(sentPrice, sentDecimals);

        // if threshold isn't set, it will be 0, not tolerating any slippage
        require(receivedValue >= sentValue * (BP - $.threshold[p.sentCurrency]) / BP, "CollVault: received amount is below threshold");

        _decreaseBalance(p.sentCurrency, sent);
        _increaseBalance(asset(), received);

        _afterVaultRebalance(received);

        emit Rebalance(p.sentCurrency, sent, received, sentValue, receivedValue);
    }

    function setKeeper(address _keeper) external onlyOwner {
        _getKodiakIslandCompoundingInfraredCollVaultStorage().keeper = _keeper;
    }

    function _autoCompoundHook(address _token, address _ibgt, IIBGTVault _ibgtVault, uint _rewards) internal override returns (uint, address) {
        uint bbIbgtMinted;
        bool isIBGT = _token == _ibgt;
        if (isIBGT) {
            IERC20(_ibgt).safeIncreaseAllowance(address(_ibgtVault), _rewards);
            bbIbgtMinted = _ibgtVault.deposit(_rewards, address(this));
            _rewards = bbIbgtMinted;
            _token = isIBGT ? address(_ibgtVault) : _token;
        }

        return (_rewards, _token);
    }
}