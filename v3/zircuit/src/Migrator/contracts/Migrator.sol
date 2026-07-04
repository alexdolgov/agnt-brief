// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.24;

import {IMigrator} from "./interface/IMigrator.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

/// @title Migrator
/// @notice Migrator Contract called by ZtakingPool migrate() function. Transfers the staked tokens to a predefined zircuit multisig that will bridge all the tokens in a single transaction.
contract Migrator is IMigrator {
    address public immutable zircuitMultisig;
    address public immutable ztakingPool;

    constructor(address _zircuitMultisig, address _ztakingPool) {
        if (_zircuitMultisig == address(0))
            revert ZircuitMultisigCannotBeZeroAddress();
        if (_ztakingPool == address(0)) revert ZtakingPoolCannotBeZeroAddress();

        ztakingPool = _ztakingPool;
        zircuitMultisig = _zircuitMultisig;
    }

    /**
     * @inheritdoc IMigrator
     */
    function migrate(
        address _user,
        address[] calldata _tokens,
        address _destination,
        uint256[] calldata _amounts
    ) external {
        if (msg.sender != ztakingPool)
            revert MigrateCanOnlyBeCalledByZtakingPool();

        uint256 numTokens = _tokens.length;
        for (uint256 i; i < numTokens; ++i) {
            IERC20(_tokens[i]).transferFrom(
                ztakingPool,
                zircuitMultisig,
                _amounts[i]
            );
        }
    }
}