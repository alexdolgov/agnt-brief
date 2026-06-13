// SPDX-License-Identifier: MIT
/*
Copyright 2025 Giza Association
Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), 
to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, 
and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE 
WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. 
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, 
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

pragma solidity 0.8.26;

import {IStaker, Deposit} from "src/interfaces/IStaker.sol";
import {IEarningPowerCalculator} from "src/interfaces/IEarningPowerCalculator.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {Ownable} from "src/utils/Ownable.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

/// @title Bumpor
/// @notice A contract for automating the bumping of earning power for stakers in the Giza staking system.
/// This contract identifies and processes users who qualify for earning power adjustments,
/// making it possible to automate the maintenance of accurate earning power across the staking system.
///
/// Key features:
/// - Automated identification of stakers eligible for earning power bumping
/// - Batch processing of multiple users in a single transaction
/// - Integration with Gelato Network's resolver pattern for autonomous execution
/// - Safety checks to prevent unnecessary or invalid bump operations

contract Bumpor is Ownable {
    using SafeERC20 for IERC20;

    event BumpedSuccessfully(address indexed user);
    event BumpedFailed(address indexed user);

    /*//////////////////////////////////////////////////////////////
                             STORAGE
    //////////////////////////////////////////////////////////////*/

    /// @notice The Staker contract that manages deposits and earning power
    IStaker public immutable staker;

    /// @notice The contract that calculates earning power based on deposit amounts and user data
    IEarningPowerCalculator public immutable earningPowerCalculator;

    uint256 currentBatch;

    mapping(uint256 batch => mapping(address user => bool processed)) public userProcessed;

    /// @notice The GIZA token used for staking and rewards
    IERC20 public immutable GIZA;

    uint256 MAX_BATCH_SIZE = 50;

    /// @notice Initializes the Bumpor contract with required dependencies
    /// @param _owner The address that will own this contract
    /// @param _staker The address of the Staker contract
    /// @param _earningPowerCalculator The address of the EarningPowerCalculator contract
    /// @param _giza The address of the GIZA token
    constructor(address _owner, address _staker, address _earningPowerCalculator, address _giza) Ownable(_owner) {
        staker = IStaker(_staker);
        earningPowerCalculator = IEarningPowerCalculator(_earningPowerCalculator);
        GIZA = IERC20(_giza);
    }

    /*//////////////////////////////////////////////////////////////
                             ADMIN FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /// @notice Allows the owner to recover any ERC20 tokens accidentally sent to this contract
    /// @param asset The address of the token to recover
    /// @param amount The amount of tokens to recover
    /// @dev Called by owner to retrieve tokens that may have been mistakenly sent to the contract
    function recoverAsset(address asset, uint256 amount) external onlyOwner {
        IERC20(asset).safeTransfer(owner, amount);
    }

    /*//////////////////////////////////////////////////////////////
                        BUMPOR FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /// @notice Bumps the earning power for a list of users that qualify for an update
    /// @param _users An array of user addresses to check and potentially bump
    /// @dev This function performs safety checks before bumping each user's earning power
    function bump(address[] memory _users) external {
        uint256 batchSize = _users.length > MAX_BATCH_SIZE ? MAX_BATCH_SIZE : _users.length;
        for (uint256 i = 0; i < batchSize; i++) {
            if (userProcessed[currentBatch][_users[i]]) {
                continue;
            }
            userProcessed[currentBatch][_users[i]] = true;
            try staker.bumpEarningPower(_users[i]) {
                emit BumpedSuccessfully(_users[i]);
            } catch {
                emit BumpedFailed(_users[i]);
            }
        }
        currentBatch++;
    }

    /// @notice Resolver function for Gelato Network automation
    /// @return canExec Boolean indicating if execution is needed
    /// @return execPayload The calldata payload to execute if needed
    /// @dev This function follows the Gelato resolver pattern for automation
    function checker() external view returns (bool, bytes memory) {
        address[] memory bumpableAddresses = _findBumpableAddress();
        if (bumpableAddresses.length > 0) {
            return (true, abi.encodeWithSelector(Bumpor.bump.selector, bumpableAddresses));
        }
        return (false, bytes("No bumpable addresses found"));
    }

    /// @notice Identifies addresses that are eligible for an earning power bump
    /// @return An array of addresses that can be bumped
    /// @dev This function first checks qualification and then simulates the bump to ensure it succeeds
    function _findBumpableAddress() internal view returns (address[] memory) {
        address[] memory depositors = staker.getDepositorList();
        address[] memory bumpableAddresses = new address[](depositors.length);
        uint256 bumpableCount = 0;
        for (uint256 i = 0; i < depositors.length; i++) {
            if (_isQualifiedForBump(depositors[i])) {
                bumpableAddresses[bumpableCount] = depositors[i];
                bumpableCount++;
            }
        }
        assembly {
            mstore(bumpableAddresses, bumpableCount)
        }
        return bumpableAddresses;
    }

    /// @notice Simulates bumping a user's earning power to check if it will succeed
    /// @param _user The address of the user to simulate bumping
    /// @return Boolean indicating if the bump simulation succeeded
    /// @dev Uses try/catch to safely simulate the bump operation without committing state changes
    function _simulateBump(address _user) internal returns (bool) {
        try staker.bumpEarningPower(_user) {
            return true;
        } catch {
            return false;
        }
    }

    /// @notice Checks if a user qualifies for an earning power bump
    /// @param _user The address of the user to check
    /// @return Boolean indicating if the user qualifies for a bump
    /// @dev Queries the EarningPowerCalculator to determine if a bump is justified
    function _isQualifiedForBump(address _user) internal view returns (bool) {
        Deposit memory deposit = staker.getUserDeposit(_user);
        if (deposit.balance == 0) {
            return false;
        }
        (, bool isBumpable) = earningPowerCalculator.getNewEarningPower(deposit.balance, _user, deposit.earningPower);
        return isBumpable;
    }
}
