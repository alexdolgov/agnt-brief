// SPDX-License-Identifier: UNLICENSED
// Copyright (c) Eywa.Fi, 2021-2023 - all rights reserved
pragma solidity ^0.8.17;

import "@openzeppelin/contracts/access/AccessControl.sol";
import "./interfaces/IWalletFactory.sol";
import "./TransferableByApproveVestingWallet.sol";


contract WalletFactory is AccessControl {

    bytes32 public constant VESTING_MANAGER_ROLE = keccak256("VESTING_MANAGER_ROLE");

    bytes32 public constant INIT_CODE_WALLET_HASH_T2 = keccak256(abi.encodePacked(type(TransferableByApproveVestingWallet).creationCode));

    address public constant EMPTY_WALLET = 0xFFfFfFffFFfffFFfFFfFFFFFffFFFffffFfFFFfF;

    mapping(address => bool) public isValidWallet;

    modifier onlyAdminOrVestingManager {
        require(hasRole(VESTING_MANAGER_ROLE, _msgSender()) || hasRole(DEFAULT_ADMIN_ROLE, _msgSender()), "WalletFactory: only admin or vesting manager");
        _;
    }

    constructor() {
        _grantRole(DEFAULT_ADMIN_ROLE, _msgSender());
    }

    /**
     * @dev Return vesting wallet for given beneficiary and vesting manager.
     *
     * @param beneficiary The beneficiary;
     * @param vestingManager The vesting manager;
     * @param strict If true will check deployed contract size to ensure that contract was already deployed by factory.
     */
    function walletFor(
        address beneficiary,
        address vestingManager,
        uint256 idx,
        bool strict
    ) external view returns (address) {

        bytes32 initHash = INIT_CODE_WALLET_HASH_T2;
        address wallet = address(uint160(uint256(keccak256(abi.encodePacked(
            hex'ff',
            address(this),
            keccak256(abi.encodePacked(beneficiary, vestingManager, idx)),
            initHash
        )))));
        if (strict) {
            uint256 size;
            assembly {
                size := extcodesize(wallet)
            }
            return size > 0 ? wallet : address(0);
        }
        return wallet;

    }

    /**
     * @dev Creates managed vesting wallet for given beneficiary and vesting manager. Can be used only by vesting manager.
     *
     * @param beneficiary The beneficiary;
     * @param vestingManager The vesting manager;
     * @param idx The wallet index.
     */
    function createWallet(
        address beneficiary,
        address vestingManager,
        uint256 idx
    ) external onlyAdminOrVestingManager returns (address wallet) {
        bytes memory bytecode = type(TransferableByApproveVestingWallet).creationCode;
        uint256 size;
        bytes32 salt = keccak256(abi.encodePacked(beneficiary, vestingManager, idx));
        assembly {
            wallet := create2(0, add(bytecode, 0x20), mload(bytecode), salt)
            size := extcodesize(wallet)
            if iszero(extcodesize(wallet)) {
                revert(0, 0)
            }
        }
        isValidWallet[wallet] = true;
        (bool success, bytes memory data) = wallet.call(abi.encodeWithSelector(ManagedVestingWallet.initialize.selector, beneficiary, vestingManager));
        require(success && abi.decode(data, (bool)), "WalletFactory: initialize failed");
    }
}