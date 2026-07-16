// SPDX-License-Identifier: MIT

pragma solidity 0.8.26;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import {RewardDistributor} from "src/dao/RewardDistributor.sol";

contract LpRewardDistributor is RewardDistributor {
    using SafeERC20 for IERC20;

    /// @notice The address of the iRed token.
    struct LpRewardDistributorStorage {
        address iRed;
    }

    /// @notice Storage location for the LpRewardDistributor.
    // keccak256(abi.encode(uint(keccak256("openzeppelin.storage.LpRewardDistributor")) - 1)) & ~bytes32(uint(0xff))
    bytes32 private constant LpRewardDistributorStorageLocation =
        0xb2af628505654205cb4c6b335179235f7d1de55f21a3e8d221be341fe57bde00;

    function _getLpRewardDistributorStorage()
        internal
        pure
        returns (LpRewardDistributorStorage storage store)
    {
        assembly {
            store.slot := LpRewardDistributorStorageLocation
        }
    }

    function initialize(
        RewardDistributorInitParams calldata params,
        address _iRed
    ) external initializer {
        __RewardDistributor_init(params);
        _getLpRewardDistributorStorage().iRed = _iRed;
    }

    function harvestRewards(SwapParams calldata params) external override {
        RewardDistributorStorage storage $ = _getRewardDistributorStorage();

        if (msg.sender != $.keeper) revert OnlyKeeper(msg.sender);
        if (block.timestamp - $.lastKeeperTimestamp < 5 minutes)
            revert KeeperCooldownNotMet(block.timestamp);

        $.lastKeeperTimestamp = block.timestamp;

        $.multiAdapter.claimRewards();

        _swapToPollen(params);
        _sendPollenToStakingAndVe($.ratio);
        if (_getLpRewardDistributorStorage().iRed != address(0))
            _sendiRedToTreasury();
    }

    /**
     * @notice Sets the iRED address.
     * @param _iRed The new iRED address.
     * @dev This function can only be called by the owner of the MetaBeraborrowCore contract.
     * @dev iRED will likely not be available on deployment, hence the ability to set it later.
     */
    function setiRed(address _iRed) external onlyOwner {
        if (_iRed == address(0)) revert ZeroAddress();
        _getLpRewardDistributorStorage().iRed = _iRed;
    }

    /**
     * @notice Returns the iRED address.
     * @return The iRED address.
     */
    function getIRed() external view returns (address) {
        return _getLpRewardDistributorStorage().iRed;
    }

    /**
     * @notice Sends iRED to the treasury.
     * @dev This function is called internally by the handleReward function.
     */
    function _sendiRedToTreasury() internal {
        RewardDistributorStorage storage $ = _getRewardDistributorStorage();
        LpRewardDistributorStorage
            storage lp = _getLpRewardDistributorStorage();
        address iRed = lp.iRed;

        uint256 iRedBalance = IERC20(iRed).balanceOf(address(this));
        if (iRedBalance > 0) {
            IERC20(iRed).safeTransfer($.treasury, iRedBalance);
        }
    }
}
