// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import {IERC20} from "openzeppelin/token/ERC20/IERC20.sol";
import {SafeERC20} from "openzeppelin/token/ERC20/utils/SafeERC20.sol";
import {EnumerableMap} from "openzeppelin/utils/structs/EnumerableMap.sol";
import {ContextUpgradeable} from "openzeppelin-upgradeable/utils/ContextUpgradeable.sol";
import {AccessControlEnumerableUpgradeable} from "openzeppelin-upgradeable/access/extensions/AccessControlEnumerableUpgradeable.sol";

// inspired by
// openzeppelin-contracts/contracts/finance/VestingWallet.sol
// openzeppelin-contracts/contracts/finance/PaymentSplitter.sol
// openzeppelin-upgradeable/token/ERC20/extensions/ERC4626Upgradeable.sol
abstract contract BareVaultUpgradable is ContextUpgradeable, AccessControlEnumerableUpgradeable {
    // errors
    /**
     * @dev Attempted to deposit more assets than the max amount for `receiver`.
     */
    error ExceededMaxDeposit(address receiver, uint256 assets, uint256 max);

    /**
     * @dev Attempted to withdraw more assets than the max amount for `receiver`.
     */
    error ExceededMaxWithdraw(address owner, uint256 assets, uint256 max);

    error ExceededWithdrawal(address owner, uint256 assets, uint256 max);

    event Deposit(address indexed sender, uint256 assets);

    event Withdraw(address indexed sender, address indexed receiver, uint256 assets);

    using EnumerableMap for EnumerableMap.AddressToUintMap;

    /// @custom:storage-location erc7201:storage.BareVault
    struct BareVaultStorage {
        uint256 _totalDeposit;
        EnumerableMap.AddressToUintMap _deposit;
        address _asset; // ERC20 or NativeToken
    }

    // keccak256(abi.encode(uint256(keccak256("storage.BareVault")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant BareVaultStorageLocation = 0x1777a80db1c6a9865545ecb5d27383880a1e667f2012bc238aba256783d9c400;

    function _getBareVaultStorage() internal pure returns (BareVaultStorage storage $) {
        assembly {
            $.slot := BareVaultStorageLocation
        }
    }

    /**
     * @dev Sets the sender as the initial owner, the beneficiary as the pending owner, the start timestamp and the
     * vesting duration of the vesting wallet.
     */
    function __BareVault_init(address _asset) internal onlyInitializing {
        __AccessControlEnumerable_init();
        __Context_init();
        __BareVault_init_unchained(_asset);
    }

    function __BareVault_init_unchained(address _asset) internal onlyInitializing {
        BareVaultStorage storage $ = _getBareVaultStorage();
        $._asset = _asset;
    }

    /**
     * @dev The contract should be able to receive Native Token.
     */
    receive() external payable virtual {}

    /**
     * @dev Getter for the beneficiary address.
     */
    function asset() public view virtual returns (address) {
        BareVaultStorage storage $ = _getBareVaultStorage();
        return $._asset;
    }

    /**
     * @dev Total amount of token already deposited
     */
    function totalDeposit() public view virtual returns (uint256) {
        BareVaultStorage storage $ = _getBareVaultStorage();
        return $._totalDeposit;
    }

    /**
     * @dev Total amount of token already deposited
     */
    function totalParticipants() public view virtual returns (uint256) {
        BareVaultStorage storage $ = _getBareVaultStorage();
        return $._deposit.length();
    }

    /**
     * @dev Amount of token already deposited
     */
    function deposited(address account) public view virtual returns (uint256) {
        BareVaultStorage storage $ = _getBareVaultStorage();
        (,uint256 amount) = $._deposit.tryGet(account);
        return amount;
    }

    /** @dev See {IERC4626-deposit}. */
    function deposit(uint256 assets) public payable virtual returns (uint256) {
        uint256 maxAssets = maxDeposit(_msgSender());
        if (assets > maxAssets) {
            revert ExceededMaxDeposit(_msgSender(), assets, maxAssets);
        }

        _deposit(_msgSender(), assets);

        return assets;
    }

    /** @dev See {IERC4626-withdraw}. */
    function withdraw(uint256 assets, address receiver) public virtual returns (uint256) {
        BareVaultStorage storage $ = _getBareVaultStorage();
        uint256 maxAssets = maxWithdraw(_msgSender());
        if (assets > maxAssets) {
            revert ExceededMaxWithdraw(_msgSender(), assets, maxAssets);
        }
        (,uint256 _asset) = $._deposit.tryGet(_msgSender());
        if (assets > _asset) {
            revert ExceededWithdrawal(_msgSender(), assets, _asset);
        }

        _withdraw(_msgSender(), receiver, assets);

        return assets;
    }

    /** @dev See {IERC4626-maxDeposit}. */
    function maxDeposit(address) public view virtual returns (uint256) {
        return type(uint256).max;
    }

    /** @dev See {IERC4626-maxWithdraw}. */
    function maxWithdraw(address owner) public view virtual returns (uint256) {
        BareVaultStorage storage $ = _getBareVaultStorage();
        (,uint256 amount) = $._deposit.tryGet(owner);
        return amount;
    }

    /**
     * @dev Deposit/mint common workflow.
     */
    function _deposit(address caller, uint256 assets) internal virtual {
        BareVaultStorage storage $ = _getBareVaultStorage();
        // If _asset is ERC777, `transferFrom` can trigger a reentrancy BEFORE the transfer happens through the
        // `tokensToSend` hook. On the other hand, the `tokenReceived` hook, that is triggered after the transfer,
        // calls the vault, which is assumed not malicious.
        //
        // Conclusion: we need to do the transfer before we mint so that any reentrancy would happen before the
        // assets are transferred and before the shares are minted, which is a valid state.
        // slither-disable-next-line reentrancy-no-eth
        SafeERC20.safeTransferFrom(IERC20($._asset), caller, address(this), assets);
        (,uint256 _asset) = $._deposit.tryGet(caller);
        $._deposit.set(caller, _asset + assets);
        $._totalDeposit += assets;

        emit Deposit(caller, assets);
    }

    /**
     * @dev Withdraw/redeem common workflow.
     */
    function _withdraw(
        address caller,
        address receiver,
        uint256 assets
    ) internal virtual {
        BareVaultStorage storage $ = _getBareVaultStorage();
        // safe to use get on _withdraw
        $._deposit.set(caller, $._deposit.get(caller) - assets);
        $._totalDeposit -= assets;

        if ( $._deposit.get(caller) == 0) {
            $._deposit.remove(caller);
        }

        SafeERC20.safeTransfer(IERC20($._asset), receiver, assets);
        emit Withdraw(caller, receiver, assets);
    }
}

