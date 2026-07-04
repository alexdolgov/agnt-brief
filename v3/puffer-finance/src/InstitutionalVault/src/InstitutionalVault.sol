// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.0 <0.9.0;

import {
    CustomCallFailed, DelegateCallFailed, FeeQueryFailed, InvalidInput, NotEnoughETH, ZeroAddress
} from "./Errors.sol";
import { VaultStorage } from "./InstitutionalVaultStorage.sol";
import { NonRestakingWithdrawalCredentials } from "./NonRestakingWithdrawalCredentials.sol";
import { NonRestakingWithdrawalCredentialsFactory } from "./NonRestakingWithdrawalCredentialsFactory.sol";
import { IDelegationManager, IDelegationManagerTypes } from "./interface/Eigenlayer-Slashing/IDelegationManager.sol";
import { IEigenPod, IEigenPodTypes } from "./interface/Eigenlayer-Slashing/IEigenPod.sol";
import { IStrategy } from "./interface/Eigenlayer-Slashing/IStrategy.sol";
import { IBeaconDepositContract } from "./interface/IBeaconDepositContract.sol";
import { IEigenPodManager } from "./interface/IEigenPodManager.sol";
import { IInstitutionalVault } from "./interface/IInstitutionalVault.sol";
import { IWETH } from "./interface/IWETH.sol";
import { AccessManagedUpgradeable } from
    "@openzeppelin/contracts-upgradeable/access/manager/AccessManagedUpgradeable.sol";
import { UUPSUpgradeable } from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import { ERC20Upgradeable } from "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import { ERC4626Upgradeable } from "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC4626Upgradeable.sol";
import { IAccessManager } from "@openzeppelin/contracts/access/manager/IAccessManager.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { Math } from "@openzeppelin/contracts/utils/math/Math.sol";

/**
 * @title InstitutionalVault
 * @author Puffer Finance
 * @notice A vault that allows for deposits of ETH and converts them to shares of the vault
 */
