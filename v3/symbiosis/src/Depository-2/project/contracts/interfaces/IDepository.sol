// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "./IRouter.sol";

type DepositID is bytes32;

library DepositoryTypes {
    struct Deposit {
        IERC20 token; // Source token.
        uint256 amount; // Amount of token.
        uint256 nonce; // Nonce is needed to create identical deposits.
    }

    struct UnlockCondition {
        IDepositUnlocker unlocker; // The contract that validates solution.
        bytes condition; // Condition for validator. Concrete type depends on validator.
    }

    // Describes blockchain state when deposit was locked.
    struct BlockchainState {
        uint blockNumber;
        uint timestamp;
    }
}

interface IDepository {
    event DepositLocked(
        DepositID indexed depositID,
        DepositoryTypes.Deposit deposit,
        DepositoryTypes.UnlockCondition unlocker,
        DepositoryTypes.BlockchainState blockchainState
    );
    event DepositUnlocked(DepositID indexed depositID);
    event SetRouter(IRouter indexed oldRouter, IRouter indexed newRouter);

    error DepositUnavailable(DepositID id);
    error DepositExists(DepositID id);

    function depositStatus(DepositID depositID) external view returns (bool);
    function router() external view returns (IRouter);

    function depositID(
        DepositoryTypes.Deposit calldata depository,
        DepositoryTypes.UnlockCondition calldata condition,
        DepositoryTypes.BlockchainState calldata blockchainState
    ) external pure returns (DepositID);

    // Lock deposit in Depository.
    function lock(
        DepositoryTypes.Deposit calldata deposit,
        DepositoryTypes.UnlockCondition calldata condition
    ) external;

    // Unlock deposit using provided solution that should satisfy condition.
    function unlock(
        DepositoryTypes.Deposit calldata deposit,
        DepositoryTypes.UnlockCondition calldata condition,
        DepositoryTypes.BlockchainState calldata blockchainState,
        bytes calldata solution
    ) external;
}

interface IDepositUnlocker {
    // Validate deposit solution. Should revert if solution is invalid.
    function unlock(
        IRouter router, // Temporarily holds deposit tokens.
        DepositoryTypes.Deposit calldata deposit, // Deposit to validate solution for.
        DepositoryTypes.BlockchainState calldata blockchainState, // Blockchain state when deposit was locked.
        bytes calldata condition,
        bytes calldata solution
    ) external;
}
