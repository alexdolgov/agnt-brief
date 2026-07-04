// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.0 <0.9.0;

import { CustomCallFailed, InvalidInput, NotEnoughETH, ZeroAddress } from "./Errors.sol";
import { VaultStorage } from "./InstitutionalVaultStorage.sol";
import { IDelegationManager, IDelegationManagerTypes } from "./interface/Eigenlayer-Slashing/IDelegationManager.sol";
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
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

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

    IWETH public immutable WETH;
    IBeaconDepositContract public immutable BEACON_DEPOSIT_CONTRACT;
    IEigenPodManager public immutable EIGEN_POD_MANAGER;
    IDelegationManager public immutable EIGEN_DELEGATION_MANAGER;

    /**
     * @notice Constructor for the vault
     * @param weth The address of the WETH token
     * @param eigenPodManager The address of the EigenPodManager
     * @param beaconDepositContract The address of the Beacon Deposit Contract
     * @param eigenDelegationManager The address of the EigenDelegationManager
     */
    constructor(address weth, address eigenPodManager, address beaconDepositContract, address eigenDelegationManager) {
        require(weth != address(0), ZeroAddress());
        require(eigenPodManager != address(0), ZeroAddress());
        require(beaconDepositContract != address(0), ZeroAddress());
        require(eigenDelegationManager != address(0), ZeroAddress());
        WETH = IWETH(weth);
        EIGEN_POD_MANAGER = IEigenPodManager(eigenPodManager);
        BEACON_DEPOSIT_CONTRACT = IBeaconDepositContract(beaconDepositContract);
        EIGEN_DELEGATION_MANAGER = IDelegationManager(eigenDelegationManager);
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
        Storage storage $ = _getVaultStorage();
        $.eigenPod = address(EIGEN_POD_MANAGER.createPod());
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
     * @param depositDataRoots The deposit data roots of the validators to restake
     */
    function startRestakingValidators(
        bytes[] calldata pubKeys,
        bytes[] calldata signatures,
        bytes32[] calldata depositDataRoots
    ) external virtual restricted {
        require(pubKeys.length == signatures.length && pubKeys.length == depositDataRoots.length, InvalidInput());

        _unwrapWETH(32 ether * pubKeys.length);

        for (uint256 i = 0; i < pubKeys.length; i++) {
            EIGEN_POD_MANAGER.stake{ value: 32 ether }(pubKeys[i], signatures[i], depositDataRoots[i]);
            emit StartedRestakingValidator(pubKeys[i], depositDataRoots[i]);
        }

        _getVaultStorage().restakedValidatorsETH += uint128(pubKeys.length * 32 ether);

        emit RestakedValidatorsETHUpdated(_getVaultStorage().restakedValidatorsETH);
    }

    /**
     * @notice Start non restaking validators by directly depositing into the Beacon Deposit Contract
     * @param pubKeys The public keys of the validators
     * @param signatures The signatures of the validators
     * @param depositDataRoots The deposit data roots of the validators
     */
    function startNonRestakingValidators(
        bytes[] calldata pubKeys,
        bytes[] calldata signatures,
        bytes32[] calldata depositDataRoots
    ) external virtual restricted {
        require(pubKeys.length == signatures.length && pubKeys.length == depositDataRoots.length, InvalidInput());

        bytes memory withdrawalCredentials = getWithdrawalCredentials();

        _unwrapWETH(32 ether * pubKeys.length);

        for (uint256 i = 0; i < pubKeys.length; i++) {
            BEACON_DEPOSIT_CONTRACT.deposit{ value: 32 ether }(
                pubKeys[i], withdrawalCredentials, signatures[i], depositDataRoots[i]
            );
            emit StartedNonRestakingValidator(pubKeys[i], depositDataRoots[i]);
        }

        _getVaultStorage().nonRestakedValidatorsETH += uint128(pubKeys.length * 32 ether);

        emit NonRestakedValidatorsETHUpdated(_getVaultStorage().nonRestakedValidatorsETH);
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
            withdrawer: address(this)
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

        EIGEN_DELEGATION_MANAGER.completeQueuedWithdrawals({
            withdrawals: withdrawals,
            tokens: tokens,
            receiveAsTokens: receiveAsTokens
        });
    }

    // End of EigenLayer interactions =======================================

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
     * @notice Get the withdrawal credentials for the non restaking validators (this contract address)
     * @return The withdrawal credentials
     */
    function getWithdrawalCredentials() public view virtual returns (bytes memory) {
        return abi.encodePacked(bytes1(uint8(1)), bytes11(0), address(this));
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
     * @notice Authorize the upgrade of the vault
     * @param newImplementation The address of the new implementation
     */
    function _authorizeUpgrade(address newImplementation) internal virtual override restricted { }
}
