// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.10;

import { ERC20 } from "solady/tokens/ERC20.sol";
import { FixedPointMathLib } from "solady/utils/FixedPointMathLib.sol";
import { ReentrancyGuardTransient } from "solady/utils/ReentrancyGuardTransient.sol";
import { SafeTransferLib } from "solady/utils/SafeTransferLib.sol";

import { IVault } from "./interfaces/IVault.sol";
import { IVestibule } from "./interfaces/IVestibule.sol";
import { ITransferPolicy } from "./interfaces/ITransferPolicy.sol";
import { AsyncDeposit, DepositId, DepositRequest } from "./modules/AsyncDeposit.sol";
import { AsyncRedemption, RedemptionId, RedemptionRequest } from "./modules/AsyncRedemption.sol";
import { Errors } from "./Errors.sol";
import { Events } from "./Events.sol";
import { PauseFlags } from "./libraries/PauseFlags.sol";
import { FACTOR_E18, FACTOR_E36 } from "./libraries/Constants.sol";
import { RequestStatus } from "./types/RequestStatus.sol";

using FixedPointMathLib for uint256;
using SafeTransferLib for address;

/// @notice Per-vault escrow for pending async deposits and redemptions.
contract Vestibule is IVestibule, AsyncDeposit, AsyncRedemption, ReentrancyGuardTransient, Errors, Events, PauseFlags {
    uint256 internal constant FULFILLMENT_TOLERANCE_E18 = 0.05e18;

    IVault public immutable VAULT;
    ERC20 internal immutable _asset;

    constructor(
        IVault vault
    ) {
        require(address(vault) != address(0), ZeroAddressDisallowed());
        VAULT = vault;
        _asset = vault.asset();
        address(_asset).safeApprove(address(vault), type(uint256).max);
    }

    ///////////////////////////////////////////////////////////////////////////////////////////////
    //                      USER DEPOSIT / WITHDRAWAL FUNCTIONS                                  //
    ///////////////////////////////////////////////////////////////////////////////////////////////

    /// @inheritdoc IVestibule
    function requestDeposit(
        uint256 amount,
        uint256 minSharesOut,
        uint256 referralId
    ) external whenVaultNotPaused(DEPOSITS_PAUSED) nonReentrant returns (DepositId id) {
        ITransferPolicy policy = VAULT.transferPolicy();
        if (address(policy) != address(0)) {
            require(policy.canDeposit(msg.sender), UserDepositsForbidden());
        }
        id = _createDepositRequest({ amount: amount, minSharesOut: minSharesOut, referralId: referralId });
    }

    /// @inheritdoc IVestibule
    function cancelDepositRequest(
        DepositId id
    ) external nonReentrant {
        require(_depositRequest(id).depositor == msg.sender || VAULT.isAllocator(msg.sender), NotDepositorOrAllocator());
        _cancelDepositRequest(id);
    }

    /// @inheritdoc IVestibule
    function requestRedemption(
        uint256 shares,
        uint256 minAssetsOut
    ) external whenVaultNotPaused(REDEMPTIONS_PAUSED) nonReentrant returns (RedemptionId id) {
        ITransferPolicy policy = VAULT.transferPolicy();
        if (address(policy) != address(0)) {
            require(policy.canRedeem(msg.sender), UserRedemptionsForbidden());
        }
        id = _createRedemptionRequest(shares, minAssetsOut);
    }

    /// @inheritdoc IVestibule
    function cancelRedemptionRequest(
        RedemptionId requestId
    ) external nonReentrant {
        require(
            _redemptionRequest(requestId).redeemer == msg.sender || VAULT.isAllocator(msg.sender),
            NotRedeemerOrAllocator()
        );
        _cancelRedemptionRequest(requestId);
    }

    ///////////////////////////////////////////////////////////////////////////////////////////////
    //                      DEPOSIT / WITHDRAWAL FULFILLMENT FUNCTIONS                           //
    ///////////////////////////////////////////////////////////////////////////////////////////////

    /// @inheritdoc IVestibule
    function fulfillDeposits(
        DepositId[] calldata requestIds,
        uint256[] calldata shares
    ) external whenVaultNotPaused(DEPOSITS_PAUSED) onlyAllocator nonReentrant {
        require(requestIds.length == shares.length, InputLengthMismatch());

        // This must be called before any operation which could modify the amount of shares.
        VAULT.accrueFees();

        (uint256 minAllowedExchangeRate, uint256 maxAllowedExchangeRate) = _getAllowedExchangeRates();
        uint256 realizedExchangeRate;
        ITransferPolicy policy = VAULT.transferPolicy();
        for (uint256 i = 0; i < requestIds.length; ++i) {
            DepositRequest storage request = _depositRequest(requestIds[i]);
            if (request.status == RequestStatus.PENDING) {
                if (address(policy) != address(0)) {
                    require(policy.canDeposit(request.depositor), UserDepositsForbidden());
                }
                realizedExchangeRate = request.amount.fullMulDiv(FACTOR_E36, shares[i]);
                _validateFulfilledExchangeRate(minAllowedExchangeRate, maxAllowedExchangeRate, realizedExchangeRate);

                _fulfillDepositRequest(requestIds[i], shares[i]);
            } else {
                emit DepositNotFulfilled(requestIds[i], request.status);
            }
        }
    }

    /// @inheritdoc IVestibule
    function fulfillRedemptions(
        RedemptionId[] calldata requestIds,
        uint256[] calldata assets
    ) external whenVaultNotPaused(REDEMPTIONS_PAUSED) onlyAllocator nonReentrant {
        require(requestIds.length == assets.length, InputLengthMismatch());

        // This must be called before any operation which could modify the amount of shares.
        VAULT.accrueFees();

        (uint256 minAllowedExchangeRate, uint256 maxAllowedExchangeRate) = _getAllowedExchangeRates();
        uint256 realizedExchangeRate;
        ITransferPolicy policy = VAULT.transferPolicy();
        for (uint256 i = 0; i < requestIds.length; ++i) {
            RedemptionRequest storage request = _redemptionRequest(requestIds[i]);
            if (request.status == RequestStatus.PENDING) {
                if (address(policy) != address(0)) {
                    require(policy.canRedeem(request.redeemer), UserRedemptionsForbidden());
                }
                realizedExchangeRate = assets[i].fullMulDiv(FACTOR_E36, request.shares);
                _validateFulfilledExchangeRate(minAllowedExchangeRate, maxAllowedExchangeRate, realizedExchangeRate);
                _fulfillRedemptionRequest(requestIds[i], assets[i]);
            } else {
                emit RedemptionNotFulfilled(requestIds[i], request.status);
            }
        }
    }

    ///////////////////////////////////////////////////////////////////////////////////////////////
    //                                      VAULT-CALLED ADMIN                                   //
    ///////////////////////////////////////////////////////////////////////////////////////////////

    /// @inheritdoc IVestibule
    function setDepositAmountLimits(
        uint128 minAmount,
        uint128 maxAmount
    ) external onlyVault {
        _setDepositAmountLimits(minAmount, maxAmount);
    }

    /// @inheritdoc IVestibule
    function setRedemptionAmountLimits(
        uint128 minAmount,
        uint128 maxAmount
    ) external onlyVault {
        _setRedemptionAmountLimits(minAmount, maxAmount);
    }

    ///////////////////////////////////////////////////////////////////////////////////////////////
    //                                      INTERNALS                                            //
    ///////////////////////////////////////////////////////////////////////////////////////////////

    function asset() public view override returns (ERC20) {
        return _asset;
    }

    function _transfer(
        address from,
        address to,
        uint256 amount
    ) internal override {
        VAULT.transferSharesFromVestibule(from, to, amount);
    }

    function _onFulfillDeposit(
        address depositor,
        uint256 amount,
        uint256 sharesToMint
    ) internal override {
        VAULT.fulfillDepositFromVestibule(depositor, amount, sharesToMint);
    }

    function _onFulfillRedemption(
        address redeemer,
        uint256 shares,
        uint256 assets
    ) internal override {
        VAULT.fulfillRedemptionFromVestibule(redeemer, shares, assets);
    }

    function _getAllowedExchangeRates() internal view returns (uint256, uint256) {
        uint256 exchangeRateE36Last = VAULT.exchangeRateE36Last();
        uint256 minAllowedExchangeRate = exchangeRateE36Last.mulWad(FACTOR_E18 - FULFILLMENT_TOLERANCE_E18);
        uint256 maxAllowedExchangeRate = exchangeRateE36Last.mulWad(FACTOR_E18 + FULFILLMENT_TOLERANCE_E18);
        return (minAllowedExchangeRate, maxAllowedExchangeRate);
    }

    function _validateFulfilledExchangeRate(
        uint256 minAllowedExchangeRate,
        uint256 maxAllowedExchangeRate,
        uint256 realizedExchangeRate
    ) internal pure {
        require(
            realizedExchangeRate >= minAllowedExchangeRate && realizedExchangeRate <= maxAllowedExchangeRate,
            ExchangeRateOutsideTolerance()
        );
    }

    modifier onlyAllocator() {
        require(VAULT.isAllocator(msg.sender), OnlyAllocator());
        _;
    }

    modifier onlyVault() {
        require(msg.sender == address(VAULT), OnlyVault());
        _;
    }

    modifier whenVaultNotPaused(
        uint256 flags
    ) {
        require(VAULT.isNotPaused(flags), FunctionalityIsPaused());
        _;
    }
}
