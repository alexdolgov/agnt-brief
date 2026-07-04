// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.24;

import { UD60x18, ud, UNIT, ZERO } from "@prb/math/src/UD60x18.sol";
import "../periphery/BlastGas.sol";
import "../periphery/BlastPoints.sol";
import "contracts/external/blast/IERC20Rebasing.sol";
import "contracts/strategyVault/StrategyVaultUpgradeable.sol";
import "contracts/libraries/constants/Blast.sol";
import "@openzeppelin/contracts/interfaces/IERC721.sol";
import {
    IParticleDuoWrapMintV2,
    IParticleDuoFixedRate,
    IParticleDuoVault,
    RateMapping
} from "contracts/external/particle/interfaces/IParticleDuoWrapMintV2.sol";
import { IFewWrappedToken } from "contracts/external/ring/IFewWrappedToken.sol";
import "solady/src/utils/FixedPointMathLib.sol";

/// @title Particle Duo Points Strategy Vault
/// @notice Participates in boosted points farming on Particle Duo via minting.
contract ParticleDuoPointsStrategy is StrategyVaultUpgradeable, BlastPoints, BlastGas {
    using SafeERC20 for IERC20;
    using FixedPointMathLib for uint256;

    error DepositsDisabled();

    struct InitProps {
        address protocolGovernor;
        address vaultAdmin;
        string vaultName;
        string vaultSymbol;
        address baseAsset;
        address pointsOperator;
        address duoWrapMintV2;
    }

    /// @custom:storage-location erc7201:omega.storage.ParticleDuoPointsStrategy
    struct ParticleDuoPointsStrategyStorage {
        address activeFixedRateContract;
        address duoAssetToken;
        IParticleDuoWrapMintV2 duoWrapMintV2;
    }

    // keccak256(abi.encode(uint256(keccak256("juice.storage.ParticleDuoPointsStrategy")) - 1)) &
    // ~bytes32(uint256(0xff))
    bytes32 internal constant ParticleDuoPointsStrategyStorageLocation =
        0x95c24e3dd9f25b549767300aff558a51b5b6548aa9bfd6bb9dbe08a49ef9a100;

    function _getParticleDuoPointsStrategyStorage()
        internal
        pure
        returns (ParticleDuoPointsStrategyStorage storage s)
    {
        assembly {
            s.slot := ParticleDuoPointsStrategyStorageLocation
        }
    }

    constructor() {
        _disableInitializers();
    }

    function initialize(InitProps memory props, Vault.Parameters memory config) external initializer {
        __BlastGas_init(props.protocolGovernor);
        __BlastPoints_init(props.protocolGovernor, props.pointsOperator);
        __StrategyVaultUpgradeable_init(
            props.vaultAdmin,
            Vault.BaseInitProps({
                protocolGovernor: props.protocolGovernor,
                vaultName: props.vaultName,
                vaultSymbol: props.vaultSymbol,
                baseAsset: props.baseAsset
            }),
            config
        );

        ParticleDuoPointsStrategyStorage storage $ = _getParticleDuoPointsStrategyStorage();

        $.duoWrapMintV2 = IParticleDuoWrapMintV2(props.duoWrapMintV2);

        // The underlying token of the DuoWrapMintV2 contract should be a FewWrappedToken whose token is the base asset.
        if (IFewWrappedToken($.duoWrapMintV2.TOKEN()).token() != address(getBaseAsset())) {
            revert Errors.InvalidParams();
        }

        $.duoAssetToken = $.duoWrapMintV2.duoAssetToken();
    }

    function getParticleDuoPointsStrategyStorage() external pure returns (ParticleDuoPointsStrategyStorage memory) {
        return _getParticleDuoPointsStrategyStorage();
    }

    ///////////////////
    // VAULT FUNCTIONS
    ///////////////////

    function _deposit(uint256 assets, bytes memory, address recipient) internal virtual override returns (uint256) {
        ParticleDuoPointsStrategyStorage storage $ = _getParticleDuoPointsStrategyStorage();
        address baseAsset_ = address(getBaseAsset());

        if (!_isDepositEnabled()) {
            revert DepositsDisabled();
        }

        uint256 currentPrincipal = 0;
        uint256 amountToMint = assets;

        if ($.activeFixedRateContract != address(0)) {
            currentPrincipal = IParticleDuoFixedRate($.activeFixedRateContract).principal();

            // If there is an active fixed rate contract with principal, burn it completely and mint a new one with the
            // pre-existing balance and the new deposit.
            if (currentPrincipal > 0) {
                $.duoWrapMintV2.burnFixedRate($.activeFixedRateContract, currentPrincipal);
                amountToMint += currentPrincipal;
            }
        }

        IERC20(baseAsset_).safeIncreaseAllowance(address($.duoWrapMintV2), amountToMint);
        (address newFixedRateContract, uint256 amountOut,) =
            $.duoWrapMintV2.mintFixedRate(address(0), baseAsset_, amountToMint, 0, 0, "");

        $.activeFixedRateContract = newFixedRateContract;
        uint256 amountMinted = amountOut - currentPrincipal;

        super._mint(recipient, amountMinted);
        return amountMinted;
    }

    /// @notice Withdraws `shares` from the vault and sends baseAsset to `recipient`.
    /// @dev If `shares` is 0, the function will calculate the pending rewards and send them to `recipient`.
    /// @dev This is a workaround to let users claim their rewards via their Juice Account.
    function _withdraw(
        address caller,
        uint256 shares,
        bytes memory,
        address recipient
    )
        internal
        virtual
        override
        returns (uint256 assetsWithdrawn)
    {
        ParticleDuoPointsStrategyStorage storage $ = _getParticleDuoPointsStrategyStorage();

        super._burn(caller, shares);

        uint256 balanceBefore = getBaseAsset().balanceOf(address(this));

        if (IParticleDuoVault($.duoWrapMintV2.VAULT()).emergency()) {
            $.duoWrapMintV2.withdrawFixedRate($.activeFixedRateContract, shares);
        } else {
            $.duoWrapMintV2.burnFixedRate($.activeFixedRateContract, shares);
        }

        uint256 balanceAfter = getBaseAsset().balanceOf(address(this));
        assetsWithdrawn = balanceAfter - balanceBefore;

        getBaseAsset().safeTransfer(recipient, assetsWithdrawn);
    }

    function previewDeposit(uint256 assets) public view override returns (uint256) {
        uint256 fee = (ud(assets) * getVaultParams().depositFee).unwrap();
        return assets - fee;
    }

    function previewDepositOffchain(uint256 assets) public view override returns (uint256) {
        return previewDeposit(assets);
    }

    function previewWithdraw(uint256 shareAmount) public pure override returns (uint256) {
        return shareAmount;
    }

    function previewWithdrawOffchain(uint256 shareAmount) public pure override returns (uint256) {
        return previewWithdraw(shareAmount);
    }

    function getPositionValue(address account) public view override returns (uint256 value) {
        return balanceOf(account);
    }

    function _isDepositEnabled() private view returns (bool) {
        ParticleDuoPointsStrategyStorage storage $ = _getParticleDuoPointsStrategyStorage();

        RateMapping memory rateMapping = IParticleDuoVault($.duoWrapMintV2.VAULT()).rateMapping();
        uint256 positionFeeRate = IParticleDuoVault($.duoWrapMintV2.VAULT()).positionFeeRate();
        bool emergency = IParticleDuoVault($.duoWrapMintV2.VAULT()).emergency();

        if (emergency) {
            return false;
        }

        if (positionFeeRate > 0) {
            return false;
        }

        if (rateMapping.s1 != 0 || rateMapping.s2 != 0 || rateMapping.s3 != 0) {
            return false;
        }

        return true;
    }
}
