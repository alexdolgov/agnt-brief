// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.27;

import {ITokenDeposit} from "./interfaces/ITokenDeposit.sol";
import {ITokenPairs} from "./interfaces/ITokenPairs.sol";
import {IProofVerifier} from "./interfaces/IProofVerifier.sol";

/// DirectExitAdministrator allows to withdraw direct ERC-20 balance from L2 if the bridge becomes dead.
/// Withdrawn ERC-20 tokens needs to be owned by the calling user.
/// @custom:security-contact security@fantom.foundation
contract DirectExitAdministrator {
    ITokenDeposit public immutable deposit;
    mapping (bytes32 senderToken => bool isWithdrawn) public tokenWithdrawn; // already withdrawn tokens

    constructor(address _deposit) {
        require(_deposit != address(0), "TokenDeposit address not set");
        deposit = ITokenDeposit(_deposit);
    }

    /// Withdraw ERC-20 balance from L2. Can be used only if the bridge died.
    function withdraw(address token, uint256 amount, bytes calldata proof) public {
        require(deposit.fetchDeadStatus(), "Bridge is not dead");
        bytes32 withdrawHash = keccak256(abi.encode(msg.sender, token));
        require(tokenWithdrawn[withdrawHash] == false, "Already withdrawn");

        address mintedToken = ITokenPairs(deposit.tokenPairs()).originalToMinted(token);
        require(mintedToken != address(0), "No minted token for given token");

        IProofVerifier(deposit.proofVerifier()).verifyProof(
            mintedToken,
            getBalanceSlotIndex(msg.sender),
            bytes32(amount),
            deposit.deadState(),
            proof
        );
        // user has given balance of the minted token

        tokenWithdrawn[withdrawHash] = true; // write before other contract call (reentrancy!)
        deposit.withdrawWhileDead(msg.sender, token, amount);
    }

    // storage slot of balances mapping used by OpenZeppelin ERC20Upgradeable
    // keccak256(abi.encode(uint256(keccak256("openzeppelin.storage.ERC20")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant ERC20StorageLocation = 0x52c63247e1f47db19d5ce0460030c497f067ca4cebf71ba98eeadabe20bace00;

    /// Calculate slotId for minted ERC-20 balance.
    function getBalanceSlotIndex(address account) pure public returns (bytes32) {
        return keccak256(abi.encode(account, ERC20StorageLocation)); // balance expected at slot used by ERC20Upgradeable
    }

}
