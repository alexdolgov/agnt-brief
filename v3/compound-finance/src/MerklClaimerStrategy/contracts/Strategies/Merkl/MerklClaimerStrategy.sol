// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.27;

import "../../Errors/Errors.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import { IDistributor } from "./IDistributor.sol";
import { IDelegateStrategy } from "../interfaces/IDelegateStrategy.sol";


/**
 * @author  Renzo Protocol
 * @title   MerklClaimerStrategy
 * @dev     Allows Merkl rewards claims - offline APIs are required to view claim data
 * @notice  This contract does not track any of the actual reward tokens in TVL, but allows a vault to claim rewards from Merkl
 */
contract MerklClaimerStrategy is IDelegateStrategy {
    using SafeERC20 for IERC20;

    // Address to claim rewards from... addresses are here: https://app.merkl.xyz/status
    IDistributor public immutable merklDistributor;

    constructor(
        IDistributor _merklDistributor
    ) {
        if (address(_merklDistributor) == address(0)) revert InvalidZeroInput();

        merklDistributor = _merklDistributor;
    }

    /**
     * @notice  Claims rewards from Merkl
     * @dev     Get the details to fill out here: https://docs.merkl.xyz/integrate-merkl/app "Building claim transactions"
     * @param   users  The addresses of the users to claim rewards for
     * @param   tokens  The addresses of the tokens to claim rewards for
     * @param   amounts  The amounts of the tokens to claim rewards for
     * @param   proofs  The proofs of the tokens to claim rewards for
     */
    function claim(
        address[] calldata users,
        address[] calldata tokens,
        uint256[] calldata amounts,
        bytes32[][] calldata proofs
    ) external {
        merklDistributor.claim(users, tokens, amounts, proofs);
    }

    /**
     * @notice  This strategy does not track actual value
     * @dev     Other strategies should handle tracking value of tokens claimed by this strategy
     * @return  uint256  Always returns 0
     */
    function underlyingValue(address) external pure returns (uint256) {
        return 0;
    }
}
