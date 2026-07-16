// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts-upgradeable/access/Ownable2StepUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";

import "./interfaces/IDepository.sol";
import "./interfaces/IRouter.sol";

import "hardhat/console.sol";

using SafeERC20 for IERC20;

contract Depository is IDepository, UUPSUpgradeable, Ownable2StepUpgradeable {
    mapping(DepositID => bool) public depositStatus;
    IRouter public router;

    function initialize() public virtual initializer {
        __Ownable_init(_msgSender());
        __UUPSUpgradeable_init();
    }

    function setRouter(IRouter _router) public onlyOwner {
        emit SetRouter(router, _router);
        router = _router;
    }

    function _authorizeUpgrade(
        address newImplementation
    ) internal override onlyOwner {}

    function _depositID(
        DepositoryTypes.Deposit calldata deposit,
        DepositoryTypes.UnlockCondition calldata condition,
        DepositoryTypes.BlockchainState memory state
    ) internal pure returns (DepositID) {
        return DepositID.wrap(keccak256(abi.encode(deposit, condition, state)));
    }

    function depositID(
        DepositoryTypes.Deposit calldata deposit,
        DepositoryTypes.UnlockCondition calldata condition,
        DepositoryTypes.BlockchainState memory blockchainState
    ) public pure returns (DepositID) {
        return _depositID(deposit, condition, blockchainState);
    }

    // Lock deposit with condition to spend.
    function lock(
        DepositoryTypes.Deposit calldata deposit,
        DepositoryTypes.UnlockCondition calldata condition
    ) public {
        // Transfer-in tokens.
        DepositoryTypes.BlockchainState memory state = _blockchainState();
        DepositID id = _depositID(deposit, condition, state);
        deposit.token.safeTransferFrom(
            msg.sender,
            address(this),
            deposit.amount
        );
        require(!depositStatus[id], DepositExists(id));

        // Update contract state.
        depositStatus[id] = true;
        emit DepositLocked(id, deposit, condition, state);
    }

    // Unlock deposit using solution that satisfies deposit's condition. Anyone can do this.
    function unlock(
        DepositoryTypes.Deposit calldata deposit,
        DepositoryTypes.UnlockCondition calldata condition,
        DepositoryTypes.BlockchainState calldata blockchainState,
        bytes calldata solution
    ) public {
        _startUnlock(deposit, condition, blockchainState);
        deposit.token.safeTransfer(address(router), deposit.amount);
        condition.unlocker.unlock(
            router,
            deposit,
            blockchainState,
            condition.condition,
            solution
        );
    }

    function _startUnlock(
        DepositoryTypes.Deposit calldata deposit,
        DepositoryTypes.UnlockCondition calldata condition,
        DepositoryTypes.BlockchainState calldata blockchainState
    ) internal {
        DepositID dID = _depositID(deposit, condition, blockchainState);
        // Validate deposit state and hash
        require(depositStatus[dID], DepositUnavailable(dID));
        // Change state early
        delete depositStatus[dID];
        emit DepositUnlocked(dID);
        console.log("Depository.unlock(amount, router, lockTimestamp)", deposit.amount, address(router), blockchainState.timestamp);
    }

    function _blockchainState() internal view returns (DepositoryTypes.BlockchainState memory lockState) {
        lockState.blockNumber = block.number;
        lockState.timestamp = block.timestamp;
    }
}