contract InstitutionalVault is
    VaultStorage,
    ERC4626Upgradeable,
    UUPSUpgradeable,
    AccessManagedUpgradeable,
    IInstitutionalVault
{
    address internal constant _BEACON_CHAIN_STRATEGY = 0xbeaC0eeEeeeeEEeEeEEEEeeEEeEeeeEeeEEBEaC0;
    string internal constant VERSION = "2.0.0";

    IWETH public immutable WETH;
    IBeaconDepositContract public immutable BEACON_DEPOSIT_CONTRACT;
    IEigenPodManager public immutable EIGEN_POD_MANAGER;
    IDelegationManager public immutable EIGEN_DELEGATION_MANAGER;
    address public immutable NON_RESTORAKING_WITHDRAWAL_CREDENTIALS_FACTORY;

    /**
     * @notice Constructor for the vault
     * @param weth The address of the WETH token
     * @param eigenPodManager The address of the EigenPodManager
     * @param beaconDepositContract The address of the Beacon Deposit Contract
     * @param eigenDelegationManager The address of the EigenDelegationManager
     */
    constructor(
        address weth,
        address eigenPodManager,
        address beaconDepositContract,
        address eigenDelegationManager,
        address nonRestakingWithdrawalCredentialsFactory
    ) {
        require(weth != address(0), ZeroAddress());
        require(eigenPodManager != address(0), ZeroAddress());
        require(beaconDepositContract != address(0), ZeroAddress());
        require(eigenDelegationManager != address(0), ZeroAddress());
        require(nonRestakingWithdrawalCredentialsFactory != address(0), ZeroAddress());
        WETH = IWETH(weth);
        EIGEN_POD_MANAGER = IEigenPodManager(eigenPodManager);
        BEACON_DEPOSIT_CONTRACT = IBeaconDepositContract(beaconDepositContract);
        EIGEN_DELEGATION_MANAGER = IDelegationManager(eigenDelegationManager);
        NON_RESTORAKING_WITHDRAWAL_CREDENTIALS_FACTORY = nonRestakingWithdrawalCredentialsFactory;
        _disableInitializers();
    }

    /**
     * @notice Allow contract to receive ETH
     */
    receive() external payable { }

    /**
     * @notice Initialize the vault and create a new EigenPod
     * @param accessManager The address of the access manager
     * @param shareTokenName The name of the share token
     * @param shareTokenSymbol The symbol of the share token
     */
    function initialize(address accessManager, string calldata shareTokenName, string calldata shareTokenSymbol)
        external
        initializer
    {
        require(accessManager != address(0), ZeroAddress());
        __AccessManaged_init(accessManager);
        __ERC20_init(shareTokenName, shareTokenSymbol);
        __ERC4626_init(IERC20(address(WETH)));
        __UUPSUpgradeable_init();
        __Context_init();
        Storage storage $ = _getVaultStorage();
        $.eigenPod = address(EIGEN_POD_MANAGER.createPod());
    }

    /**
     * @notice Initialize the vault and deploy the new staking withdrawal credentials
     */
    function initializerV2() external restricted reinitializer(2) {
        (bool success,) = address(NON_RESTORAKING_WITHDRAWAL_CREDENTIALS_FACTORY).delegatecall(
            abi.encodeCall(NonRestakingWithdrawalCredentialsFactory.deployNewStakingWithdrawalCredentials, ())
        );
        require(success, DelegateCallFailed());
    }

    /**
     * @notice Deposit ETH into the vault
     * Depositor receives institutionalETH shares in return
     * @param receiver The address to receive the shares
     */
    function depositETH(address receiver) public payable virtual restricted returns (uint256) {
        uint256 maxAssets = maxDeposit(receiver);
        if (msg.value > maxAssets) {
            revert ERC4626ExceededMaxDeposit(receiver, msg.value, maxAssets);
        }

        uint256 shares = previewDeposit(msg.value);

        _mint(receiver, shares);

        emit Deposit(_msgSender(), receiver, msg.value, shares);

        return shares;
    }

    /**
     * @notice Override the deposit function to allow for the deposit of shares (institutionalETH)
     * Restricted modifier is used to pause/unpause the deposit function
     * @param assets The amount of assets (WETH) to deposit
     * @param receiver The address to receive the shares
     * @return shares The amount of shares (institutionalETH) minted
     */
    function deposit(uint256 assets, address receiver)
        public
        virtual
        override(ERC4626Upgradeable, IInstitutionalVault)
        restricted
        returns (uint256)
    {
        return super.deposit(assets, receiver);
    }

    /**
     * @notice Redeems (institutionalETH) `shares` to receive (WETH) assets from the vault, burning the `owner`'s (institutionalETH) `shares`.
     * The caller of this function does not have to be the `owner` if the `owner` has approved the caller to spend their institutionalETH.
     * @param shares The amount of shares (institutionalETH) to withdraw
     * @param receiver The address to receive the assets (WETH)
     * @param owner The address of the owner for which the shares (institutionalETH) are burned.
     * @return assets The amount of assets (WETH) redeemed
     */
    function redeem(uint256 shares, address receiver, address owner)
        public
        virtual
        override(ERC4626Upgradeable, IInstitutionalVault)
        restricted
        returns (uint256)
    {
        uint256 maxShares = maxRedeem(owner);
        if (shares > maxShares) {
            revert ERC4626ExceededMaxRedeem(owner, shares, maxShares);
        }

        uint256 assets = previewRedeem(shares);

        _wrapETH(assets);

        _withdraw({ caller: _msgSender(), receiver: receiver, owner: owner, assets: assets, shares: shares });

        return assets;
    }

    /**
     * @notice Withdrawals WETH assets from the vault, burning the `owner`'s (institutionalETH) shares.
     * The caller of this function does not have to be the `owner` if the `owner` has approved the caller to spend their institutionalETH.
     * @param assets The amount of assets (WETH) to withdraw
     * @param receiver The address to receive the assets (WETH)
     * @param owner The address of the owner for which the shares (institutionalETH) are burned.
     * @return shares The amount of shares (institutionalETH) burned
     */
    function withdraw(uint256 assets, address receiver, address owner)
        public
        virtual
        override(ERC4626Upgradeable, IInstitutionalVault)
        restricted
        returns (uint256)
    {
        uint256 maxAssets = maxWithdraw(owner);
        if (assets > maxAssets) {
            revert ERC4626ExceededMaxWithdraw(owner, assets, maxAssets);
        }

        _wrapETH(assets);

        uint256 shares = previewWithdraw(assets);
        _withdraw({ caller: _msgSender(), receiver: receiver, owner: owner, assets: assets, shares: shares });

        return shares;
    }

    /**
     * @notice Override the transfer function to allow for the transfer of shares (institutionalETH)
     * Restricted modifier is used to pause/unpause the transfer function
     * @param to The address to transfer to
     * @param value The amount of shares to transfer
     * @return bool Whether the transfer was successful
     */
    function transfer(address to, uint256 value)
        public
        virtual
        override(ERC20Upgradeable, IERC20)
        restricted
        returns (bool)
    {
        return super.transfer(to, value);
    }

    /**
     * @notice Override the transferFrom function to allow for the transfer of shares (institutionalETH)
     * Restricted modifier is used to pause/unpause the transferFrom function
     * @param from The address to transfer from
     * @param to The address to transfer to
     * @param value The amount of shares to transfer
     * @return bool Whether the transfer was successful
     */
    function transferFrom(address from, address to, uint256 value)
        public
        virtual
        override(ERC20Upgradeable, IERC20)
        restricted
        returns (bool)
    {
        return super.transferFrom(from, to, value);
    }

    /**
     * @notice Override the mint function to allow for the minting of shares (institutionalETH)
     * Restricted modifier is used to pause/unpause the mint function
     * @param shares The amount of shares (institutionalETH) to mint
     * @param receiver The address to receive the shares
     * @return assets The amount of assets (WETH) minted
     */
    function mint(uint256 shares, address receiver)
        public
        virtual
        override(ERC4626Upgradeable, IInstitutionalVault)
        restricted
        returns (uint256)
    {
        return super.mint(shares, receiver);
    }

    // Start validators =====================================================

    /**
     * @notice Start restaking validators through EigenLayer
     * @param pubKeys The public keys of the validators to restake
     * @param signatures The signatures of the validators to restake
     * @param amountsInGwei The amounts of ETH to restake for each validator (in Gwei)
     * @param depositDataRoots The deposit data roots of the validators to restake
     */
    function startRestakingValidators(
        bytes[] calldata pubKeys,
        bytes[] calldata signatures,
        uint256[] calldata amountsInGwei,
        bytes32[] calldata depositDataRoots
    ) external virtual restricted {
        _startValidators(pubKeys, signatures, amountsInGwei, depositDataRoots, true);
    }

    /**
     * @notice Start non restaking validators by directly depositing into the Beacon Deposit Contract
     * This allows additional deposits to be made for a certain validator
     * @param pubKeys The public keys of the validators
     * @param signatures The signatures of the validators
     * @param amountsInGwei The amounts of ETH to deposit for each validator (in Gwei)
     * @param depositDataRoots The deposit data roots of the validators
     */
    function startNonRestakingValidators(
        bytes[] calldata pubKeys,
        bytes[] calldata signatures,
        uint256[] calldata amountsInGwei,
        bytes32[] calldata depositDataRoots
    ) external virtual restricted {
        _startValidators(pubKeys, signatures, amountsInGwei, depositDataRoots, false);
    }

    function _startValidators(
        bytes[] calldata pubKeys,
        bytes[] calldata signatures,
        uint256[] calldata amountsInGwei,
        bytes32[] calldata depositDataRoots,
        bool restakedValidators
    ) internal {
        require(
            pubKeys.length == signatures.length && pubKeys.length == amountsInGwei.length
                && pubKeys.length == depositDataRoots.length,
            InvalidInput()
        );

        uint256 totalAmount;
        for (uint256 i = 0; i < pubKeys.length; i++) {
            totalAmount += amountsInGwei[i];
        }

        totalAmount = _convertGweiToWei(totalAmount);

        _unwrapWETH(totalAmount);

        bytes memory withdrawalCredentials =
            restakedValidators ? getEigenPodWithdrawalCredentials() : getWithdrawalCredentials();

        for (uint256 i = 0; i < pubKeys.length; i++) {
            BEACON_DEPOSIT_CONTRACT.deposit{ value: _convertGweiToWei(amountsInGwei[i]) }(
                pubKeys[i], withdrawalCredentials, signatures[i], depositDataRoots[i]
            );
            if (restakedValidators) {
                emit StartedRestakingValidator(pubKeys[i], amountsInGwei[i]);
            } else {
                emit StartedNonRestakingValidator(pubKeys[i], amountsInGwei[i]);
            }
        }

        if (restakedValidators) {
            _getVaultStorage().restakedValidatorsETH += uint128(totalAmount);
            emit RestakedValidatorsETHUpdated(_getVaultStorage().restakedValidatorsETH);
        } else {
            _getVaultStorage().nonRestakedValidatorsETH += uint128(totalAmount);
            emit NonRestakedValidatorsETHUpdated(_getVaultStorage().nonRestakedValidatorsETH);
        }
    }

    // End of validators ====================================================

    // EigenLayer interactions ==============================================

    /**
     * @notice Queue withdrawals for the restaking validators on EigenLayer
     * @param shareAmount The amount of shares to withdraw (wei)
     */
    function queueWithdrawals(uint256 shareAmount) external virtual override restricted {
        IDelegationManagerTypes.QueuedWithdrawalParams[] memory withdrawals =
            new IDelegationManagerTypes.QueuedWithdrawalParams[](1);

        uint256[] memory shares = new uint256[](1);
        shares[0] = shareAmount;

        IStrategy[] memory strategies = new IStrategy[](1);
        strategies[0] = IStrategy(_BEACON_CHAIN_STRATEGY);

        withdrawals[0] = IDelegationManagerTypes.QueuedWithdrawalParams({
            strategies: strategies,
            depositShares: shares,
            __deprecated_withdrawer: address(0)
        });

        EIGEN_DELEGATION_MANAGER.queueWithdrawals(withdrawals);
    }

    /**
     * @notice Completes the queued withdrawals on the EigenLayer
     * @param withdrawals The withdrawals to complete
     * @param receiveAsTokens Whether to receive the tokens as tokens
     */
    function completeQueuedWithdrawals(
        IDelegationManagerTypes.Withdrawal[] calldata withdrawals,
        bool[] calldata receiveAsTokens
    ) external virtual restricted {
        IERC20[][] memory tokens = new IERC20[][](1);
        tokens[0] = new IERC20[](1);
        tokens[0][0] = IERC20(address(0));

        uint256 totalAmount = 0;
        for (uint256 i = 0; i < withdrawals.length; i++) {
            require(address(withdrawals[i].strategies[0]) == _BEACON_CHAIN_STRATEGY, InvalidInput());
            if (receiveAsTokens[i]) {
                totalAmount += withdrawals[i].scaledShares[0];
            }
        }

        _getVaultStorage().restakedValidatorsETH -= uint128(totalAmount);
        emit RestakedValidatorsETHUpdated(_getVaultStorage().restakedValidatorsETH);

        EIGEN_DELEGATION_MANAGER.completeQueuedWithdrawals({
            withdrawals: withdrawals,
            tokens: tokens,
            receiveAsTokens: receiveAsTokens
        });
    }

    /**
     * @notice Request a withdrawal of restaked validators on EigenLayer
     * @param requests The requests to withdraw
     */
    function requestWithdrawal(IEigenPodTypes.WithdrawalRequest[] calldata requests)
        external
        payable
        virtual
        restricted
    {
        IEigenPod(getEigenPod()).requestWithdrawal{ value: msg.value }(requests);
    }

    /**
     * @notice Request consolidation of restaked validators
     * @param srcPubkeys The public keys of the validators to consolidate
     * @param targetPubkeys The public keys of the validators to consolidate to
     */
    function requestEigenPodConsolidation(bytes[] calldata srcPubkeys, bytes[] calldata targetPubkeys)
        external
        payable
        virtual
        restricted
    {
        IEigenPod.ConsolidationRequest[] memory requests = new IEigenPodTypes.ConsolidationRequest[](srcPubkeys.length);
        for (uint256 i = 0; i < srcPubkeys.length; i++) {
            requests[i] =
                IEigenPodTypes.ConsolidationRequest({ srcPubkey: srcPubkeys[i], targetPubkey: targetPubkeys[i] });
        }
        // The remainder is donated to the vault and not refunded to the caller
        IEigenPod(getEigenPod()).requestConsolidation{ value: msg.value }(requests);
    }

    // End of EigenLayer interactions =======================================

    /**
     * @notice Withdraw the ETH from the non restaking validators and atomically updates the accounting
     * In this transaction, we atomically update the `nonRestakedValidatorsETH` and transfer ETH to the Vault
     * This way, we will not do a double counting of the ETH owned by the vault
     * @dev It is possible for this function to revert if the `nonRestakedValidatorsETH` is not updated properly
     */
    function withdrawNonRestakedETH() external virtual restricted {
        uint256 balanceBefore = address(this).balance + WETH.balanceOf(address(this));
        Storage storage $ = _getVaultStorage();
        NonRestakingWithdrawalCredentials(payable($.noRestakingWithdrawalCredentials)).withdrawETH();
        uint256 balanceAfter = address(this).balance + WETH.balanceOf(address(this));
        uint256 difference = balanceAfter - balanceBefore;
        // Math.saturatingSub to prevent panic error underflow/overflow
        (, uint256 result) = Math.trySub($.nonRestakedValidatorsETH, uint128(difference));
        $.nonRestakedValidatorsETH = uint128(result);
        emit NonRestakedValidatorsETHUpdated($.nonRestakedValidatorsETH);
    }

    /**
     * @notice Custom call to the target contract
     * @dev Payable is just in case that the owner wants to send ETH instead of using ETH/WETH from the Vault
     * @param target The address of the target contract
     * @param data The data to call the target contract with
     */
    function customExternalCall(address target, bytes calldata data, uint256 value)
        external
        payable
        virtual
        restricted
    {
        // Another check is done to see if the caller is allowed to call the function identified by a selector.
        (bool isAllowed,) = IAccessManager(authority()).canCall(_msgSender(), target, bytes4(data));
        if (!isAllowed) {
            revert AccessManagedUnauthorized(_msgSender());
        }
        _unwrapWETH(value);
        (bool success,) = target.call{ value: value }(data);
        emit CustomExternalCall(target, data, value);
        require(success, CustomCallFailed());
    }

    /**
     * @notice Set the number of restaked and non restaked validators
     * For the V1, this is centralized and only the admin can update the values
     *
     * @dev See natspec for totalAssets()
     *
     * @param restakedValidatorsETH The number of restaked validators
     * @param nonRestakedValidatorsETH The number of non restaked validators
     */
    function setValidatorsETH(uint128 restakedValidatorsETH, uint128 nonRestakedValidatorsETH)
        external
        virtual
        restricted
    {
        Storage storage $ = _getVaultStorage();
        $.restakedValidatorsETH = restakedValidatorsETH;
        $.nonRestakedValidatorsETH = nonRestakedValidatorsETH;
        emit RestakedValidatorsETHUpdated(restakedValidatorsETH);
        emit NonRestakedValidatorsETHUpdated(nonRestakedValidatorsETH);
    }

    /**
     * @dev See {IERC4626-totalAssets}.
     * institutionalETH, the shares of the vault, will be backed primarily by the WETH asset.
     * However, at any point in time, the full backings may be a combination of stETH, WETH, and ETH.
     * `totalAssets()` is calculated by summing the following:
     * - WETH held in the vault contract
     * - ETH  held in the vault contract
     * - ETH locked in the Beacon Deposit Contract
     * - ETH held in the NonRestakingWithdrawalCredentials will be accounted in the `nonRestakedValidatorsETH`. It belongs to the Vault, but it is not yet in the vault.
     *
     * To properly transfer the ETH to the vault, call `withdrawNonRestakedETH`. It will atomically update the `nonRestakedValidatorsETH` by subtracting the difference between the balance before
     * and after the withdrawal and transfer the ETH to the vault.
     * This way, we will not do a double counting of the ETH owned by the vault.
     *
     * IMPORTANT:
     * The exchange rate of share token : asset token will not be 100% accurate.
     * Right now, that is not a problem because share token is not transferable.
     * In a future version, where the share token is transferable, we need to make sure that the exchange rate is accurate, by using some kind of Oracle.
     * That oracle will need to report the ETH amount of the validators that are locked in the Beacon Deposit Contract & ETH amount of the validators that are not slashed by the EigenLayer.
     *
     * NOTE on the native ETH deposits:
     * When dealing with NATIVE ETH deposits, we need to deduct callvalue from the balance.
     * The contract calculates the amount of shares(pufETH) to mint based on the total assets.
     * When a user sends ETH, the msg.value is immediately added to address(this).balance.
     * Since `address(this.balance)` is used in calculating `totalAssets()`, we must deduct the `callvalue()` from the balance to prevent the user from minting excess shares.
     * `msg.value` cannot be accessed from a view function, so we use assembly to get the callvalue.
     */
    function totalAssets() public view virtual override(ERC4626Upgradeable, IInstitutionalVault) returns (uint256) {
        Storage storage $ = _getVaultStorage();
        uint256 callValue;
        // solhint-disable-next-line no-inline-assembly
        assembly {
            callValue := callvalue()
        }
        return WETH.balanceOf(address(this)) + (address(this).balance - callValue) + $.restakedValidatorsETH
            + $.nonRestakedValidatorsETH;
    }

    /**
     * @notice Get the withdrawal credentials for the non restaking validators
     * @return The withdrawal credentials
     */
    function getWithdrawalCredentials() public view virtual returns (bytes memory) {
        Storage storage $ = _getVaultStorage();
        return abi.encodePacked(bytes1(uint8(2)), bytes11(0), $.noRestakingWithdrawalCredentials);
    }

    /**
     * @notice Get the withdrawal credentials for the restaking validators
     * @return The withdrawal credentials
     */
    function getEigenPodWithdrawalCredentials() public view virtual returns (bytes memory) {
        Storage storage $ = _getVaultStorage();
        return abi.encodePacked(bytes1(uint8(2)), bytes11(0), $.eigenPod);
    }

    /**
     * @notice Get the address of the EigenPod
     * @return The address of the EigenPod
     */
    function getEigenPod() public view virtual returns (address) {
        return _getVaultStorage().eigenPod;
    }

    /**
     * @notice Get the number of restaked validators
     * @return The number of restaked validators
     */
    function getRestakedValidatorETH() public view virtual returns (uint256) {
        return _getVaultStorage().restakedValidatorsETH;
    }

    /**
     * @notice Get the number of non restaked validators
     * @return The number of non restaked validators
     */
    function getNonRestakedValidatorETH() public view virtual returns (uint256) {
        return _getVaultStorage().nonRestakedValidatorsETH;
    }

    /**
     * @notice Get the address of the no restaking withdrawal credentials
     * @return The address of the no restaking withdrawal credentials
     */
    function getNoRestakingWithdrawalCredentials() public view virtual returns (address) {
        return _getVaultStorage().noRestakingWithdrawalCredentials;
    }

    /**
     * @notice Wraps the vault's ETH balance to WETH
     * @dev Used to provide WETH liquidity
     */
    function _wrapETH(uint256 assets) internal virtual {
        uint256 balance = address(this).balance;
        uint256 wethBalance = WETH.balanceOf(address(this));

        if (wethBalance >= assets) {
            return;
        }

        uint256 amountToWrap;
        unchecked {
            amountToWrap = assets - wethBalance;
        }

        if (balance >= amountToWrap) {
            WETH.deposit{ value: amountToWrap }();
        } else {
            revert NotEnoughETH();
        }
    }

    /**
     * @notice Unwrap only what is needed
     * @param assets The amount of WETH to unwrap
     */
    function _unwrapWETH(uint256 assets) internal virtual {
        uint256 balance = address(this).balance;
        uint256 wethBalance = WETH.balanceOf(address(this));

        if (balance >= assets) {
            return;
        }

        uint256 amountToUnwrap;
        unchecked {
            amountToUnwrap = assets - balance;
        }

        if (wethBalance >= amountToUnwrap) {
            WETH.withdraw(amountToUnwrap);
        } else {
            revert NotEnoughETH();
        }
    }

    /**
     * @notice Convert Gwei to Wei
     * @param amount The amount of Gwei
     * @return The amount of Wei
     */
    function _convertGweiToWei(uint256 amount) internal pure returns (uint256) {
        return amount * 1e9;
    }

    /**
     * @notice Authorize the upgrade of the vault
     * @param newImplementation The address of the new implementation
     */
    function _authorizeUpgrade(address newImplementation) internal virtual override restricted { }
}
