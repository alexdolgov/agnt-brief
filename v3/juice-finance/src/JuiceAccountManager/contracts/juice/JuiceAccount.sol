// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.24;

import { EnumerableSet } from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import { IStrategyVault } from "../interfaces/IStrategyVault.sol";
import { UD60x18, ud } from "@prb/math/src/UD60x18.sol";
import "../external/blast/IERC20Rebasing.sol";
import "../periphery/PythPusher.sol";
import "../accounts/InternalAccount.sol";
import "./JuiceModule.sol";
import "../libraries/Errors.sol";

/// @title Juice Account
/// @notice This account type is used to manage investments into approved strategies.
/// The account owner can deposit and withdraw from approved strategies to earn profits.
contract JuiceAccount is InternalAccount, PythPusher {
    using SafeERC20 for IERC20;

    /// @notice Initialize this permissioned account
    /// @param owner_  The borrower that owns this account
    function initialize(address owner_) public virtual override initializer {
        _initialize(owner_);

        address _protocolGovernor = ProtocolModule(msg.sender).getProtocolGovernor();
        _initializePyth(_protocolGovernor);

        // Configure Blast Points
        IBlastPoints blast =
            IBlastPoints(IProtocolGovernor(_protocolGovernor).getImmutableAddress(GovernorLib.BLAST_POINTS));
        address operator_ =
            IProtocolGovernor(_protocolGovernor).getAddress(GovernorLib.BLAST_POINTS_JUICE_ACCOUNTS_OPERATOR);

        if (operator_ == address(0)) {
            revert Errors.InvalidParams();
        } else {
            blast.configurePointsOperator(operator_);
        }
    }

    function getKind() external pure override returns (bytes32) {
        return keccak256(abi.encode("JUICE_INVESTMENT_ACCOUNT"));
    }
}
