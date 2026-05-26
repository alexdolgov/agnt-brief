// SPDX-License-Identifier: MIT
pragma solidity 0.8.11;
import "./interfaces/IPenLens.sol";
import "./interfaces/IMultiRewards.sol";
import "./interfaces/IPenPool.sol";
import "./interfaces/IPenV1Redeem.sol";

/**
 * @title UserProxyStorageLayout
 * @author Penrose
 * @notice The primary storage slot layout for UserProxy implementations
 * @dev All implementations must inherit from this contract
 */
contract UserProxyStorageLayout {
    // Versioning
    uint256 public constant verison = 1;

    // Internal interface helpers
    IPenLens internal penLens;
    IUserProxy internal userProxy;

    // User positions
    mapping(address => bool) public hasStake;
    mapping(uint256 => address) public stakingAddressByIndex;
    mapping(address => uint256) public indexByStakingAddress;
    uint256 public stakingPoolsLength;

    // Public addresses
    address public ownerAddress;
    address public penLensAddress;
    address public penDystAddress;
    address public penDystRewardsPoolAddress;
    address public userProxyInterfaceAddress;
    address public vlPenAddress;

    // Implementations
    address public userProxyLpInteractionsAddress;
    address public userProxyNftInteractionsAddress;
    address public userProxyVotingInteractionsAddress;
}
