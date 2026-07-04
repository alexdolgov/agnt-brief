// SPDX-License-Identifier: UNLICENSED
// Copyright (c) Eywa.Fi, 2021-2023 - all rights reserved
pragma solidity ^0.8.17;

import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/utils/cryptography/EIP712.sol";
import "@openzeppelin/contracts/access/IAccessControlEnumerable.sol";
import "./TransferableVestingWallet.sol";
import "./interfaces/IVestingManager.sol";
import "./interfaces/IWalletFactory.sol";


contract TransferableByApproveVestingWallet is TransferableVestingWallet, EIP712 {

    using Counters for Counters.Counter;

    event Transfered(address from, address to);

    Counters.Counter private _nonce;

    constructor() EIP712("EYWA", "1") {}

    /**
     * @dev Returns nonce.
     */
    function nonce() public view returns (uint256) {
        return _nonce.current();
    }

    function release(address token) public override {
        super.release(token);
        if(IVestingManager(vestingManager).allowMultipleReleases() == false) {
            uint256 balance =  IERC20(token).balanceOf(address(this));
            SafeERC20.safeTransfer(IERC20(token), vestingManager, balance);
        }
    }

    /**
     * @dev Transfers wallet to another beneficiary if approve given.
     */
    function transfer(
        address beneficiary_,
        uint8 v,
        bytes32 r,
        bytes32 s,
        uint256 deadline
    ) external onlyBeneficiary {
        _verify(
            beneficiary(),
            beneficiary_,
            v,
            r,
            s,
            deadline
        );
        emit Transfered(beneficiary(), beneficiary_);
        _setBeneficiary(beneficiary_);
    }

    /**
     * @dev Transfers wallet to another beneficiary.
     */
    function transfer(
        address beneficiary_
    ) public onlyDAO {
        emit Transfered(beneficiary(), beneficiary_);
        _setBeneficiary(beneficiary_);
    }

    /**
     * @dev Verifies signatures (hash must be signed by vesting manager contract owner).
     */
    function _verify(
        address from,
        address to,
        uint8 v,
        bytes32 r,
        bytes32 s,
        uint256 deadline
    ) internal {
        uint256 nonce_ = _getAndUpdateNonce();
        bytes32 ownerHash = keccak256(
            abi.encodePacked(
                keccak256("OwnerPermit(address from,address to,uint256 nonce,uint256 deadline)"),
                from,
                to,
                nonce_,
                deadline
            )
        );

        bytes32 hash = ECDSA.toEthSignedMessageHash(_hashTypedDataV4(ownerHash));
        address signer = ECDSA.recover(hash, v, r, s);

        IAccessControlEnumerable impl = IAccessControlEnumerable(vestingManager);

        address verifier = impl.getRoleMember(keccak256("VERIFIER_ROLE"), 0);
        require(signer == verifier, "VestingWallet: wrong signature");

        require(block.timestamp <= deadline, "VestingWallet: wrong deadline");
    }

    /**
     * @dev Returns current nonce and increment it.
     */
    function _getAndUpdateNonce() internal returns (uint256 nonce_) {
        nonce_ = _nonce.current();
        _nonce.increment();
    }
}