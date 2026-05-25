// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.29;

import { ECDSA } from '@openzeppelin/contracts/utils/cryptography/ECDSA.sol';
import { MessageHashUtils } from '@openzeppelin/contracts/utils/cryptography/MessageHashUtils.sol';
import { OwnableUpgradeable } from '@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol';
import { TransferHelper } from '@uniswap/lib/contracts/libraries/TransferHelper.sol';

/**
 * @title Payer
 * @notice A contract that allows users to claim tokens based on a signed message from a trusted oracle.
 */
contract Payer is OwnableUpgradeable {
    struct ClaimRequest {
        address account;
        uint256 amount;
        uint256 nonce;
        bytes data;
    }

    address public token;
    address public oracle;
    mapping(address => uint256) public nonces;

    event Claimed(address account, uint256 amount, uint256 nonce, bytes data);
    event OracleChanged(address newOracle);
    event Withdrawn(address account, uint256 amount);

    error InvalidNonce();
    error InvalidSignature();

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    /**
     * @notice Initializes the contract with the token and oracle addresses.
     * @param token_ Address of the token to be used for claims.
     * @param oracle_ Address of the oracle that signs claim messages.
     */
    function initialize(address token_, address oracle_) external initializer {
        __Ownable_init(msg.sender);
        token = token_;
        oracle = oracle_;
    }

    /**
     * @notice Owner: Changes the address of the oracle.
     * @param newOracle The new oracle address.
     */
    function changeOracle(address newOracle) external onlyOwner {
        oracle = newOracle;
        emit OracleChanged(newOracle);
    }

    /**
     * @notice Owner: Withdraws a specified amount of tokens.
     * @param amount Amount of tokens to withdraw.
     */
    function withdraw(uint256 amount) external onlyOwner {
        TransferHelper.safeTransfer(token, msg.sender, amount);
        emit Withdrawn(msg.sender, amount);
    }

    /**
     * @notice Claims tokens by providing a valid request and oracle signature.
     * @dev The data used to generate the signature should also include the chain ID and the contract address.
     * @param request Struct containing account, amount, nonce, and additional data.
     * @param signature Signature from the oracle validating the claim.
     */
    function claim(ClaimRequest calldata request, bytes calldata signature) external {
        if (request.nonce != nonces[request.account]++) revert InvalidNonce();
        if (
            ECDSA.recover(
                MessageHashUtils.toEthSignedMessageHash(keccak256(abi.encode(block.chainid, address(this), request))),
                signature
            ) != oracle
        ) revert InvalidSignature();

        TransferHelper.safeTransfer(token, request.account, request.amount);

        emit Claimed(request.account, request.amount, request.nonce, request.data);
    }
}
