// SPDX-License-Identifier: MIT
pragma solidity 0.8.11;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Wrapper.sol";
import "./interfaces/IPool.sol";
import "./interfaces/IMultiRewards.sol";
import "./interfaces/IPenPool.sol";
import "./interfaces/IPenPoolProxy.sol";
import "./interfaces/IDystopiaLens.sol";
import "./interfaces/IUserProxy.sol";
import "./interfaces/IVoter.sol";
import "./ProxyImplementation.sol";

/**
 * @title PenPoolFactory
 * @author Penrose
 * @dev Responsible for creating new oxPools
 * @dev For every dystopia pool there will be a corresponding oxPool
 * @dev A sync mechanism is utilized to automatically generate new oxPools when new dystopia pools are detected
 * @dev The sync mechanism utilizes EIP-1167 for very inexpensive contract deployments
 */
contract PenPoolFactory is ProxyImplementation {
    /*******************************************************
     *                     Configuration
     *******************************************************/

    // Important addresses
    address public multiRewardsTemplateAddress;
    address public penAddress;
    address public penPoolImplementationSourceAddress;
    address public penPoolProxyTemplateAddress;
    address public penDystAddress;
    address internal deprecated0; //clean, deprecated storage slot, kept-in to preserve storage structure
    address public penDystRewardsPoolAddress;
    address public rewardsDistributorAddress;
    address public dystopiaLensAddress;
    address public tokensAllowlist;
    address internal deprecated1; //clean, deprecated storage slot, kept-in to preserve storage structure
    address public voterProxyAddress;
    address public vlPenAddress;
    address internal penPoolFactoryAddress;

    // oxPool syncing variables
    uint256 internal deprecatedSyncedPoolsLength; //dirty slot used for deprecated pools, do not use
    mapping(address => address) internal deprecatedPenPoolByDystPool; //dirty slot used for deprecated pools, do not use
    mapping(address => address) public dystPoolByPenPool;
    address[] internal deprecatedPenPools; //dirty slot used for deprecated pools, do not use

    // Interfaces
    IDystopiaLens dystopiaLens;
    IVoter voter;

    // oxPool syncing variables V2
    mapping(address => address) public penPoolByDystPool;
    address[] public penPools;
    uint256 public syncedPoolsLength;

    /**
     * @notice Initialize proxy storage
     */
    function initializeProxyStorage(
        address _dystopiaLensAddress,
        address _penPoolImplementationSourceAddress,
        address _penPoolProxyTemplateAddress,
        address _multiRewardsTemplateAddress,
        address _voterProxyAddress,
        address _rewardsDistributorAddress,
        address _penAddress,
        address _vlPenAddress,
        address _penDystAddress,
        address _penDystRewardsPoolAddress,
        address _tokensAllowlist
    ) public checkProxyInitialized {
        multiRewardsTemplateAddress = _multiRewardsTemplateAddress;
        rewardsDistributorAddress = _rewardsDistributorAddress;
        penAddress = _penAddress;
        penPoolImplementationSourceAddress = _penPoolImplementationSourceAddress;
        penPoolProxyTemplateAddress = _penPoolProxyTemplateAddress;
        penDystAddress = _penDystAddress;
        penDystRewardsPoolAddress = _penDystRewardsPoolAddress;
        penPoolFactoryAddress = address(this);
        tokensAllowlist = _tokensAllowlist;
        dystopiaLensAddress = _dystopiaLensAddress;
        dystopiaLens = IDystopiaLens(dystopiaLensAddress);
        voter = IVoter(dystopiaLens.voterAddress());
        voterProxyAddress = _voterProxyAddress;
        vlPenAddress = _vlPenAddress;
    }

    /*******************************************************
     *                   oxPool sync mechanism
     *******************************************************/

    /**
     * @notice Fetch unsynced oxPools length
     */
    function unsyncedPoolsLength() public view returns (uint256) {
        uint256 _poolsLength = poolsLength();
        uint256 _unsyncedPoolsLength = _poolsLength - syncedPoolsLength;
        return _unsyncedPoolsLength;
    }

    /**
     * @notice Fetch the number of Dystopia pools
     */
    function poolsLength() public view returns (uint256) {
        return dystopiaLens.poolsLength();
    }

    /**
     * @notice Fetch the number of synced oxPools
     */
    function penPoolsLength() public view returns (uint256) {
        return penPools.length;
    }

    /**
     * @notice Sync all oxPools
     */
    function syncPools() external {
        syncPools(unsyncedPoolsLength());
    }

    /**
     * @notice Sync n number of oxPools
     * @param numberOfPoolsToSync Number of pools to sync
     */
    function syncPools(uint256 numberOfPoolsToSync) public {
        // Don't try to sync more pools than exist
        uint256 unsyncedPoolsLength = unsyncedPoolsLength();
        if (numberOfPoolsToSync > unsyncedPoolsLength) {
            numberOfPoolsToSync = unsyncedPoolsLength;
        }
        uint256 syncTargetLength = syncedPoolsLength + numberOfPoolsToSync;

        // For every unsynced Dystopia pool
        for (
            uint256 unsyncedPoolIdx = syncedPoolsLength;
            unsyncedPoolIdx < syncTargetLength;
            unsyncedPoolIdx++
        ) {
            // Create a new oxPool
            address dystPoolAddress = voter.pools(unsyncedPoolIdx);
            string memory dystPoolSymbol = IPool(dystPoolAddress).symbol();
            string memory dystPoolName = IPool(dystPoolAddress).name();
            string memory penPoolSymbol = string(
                abi.encodePacked("pen-", dystPoolSymbol)
            );
            string memory penPoolName = string(
                abi.encodePacked("Pen - ", dystPoolName)
            );
            (address penPoolAddress, ) = createPoolAndMultiRewards(
                dystPoolAddress,
                penPoolName,
                penPoolSymbol
            );

            // Add new oxPool to oxPools[] and increment synced length
            penPools.push(penPoolAddress);
            penPoolByDystPool[dystPoolAddress] = penPoolAddress;
            dystPoolByPenPool[penPoolAddress] = dystPoolAddress;
            syncedPoolsLength++;
        }
    }

    /**
     * @notice Create oxPool and multirewards contracts
     */
    function createPoolAndMultiRewards(
        address dystPoolAddress,
        string memory penPoolName,
        string memory penPoolSymbol
    ) internal returns (address penPoolAddress, address stakingAddress) {
        penPoolAddress = _cloneWithTemplateAddress(penPoolProxyTemplateAddress);
        IPenPoolProxy(penPoolAddress).initialize(
            penPoolImplementationSourceAddress
        );

        stakingAddress = _cloneWithTemplateAddress(multiRewardsTemplateAddress);
        address bribeAddress = dystopiaLens.bribeAddresByPoolAddress(
            dystPoolAddress
        );

        // Initialize multirewards
        IMultiRewards(stakingAddress).initialize(
            rewardsDistributorAddress,
            penPoolAddress
        );

        // Initialize oxPool
        IPenPool(penPoolAddress).initialize(
            penPoolFactoryAddress,
            dystPoolAddress,
            stakingAddress,
            penPoolName,
            penPoolSymbol,
            bribeAddress,
            tokensAllowlist
        );
    }

    /*******************************************************
     *                    Helper utilities
     *******************************************************/

    /**
     * @notice Clones using EIP-1167 template
     */
    function _cloneWithTemplateAddress(address templateAddress)
        internal
        returns (address poolAddress)
    {
        bytes20 _templateAddress = bytes20(templateAddress);
        assembly {
            let clone := mload(0x40)
            mstore(
                clone,
                0x3d602d80600a3d3981f3363d3d373d3d3d363d73000000000000000000000000
            )
            mstore(add(clone, 0x14), _templateAddress)
            mstore(
                add(clone, 0x28),
                0x5af43d82803e903d91602b57fd5bf30000000000000000000000000000000000
            )
            poolAddress := create(0, clone, 0x37)
        }
    }

    /**
     * @notice Determine whether or not a pool is an oxPool
     */
    function isPenPool(address penPoolAddress) public view returns (bool) {
        return
            penPoolByDystPool[dystPoolByPenPool[penPoolAddress]] ==
            penPoolAddress;
    }

    /**
     * @notice Determine whether or not a pool is or was an oxPool
     */

    function isPenPoolOrLegacyPenPool(address penPoolAddress)
        external
        view
        returns (bool _isPenPoolOrLegacyPool)
    {
        _isPenPoolOrLegacyPool = isPenPool(penPoolAddress);
        if (!_isPenPoolOrLegacyPool) {
            _isPenPoolOrLegacyPool =
                dystPoolByPenPool[penPoolAddress] != address(0);
        }
    }
}
