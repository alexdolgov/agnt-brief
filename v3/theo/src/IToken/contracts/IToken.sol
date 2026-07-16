// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

import {IIToken} from "./interfaces/IIToken.sol";
import {ITToken} from "./interfaces/ITToken.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {BaseUpgradeable} from "./BaseUpgradeable.sol";
import {ERC4626UpgradeableMultiAsset, IERC4626MultiAsset} from "./vaults/ERC4626UpgradeableMultiAsset.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {AccessControlUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import {IERC165} from "@openzeppelin/contracts/utils/introspection/IERC165.sol";
import {ERC165Checker} from "@openzeppelin/contracts/utils/introspection/ERC165Checker.sol";

/**
 * @notice  Index Token for a collection of TTokens and other ITokens
 * @dev     If other ERC4626 vaults are used, they must all be able to be priced in terms of the underlying asset of the iToken.
 */

contract IToken is ERC4626UpgradeableMultiAsset, BaseUpgradeable, IIToken {
    using SafeERC20 for IERC20;
    using Math for uint256;

    /// @notice Config for IToken
    ITokenParams public config;

    function initialize(
        string memory _name,
        string memory _symbol,
        IERC20 _baseAsset,
        address[] calldata _depositAssets,
        ITokenParams calldata _config
    ) public onlyProxy initializer checkAssetList(_depositAssets) {
        __ERC20_init(_name, _symbol);
        __ERC4626MultiAsset_init(_baseAsset, _depositAssets);
        __BaseUpgradable_init();

        _checkITokenConfig(_config);
        config = _config;
    }

    /// @notice modifier to check that the ratio of each asset is within the allowed deviation
    modifier checkRatio() {
        if (!config.enforcedRatio) {
            // if ratio is not enforced, skip check
            _;
            return;
        }

        uint256 assetsLength = config.assetRatiosBps.length;

        // state before operation
        (, , uint256[] memory depositAssetValuesBefore, uint256 totalValueBefore) = totalDepositAssets();
        uint256[] memory ratiosBefore = new uint256[](assetsLength);

        // get ratio before in basis points
        for (uint256 i = 0; i < assetsLength; i++) {
            ratiosBefore[i] = depositAssetValuesBefore[i].mulDiv(10000, totalValueBefore + 1);
        }

        _; // execute operation

        // state after operation
        (, , uint256[] memory depositAssetValuesAfter, uint256 totalValueAfter) = totalDepositAssets();

        // go through each asset and check ratio
        for (uint256 i = 0; i < assetsLength; i++) {
            uint256 currentRatioBps = depositAssetValuesAfter[i].mulDiv(10000, totalValueAfter + 1);
            uint256 targetRatioBps = uint256(config.assetRatiosBps[i]);

            // check if within target
            bool outsideTarget = currentRatioBps > targetRatioBps + config.maxDeviationBps || currentRatioBps < targetRatioBps - config.maxDeviationBps;

            if (outsideTarget) {
                // only allowed if moved in the right direction from a previous bad state
                bool movedInRightDirection = false;

                if (currentRatioBps > ratiosBefore[i]) {
                    // ratio increased
                    // check that the ratio before was less than target and it didn't move too high
                    movedInRightDirection = ratiosBefore[i] < targetRatioBps && currentRatioBps <= targetRatioBps + config.maxDeviationBps;
                } else if (currentRatioBps < ratiosBefore[i]) {
                    // ratio decreased
                    // check that the ratio before was too high and it didn't move too low
                    movedInRightDirection = ratiosBefore[i] > targetRatioBps && currentRatioBps >= targetRatioBps - config.maxDeviationBps;
                }
                // if same, then it didn't move, so not in the right direction
                if (!movedInRightDirection) {
                    revert ErrorBadAssetRatio();
                }
            }
        }
    }

    /// @notice ensure that all assets are TTokens or ITokens and can be priced in terms of the underlying assest of this vault
    modifier checkAssetList(address[] calldata assetList) {
        // allow for initialize to be setup before checking list so "asset()" is set
        _;
        for (uint256 i = 0; i < assetList.length; i++) {
            address depositAsset = assetList[i];
            if (depositAsset == address(0) || depositAsset == address(this)) {
                revert ErrorInvalidDepositAsset(depositAsset);
            }
            if (ERC165Checker.supportsInterface(depositAsset, type(IIToken).interfaceId)) {
                // if IToken, ensure underlying asset is the same
                if (IIToken(depositAsset).asset() != asset()) {
                    revert ErrorInvalidDepositAsset(depositAsset);
                }
            } else if (ERC165Checker.supportsInterface(depositAsset, type(ITToken).interfaceId)) {
                // if TToken, ensure escrow asset is the same as this contract's asset (since sharesToEscrowAssets will be called for conversion)
                ITToken.TTokenParams memory tTokenParams = ITToken(depositAsset).getTTokenParams();
                if (tTokenParams.escrowAsset != asset()) {
                    revert ErrorInvalidDepositAsset(depositAsset);
                }
            } else {
                // doesn't support either interface
                revert ErrorInvalidDepositAsset(depositAsset);
            }
        }
    }

    /// @notice makes sure at least min shares are left in contract after function
    modifier checkMinShares() {
        _;
        uint256 _totalSupply = totalSupply();
        if (_totalSupply > 0 && _totalSupply < config.minShares) revert ErrorMinShares();
    }

    constructor() {}

    /**
     * @dev override ERC4626MultiAsset deposit function to check for ratio
     * @dev not overriding mint, since users would be blocked if asset prices change internal ratio
     */
    function deposit(
        address[] calldata depositAssets,
        uint256[] calldata assetAmounts,
        address receiver
    ) public override(ERC4626UpgradeableMultiAsset, IERC4626MultiAsset) checkRatio returns (uint256) {
        return super.deposit(depositAssets, assetAmounts, receiver);
    }

    /**
     * @dev override ERC4626MultiAsset _deposit to check for minShares
     */
    function _deposit(address caller, address receiver, address[] memory assets, uint256[] memory amounts, uint256 shares) internal override checkMinShares {
        super._deposit(caller, receiver, assets, amounts, shares);
    }

    /**
     * @dev override ERC4626MultiAsset withdraw function to check for ratio
     * @dev not overriding redeem, since users would be blocked if asset prices change internal ratio
     */
    function withdraw(
        address[] calldata withdrawAssets,
        uint256[] calldata withdrawAmounts,
        address receiver,
        address _owner
    ) public override(ERC4626UpgradeableMultiAsset, IERC4626MultiAsset) checkRatio returns (uint256 shares) {
        return super.withdraw(withdrawAssets, withdrawAmounts, receiver, _owner);
    }

    /**
     * @dev override ERC4626MultiAsset _withdraw to check for minShares
     */
    function _withdraw(address caller, address receiver, address _owner, address[] memory assets, uint256[] memory amounts, uint256 shares) internal override checkMinShares {
        super._withdraw(caller, receiver, _owner, assets, amounts, shares);
    }

    /// @dev override _update to check for pause status
    function _update(address _from, address _to, uint256 _value) internal override whenNotPaused {
        super._update(_from, _to, _value);
    }

    /**
     * @dev Updates the ERC4626MultiAssetStorage for deposit assets and updates ITokenParams config
     * @dev only callable by owner
     * @dev ensures that the NAV of the vault is at least the same after the change
     */
    function updateDepositAssets(address[] calldata newAssets, ITokenParams calldata newConfig) external onlyRole(DEFAULT_ADMIN_ROLE) checkAssetList(newAssets) {
        _updateDepositAssets(newAssets);
        _setConfig(newConfig);
    }

    function _updateDepositAssets(address[] calldata newAssets) internal override {
        // get total value before update
        uint256 totalValueBefore = totalUnderlyingAssets();
        super._updateDepositAssets(newAssets);
        // get total value after update
        uint256 totalValueAfter = totalUnderlyingAssets();

        if (totalValueAfter < totalValueBefore) {
            revert ErrorDepositAssetsValueWentDown();
        }
    }

    /** @dev See {IIToken-getConfig} */
    function getConfig() external view returns (ITokenParams memory) {
        return config;
    }

    /** @dev See {IIToken-setConfig} */
    function setConfig(ITokenParams calldata params) external onlyRole(DEFAULT_ADMIN_ROLE) {
        _setConfig(params);
    }

    /**
     * @dev Internal function to set the IToken configuration, checks the config first
     */
    function _setConfig(ITokenParams calldata params) internal {
        _checkITokenConfig(params);
        config = params;
    }

    /** @dev See {IIToken-getAssetRatio} */
    function getAssetRatio(address _asset) external view returns (uint32) {
        if (!(isSupportedDepositAsset(_asset) && config.enforcedRatio)) {
            return 0;
        }
        // get all deposit assets to find index
        address[] memory depositAssets = depositAssetsList();

        // set index to -1 to indicate not found
        int8 index = -1;

        for (uint8 i = 0; i < depositAssets.length; i++) {
            if (depositAssets[i] == _asset) {
                index = int8(i);
                break;
            }
        }
        if (index == -1) {
            revert ErrorAssetNotFound(_asset);
        }
        return config.assetRatiosBps[uint8(index)];
    }

    /**
     * @dev Internal function to check the IToken configuration
     */
    function _checkITokenConfig(ITokenParams calldata params) internal view {
        // check minshares is not zero
        if (params.minShares == 0) {
            revert ErrorMinShares();
        }
        // if there is no enforced ratio, other config does not apply
        if (!params.enforcedRatio) {
            return;
        }
        // depositAssets and assetRatios must have the same length
        address[] memory depositAssets = depositAssetsList();
        if (depositAssets.length != params.assetRatiosBps.length) {
            revert ErrorArrayMismatch();
        }
        // ratios must add to 100
        uint32 totalRatio = 0;
        for (uint256 i = 0; i < params.assetRatiosBps.length; i++) {
            totalRatio += params.assetRatiosBps[i];
        }
        if (totalRatio != 10000) {
            revert ErrorRatiosNot100();
        }
        return;
    }

    /// @notice converts a deposit asset to the underlying asset of the vault
    /// @dev deposit asset token is either TToken or IToken with underlying the same as this contract
    function _convertDepositAssetToUnderlying(address depositAsset, uint256 amount) internal view override returns (uint256) {
        if (ERC165Checker.supportsInterface(depositAsset, type(IIToken).interfaceId)) {
            // if IToken, convert to underlying asset
            return IIToken(depositAsset).convertToAssets(amount);
        }
        if (ERC165Checker.supportsInterface(depositAsset, type(ITToken).interfaceId)) {
            // if TToken, convert to escrow asset
            return ITToken(depositAsset).sharesToEscrowAssets(amount);
        }
        // revert since deposit asset is not a valid TToken or IToken
        revert ErrorInvalidDepositAsset(depositAsset);
    }

    /// @notice supports interface for IIToken and IERC165
    function supportsInterface(bytes4 interfaceId) public view override(AccessControlUpgradeable, IERC165) returns (bool) {
        return interfaceId == type(IIToken).interfaceId || super.supportsInterface(interfaceId);
    }

    /** @dev See {IIToken-rescueAsset} */
    function rescueAsset(IERC20 rescuedAsset, address to) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (isSupportedDepositAsset(address(rescuedAsset))) {
            // if the asset is a deposit asset, it cannot be rescued
            revert ErrorAssetCannotBeRescued(address(rescuedAsset));
        }
        // transfer to the specified address
        SafeERC20.safeTransfer(rescuedAsset, to, rescuedAsset.balanceOf(address(this)));
    }
}
