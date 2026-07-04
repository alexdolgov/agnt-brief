// SPDX-License-Identifier: UNLICENSED
// Copyright (c) Eywa.Fi, 2021-2023 - all rights reserved
pragma solidity ^0.8.17;

import "@openzeppelin/contracts/utils/cryptography/MerkleProof.sol";
import "./VestingManager.sol";
import "./interfaces/IWalletFactory.sol";
import "./libs/WalletFactoryHelper.sol";


/**
 * @title VestingByWhitelist
 *
 * @dev Vesting manager with claim functionality. Whitelisted benefeciary can claims their wallets.
 */
contract VestingByWhitelist is VestingManager {

    using SafeERC20 for IERC20;

    event MerkleRootSet(bytes32 merkleRoot_);

    event Claimed(address beneficiary, address wallet, uint256 amount);

    bytes32 public merkleRoot;

    mapping(bytes32 => bool) public isClaimed;

    /**
     * @param token_ The distributed token;
     * @param walletFactory_ The wallet factory contract.
     */
    constructor(address token_, address walletFactory_) VestingManager(token_, walletFactory_) {}

    /**
     * @dev Set merkle root.
     *
     * @param merkleRoot_ The merkle root.
     */
    function setMerkleRoot(bytes32 merkleRoot_) external onlyRole(OPERATOR_ROLE) {
        emit MerkleRootSet(merkleRoot_);
        merkleRoot = merkleRoot_;
    }

    /**
     * @dev Claims wallet with predefined sum.
     *
     * @param beneficiary The beneficiary who claim vesting wallet;
     * @param amount The predefined amount of distributed tokens;
     * @param merkleProof The proof for beneficiary, amount and type.
     */
    function claim(address beneficiary, uint256 amount, bytes32[] calldata merkleProof) external  returns (address wallet) {
        require(merkleRoot != bytes32(0), "VestingByWhitelist: whitelist not set");

        bytes32 node = keccak256(abi.encodePacked(beneficiary, amount));

        require(!isClaimed[node], "VestingByWhitelist: already claimed");

        bool isValidProof = MerkleProof.verifyCalldata(merkleProof, merkleRoot, node);
        require(isValidProof, "VestingByWhitelist: invalid proof");

        isClaimed[node] = true;

        wallet = WalletFactoryHelper.getWallet(walletFactory, beneficiary, address(this));
        require(wallet != address(0), "VestingByWhitelist: incorrect wallet");

        IERC20 tokenImpl = IERC20(token);
        tokenImpl.safeTransfer(wallet, amount);

        emit Claimed(beneficiary, wallet, amount);
    }
}