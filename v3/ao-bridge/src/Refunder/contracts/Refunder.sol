// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/Address.sol";

interface IDistribution {
    function ejectStakedFunds(address user) external;
}

contract Refunder is Ownable {
    using Address for address;

    event BatchOperationResult(address user, bool success);

    /**
     * @dev Executes `ejectStakedFunds` on the `IDistribution` interface for multiple users in batch.
     * Emits a `BatchOperationResult` event for each operation, indicating success or failure.
     */
    function refund(address target, address[] calldata users) external onlyOwner {
        require(target.isContract(), "Refunder: target address is not a contract");

        IDistribution distribution = IDistribution(target);
        for (uint256 i = 0; i < users.length; i++) {
            try distribution.ejectStakedFunds(users[i]) {
                emit BatchOperationResult(users[i], true);
            } catch {
                emit BatchOperationResult(users[i], false);
            }
        }
    }
}
