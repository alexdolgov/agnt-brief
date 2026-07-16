// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import {AccessControlUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import {EIP712Upgradeable, ECDSAUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/cryptography/EIP712Upgradeable.sol";
import {PausableUpgradeable} from "@openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol";
import {ReentrancyGuardUpgradeable} from "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";
import {INativeTreasuryV2} from "../interfaces/INativeTreasury.sol";
import {IAquaVault} from "../interfaces/IAquaVault.sol";
import {AquaLpToken} from "./AquaLpToken.sol";
import {PriceOracle} from "./PriceOracle.sol";
import {ExponentialNoError} from "./ExponentialNoError.sol";
import {Comptroller} from "./Comptroller.sol";
import {AquaVaultStorage} from "../storage/AquaVaultStorage.sol";
import {AquaVaultSignatureCheck} from "./AquaVaultSignatureCheck.sol";
import {AquaVaultLogic} from "../libraries/AquaVaultLogic.sol";

/**
 * TODO:
 * modify supply and withdraw flow where cash goes to vault
 * add swapBorrow, epochUpdate, settle, liquidate flow
 * consider the logic for setting admin in parent Comptroller contract
 */
contract AquaVault is Comptroller, INativeTreasuryV2, UUPSUpgradeable, EIP712Upgradeable, IAquaVault, AquaVaultStorage {
    int256 private constant EPOCH_UPDATE_LIMIT_PERCENTAGE = 1;

    /** upgradable configs */
    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function getImplementation() public view returns (address) {
        return _getImplementation();
    }

    function _authorizeUpgrade(address newImplementation) internal override onlyAdmin {
        AquaVault(newImplementation).isComptroller();
    }

    function initialize(address aquaVaultSignatureCheck_) public initializer {
        __Comptroller_init(msg.sender);
        __UUPSUpgradeable_init();
        aquaVaultSignatureCheck = AquaVaultSignatureCheck(aquaVaultSignatureCheck_);
    }

    modifier onlyAdmin() {
        if (msg.sender != admin) {
            revert CallerNotAdmin();
        }
        _;
    }

    modifier onlyTrader() {
        if (!isTraders[msg.sender]) {
            revert CallerNotTrader();
        }
        _;
    }

    modifier onlyLiquidator() {
        if (!isLiquidators[msg.sender]) {
            revert CallerNotLiquidator();
        }
        _;
    }

    // only callable by NativePool of Aqua
    // TODO: revisit the positive and negative sign
    function postSwapCallback(
        address trader,
        address sellerToken,
        int256 amountIn,
        address buyerToken,
        int256 amountOut
    ) external {
        if (msg.sender != nativePool) {
            revert CallerNotNativePool();
        }
        lpTokens[sellerToken].updateNetBorrow(-amountIn);
        lpTokens[buyerToken].updateNetBorrow(amountOut);
        positions[trader][sellerToken] += amountIn;
        positions[trader][buyerToken] -= amountOut;
    }

    // called by LpToken
    function pay(address to, uint amount) external {
        if (!(markets[msg.sender].isListed)) {
            revert CallerNotLpToken();
        }
        IERC20(AquaLpToken(msg.sender).underlying()).transfer(to, amount);
    }

    /** admin related functions */
    function setAdmin(address newAdmin) external onlyAdmin {
        admin = newAdmin;
    }

    function setNativePool(address newNativePool) external onlyAdmin {
        nativePool = newNativePool;
    }

    // to give allowance to NativePool
    function setAllowance(TokenAmountUint[] calldata tokens) external onlyAdmin {
        AquaVaultLogic.setAllowance(tokens, nativePool);
    }

    function setTrader(address trader, bool value) external onlyAdmin {
        isTraders[trader] = value;
    }

    function setLiquidator(address liquidator, bool value) external onlyAdmin {
        isLiquidators[liquidator] = value;
    }

    function setSigner(address _signer) external onlyAdmin {
        signer = _signer;
    }

    function supportMarket(AquaLpToken aquaLpToken) external onlyAdmin {
        lpTokens[aquaLpToken.underlying()] = aquaLpToken;
        _supportMarket(aquaLpToken);
    }

    // called during epoch update
    // @note consider to check that updating value > 0
    // @note consider applying timelock, cooldown time for epoch update to avoid rapid update if key got compromised
    // @note ideally update amount of netSwapBorrow should be the sum of all trader on that token, excluing reserve:
    //       for each token, netSwapBorrow = sum(positionUpdate) - reserve. Could consider implementing the check on-chain
    function positionEpochUpdate(
        TraderPositionUpdate[] calldata traderPositionUpdate,
        LpTokenValueUpdate[] calldata lpTokenValueUpdate
    ) external onlyAdmin {
        AquaVaultLogic.positionEpochUpdate(traderPositionUpdate, lpTokenValueUpdate, positions, lpTokens);

        emit EpochUpdate(traderPositionUpdate, lpTokenValueUpdate);
    }

    /** settlement functions */
    function repay(TokenAmountUint[] calldata repayments) external onlyTrader {
        AquaVaultLogic.repay(repayments, positions);
        emit Repaid(msg.sender, repayments);
    }

    // called by trader to do settlement
    function settle(
        SettlementRequest calldata request,
        bytes calldata signature,
        address recipient
    ) external onlyTrader {
        aquaVaultSignatureCheck.verifySettleSignature(request, signature, signer);

        TokenAmountInt[] memory positionUpdates = request.positionUpdates;
        AquaVaultLogic.settle(positionUpdates, recipient, positions, lpTokens);

        emit Settled(msg.sender, positionUpdates);
    }

    /** collateral funcitons */
    // tranfer from trader to address(this).
    function addCollateral(TokenAmountUint[] calldata tokens) external onlyTrader {
        AquaVaultLogic.addCollateral(tokens, aquaCollateral, markets);

        emit CollateralAdded(msg.sender, tokens);
    }

    function removeCollateral(
        RemoveCollateralRequest calldata request,
        bytes calldata signature,
        address recipient
    ) external onlyTrader {
        aquaVaultSignatureCheck.verifyRemoveCollateralSignature(request, signature, signer);

        TokenAmountUint[] calldata tokens = request.tokens;
        AquaVaultLogic.removeCollateral(tokens, recipient, aquaCollateral);

        emit CollateralRemoved(msg.sender, tokens);
    }

    /** aqua liquidation */
    function liquidate(
        LiquidationRequest calldata request,
        bytes calldata signature,
        address recipient
    ) external onlyLiquidator {
        aquaVaultSignatureCheck.verifyLiquidationSignature(request, signature, signer);

        TokenAmountInt[] memory positionUpdates = request.positionUpdates;
        TokenAmountUint[] calldata claimCollaterals = request.claimCollaterals;
        AquaVaultLogic.liquidate(
            positionUpdates,
            claimCollaterals,
            request.trader,
            recipient,
            positions,
            lpTokens,
            aquaCollateral
        );

        emit Liquidated(request.trader, msg.sender, positionUpdates, claimCollaterals);
    }
}
