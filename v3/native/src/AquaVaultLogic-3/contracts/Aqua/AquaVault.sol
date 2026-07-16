// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.17;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import {INativeTreasuryV2} from "../interfaces/INativeTreasury.sol";
import {IAquaVault} from "../interfaces/IAquaVault.sol";
import {AquaLpToken} from "./AquaLpToken.sol";
import {Comptroller} from "../Compound/Comptroller.sol";
import {AquaVaultStorage} from "../storage/AquaVaultStorage.sol";
import {AquaVaultSignatureCheck} from "./AquaVaultSignatureCheck.sol";
import {AquaVaultLogic} from "../libraries/AquaVaultLogic.sol";

/// @title Holds all the assets and positions of the RFQ providers, and provides allowance to NativeRfqPool to power the swap
/// @author Native
/// @notice AquaVault is called by NativeRfqPool to update positions, by traders to settle and liquidate, by admin to support new markets and update positions
/// @notice The "traders" here are referring to the RFQ providers, not the swappers
/// @dev AquaVaultSignatureCheck(contract) and AquaVaultLogic(library) are extracted to different contract addresses to reduce the contract size of AquaVault
/// @dev AquaVault inherits from Comptroller. The difference from Compound is that AquaVault is the address that holds the asset and gives allowance to NativeRfqPool to power the swap
contract AquaVault is Comptroller, INativeTreasuryV2, UUPSUpgradeable, IAquaVault, AquaVaultStorage {
    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function getImplementation() public view returns (address) {
        return _getImplementation();
    }

    /// @inheritdoc UUPSUpgradeable
    function _authorizeUpgrade(address newImplementation) internal view override onlyAdmin {
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

    /// @notice Separate the address of trader signer and settlement wallet as the frequency of the 2 operations is very different and trader could have different security setup for 2 addresses
    modifier onlyTraderOrSettler(address trader) {
        if (!isTraders[trader] && msg.sender != traderSettlers[trader]) {
            revert CallerNotTraderSettler();
        }
        _;
    }

    modifier onlyLiquidator() {
        if (!isLiquidators[msg.sender]) {
            revert CallerNotLiquidator();
        }
        _;
    }

    /// @notice Called by NativeRfqPool to update positions and LP token borrow values
    /// @dev Can only be called by NativeRfqPool, and it's called after the swap is executed (signature verified)
    /// @dev Before and after the swap, the LP token exchange should not change. The amount of cash increases should cancel out the amount update of `netSwapBorrow` in LP token contract
    /// @param trader The address of the RFQ provider who is signing the quote and on which the positions is accounted
    /// @param sellerToken The address of the token that the swapper is selling, i.e. tokenIn, baseToken
    /// @param amountIn The amount of the token that the swapper is selling
    /// @param buyerToken The address of the token that the swapper is buying, i.e. tokenOut, quoteToken
    /// @param amountOut The amount of the token that the swapper is buying
    function nativeTreasuryCallback(
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

    /// @notice Called by AuqaLpToken to transfer the underlying asset to recipient
    /// @dev Different from Compound, Aqua needs this function because the underlying asset does not stay in LP token contract, but here in AquaVault
    /// @param to The address of the recipient
    /// @param amount The amount of the underlying asset to transfer
    function pay(address to, uint amount) external {
        if (!(markets[msg.sender].isListed)) {
            revert CallerNotLpToken();
        }
        IERC20(AquaLpToken(msg.sender).underlying()).transfer(to, amount);
    }

    /** admin related functions */

    /// @notice Called by admin to set new admin
    /// @param newAdmin The address of the new admin
    function setAdmin(address newAdmin) external onlyAdmin {
        admin = newAdmin;
    }

    /// @notice Called by admin to set new native pool
    /// @param newNativePool The address of the new native pool
    function setNativePool(address newNativePool) external onlyAdmin {
        nativePool = newNativePool;
    }

    /// @notice Called by admin to set new aquaVaultSignatureCheck
    /// @param newSignatureCheck The address of the new aquaVaultSignatureCheck
    function setSignatureCheck(address newSignatureCheck) external onlyAdmin {
        aquaVaultSignatureCheck = AquaVaultSignatureCheck(newSignatureCheck);
    }

    /// @notice Called by admin to provide allowance to native pool to power the swap
    /// @param tokens The array of token and amount to approve
    function setAllowance(TokenAmountUint[] calldata tokens) external onlyAdmin {
        AquaVaultLogic.setAllowance(tokens, nativePool);
    }

    /// @notice Called by admin to set settler for a trader (RFQ provider)
    /// @dev All the positions are accounted under trader address. Aqua allows another address to be tied to the trader address that can settle on behalf of the trader
    /// @param trader The address of the trader
    /// @param settler The address of the settler
    function setTraderSettler(address trader, address settler) external onlyAdmin {
        traderSettlers[trader] = settler;
    }

    /// @notice Called by admin to whilselist or blacklist a trader
    /// @param trader The address of the trader
    /// @param value True to whitelist, false to blacklist
    function setTrader(address trader, bool value) external onlyAdmin {
        isTraders[trader] = value;
    }

    /// @notice Called by admin to whitelist or blacklist a liquidator
    /// @param liquidator The address of the liquidator
    /// @param value True to whitelist, false to blacklist
    function setLiquidator(address liquidator, bool value) external onlyAdmin {
        isLiquidators[liquidator] = value;
    }

    /// @notice Called by admin to set new signer
    /// @dev The signer address is passed to AquaSignatureCheck to verify the signature of Aqua operator
    /// @param _signer The address of the new signer
    function setSigner(address _signer) external onlyAdmin {
        signer = _signer;
    }

    /// @notice Called by admin to set new epoch updater
    /// @param _epochUpdater The address of the new epoch updater
    function setEpochUpdater(address _epochUpdater) external onlyAdmin {
        epochUpdater = _epochUpdater;
    }

    /// @notice Called by admin to support new market (new LP token)
    /// @param aquaLpToken The address of the new LP token
    function supportMarket(AquaLpToken aquaLpToken) external onlyAdmin {
        lpTokens[aquaLpToken.underlying()] = aquaLpToken;
        _supportMarket(aquaLpToken);
    }

    /// @notice Called by epoch updater to update the LP token borrow value
    /// @notice The fee for traders' positions are calculated off-chain and got updated periodically on-chain
    /// @dev The reason for not updating this in every swap is to reduce the gas cost
    /// @param traderPositionUpdate d
    /// @param lpTokenValueUpdate d
    function positionEpochUpdate(
        TraderPositionUpdate[] calldata traderPositionUpdate,
        LpTokenValueUpdate[] calldata lpTokenValueUpdate
    ) external {
        if (msg.sender != epochUpdater) {
            revert CallerNotEpochUpdater();
        }
        AquaVaultLogic.positionEpochUpdate(traderPositionUpdate, lpTokenValueUpdate, positions, lpTokens);

        emit EpochUpdate(traderPositionUpdate, lpTokenValueUpdate);
    }

    /// @notice a permissionless function to repay short positions for a trader
    /// @param repayments The array of token and amount to repay
    function repay(TokenAmountUint[] calldata repayments, address trader) external {
        AquaVaultLogic.repay(repayments, positions, trader);
        emit Repaid(trader, repayments);
    }

    /// @notice Called by traders to settle the positions
    /// @dev It's a permissioned function. The caller need to call off-chain API to get the signature in order to execute this function
    /// @dev Off-chain system evaluates the settlement request and trader's credit to determine whether to sign the request
    /// @param request The struct of the settlement request containing info of long and short positions to settle
    /// @param signature The signature of the settlement request
    /// @param recipient The address of the recipient of the claimed long position assets
    function settle(
        SettlementRequest calldata request,
        bytes calldata signature,
        address recipient
    ) external onlyTraderOrSettler(request.trader) {
        aquaVaultSignatureCheck.verifySettleSignature(request, signature, signer);

        TokenAmountInt[] memory positionUpdates = request.positionUpdates;
        AquaVaultLogic.settle(positionUpdates, recipient, positions, lpTokens);

        emit Settled(request.trader, positionUpdates);
    }

    /// @notice Called by traders to add collateral
    /// @dev It's a permissionless function, anyone can add collateral for any trader
    /// @dev Off-chain system will capture this event and update the trader's credit off-chain to allow the trader to quote more
    /// @param tokens The array of token and amount to add
    /// @param trader The address of the trader
    function addCollateral(TokenAmountUint[] calldata tokens, address trader) external {
        AquaVaultLogic.addCollateral(tokens, aquaCollateral, markets, trader);

        emit CollateralAdded(trader, tokens);
    }

    /// @notice Called by traders to remove collateral
    /// @dev It's a permissioned function. The caller need to call off-chain API to get the signature in order to execute this function
    /// @dev Off-chain system evaluates the settlement request and trader's credit to determine whether to sign the request
    /// @param request The struct of the remove collateral request containing info of collateral to remove
    /// @param signature The signature of the remove collateral request
    /// @param recipient The address of the recipient of the removed collateral
    function removeCollateral(
        RemoveCollateralRequest calldata request,
        bytes calldata signature,
        address recipient
    ) external onlyTraderOrSettler(request.trader) {
        aquaVaultSignatureCheck.verifyRemoveCollateralSignature(request, signature, signer);

        TokenAmountUint[] calldata tokens = request.tokens;
        AquaVaultLogic.removeCollateral(tokens, recipient, request.trader, aquaCollateral);

        emit CollateralRemoved(request.trader, tokens);
    }

    /// @notice Called by liquidators to liquidate the underwater positions
    /// @dev It's a permissioned function. Only a whitelist of liquidators can call this function. And the caller need to call off-chain API to get the signature
    /// @dev Off-chain system evaluates the liquidation request and trader's credit to determine whether to sign the request
    /// @param request The struct of the liquidation request containing info of long and short positions to liquidate
    /// @param signature The signature of the liquidation request
    /// @param recipient The address of the recipient of the claimed long position assets
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
